# Files and Text Cheat Sheet

> Quick reference only. Confirm the target system and read the detailed guide before running unfamiliar or state-changing commands.

| Task | Command |
| --- | --- |
| List hidden files | `ls -la` |
| Create nested directories | `mkdir -p a/b/c` |
| Copy directory contents | `cp -a source/. destination/` |
| Create symbolic link | `ln -s TARGET LINK` |
| Resolve link | `readlink -f LINK` |
| Large files | `find PATH -xdev -type f -size +1G -print` |
| Recently modified | `find PATH -type f -mtime -1 -print` |
| First 20 lines | `head -n 20 FILE` |
| Last 100 lines | `tail -n 100 FILE` |
| Follow rotated log | `tail -F FILE` |
| Count lines | `wc -l FILE` |
| Case-insensitive search | `grep -in 'PATTERN' FILE` |
| Extract first field | `cut -d: -f1 FILE` |
| Sort and count | `sort FILE | uniq -c | sort -nr` |
| Replace to new output | `sed 's/OLD/NEW/g' FILE > output.tmp` |
| Select field condition | `awk '$3 > 100 {print $1,$3}' FILE` |
| Compare files | `diff -u OLD NEW` |
| Write and display | `COMMAND | tee OUTPUT` |

## Verification rule

Do not stop at a zero exit status. Confirm the intended system state, dependent service health, logs, monitoring, persistence, and user-visible result.

Return to [Cheat Sheets](README.md) or the main [Command Index](../Command-Index.md).

