#!/usr/bin/env bash
set -u
R=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd); C="$R/config/environment.conf"; [ -f "$C" ]||C="$R/config/environment.example"; . "$C"
root(){ [ "$(id -u)" -eq 0 ]||exit 77; }
plan(){ printf 'image=%s size=%s vg=%s lv=%s mount=%s apply=%s\n' "$IMAGE" "$IMAGE_SIZE" "$VG_NAME" "$LV_NAME" "$MOUNTPOINT" "$APPLY"; }
setup(){ root; [ "$APPLY" = true ]||{ plan; printf 'Dry run only. Set APPLY=true in disposable VM.\n'; return; }; truncate -s "$IMAGE_SIZE" "$IMAGE"; loop=$(losetup --find --show "$IMAGE"); echo "$loop" >"$IMAGE.loop"; pvcreate "$loop"; vgcreate "$VG_NAME" "$loop"; lvcreate -L 256M -n "$LV_NAME" "$VG_NAME"; mkfs.ext4 "/dev/$VG_NAME/$LV_NAME"; mkdir -p "$MOUNTPOINT"; mount "/dev/$VG_NAME/$LV_NAME" "$MOUNTPOINT"; }
verify(){ [ "$APPLY" = true ]||{ plan; return; }; findmnt "$MOUNTPOINT"; lvs "$VG_NAME/$LV_NAME"; printf 'PASS: LVM lab mounted\n'; }
fail(){ printf 'Controlled failure: attempt verification with APPLY=false or an absent mount, then restore the documented state.\n'; }
cleanup(){ root; [ "$APPLY" = true ]||return; umount "$MOUNTPOINT" 2>/dev/null||true; lvremove -fy "$VG_NAME/$LV_NAME"; vgremove -fy "$VG_NAME"; loop=$(cat "$IMAGE.loop"); pvremove -fy "$loop"; losetup -d "$loop"; rm -f "$IMAGE" "$IMAGE.loop"; rmdir "$MOUNTPOINT" 2>/dev/null||true; }
case "${1:-verify}" in install|configure) setup;; run) plan;; verify|test) verify;; fail) fail;; cleanup) cleanup;; *) exit 64;; esac

