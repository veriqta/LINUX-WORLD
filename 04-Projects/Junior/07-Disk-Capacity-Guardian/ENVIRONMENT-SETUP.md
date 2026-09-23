# Disk Capacity Guardian: Environment Setup

## 1. Copy the example configuration

~~~bash
cd 04-Projects/Junior/07-Disk-Capacity-Guardian
cp config/environment.example config/environment.conf
chmod 600 config/environment.conf
~~~

The example remains unchanged for reference. The local configuration is excluded from public evidence if it contains environment-specific details.

## 2. Review the scripts

~~~bash
less scripts/install.sh
less scripts/configure.sh
less scripts/verify.sh
less scripts/test.sh
less scripts/cleanup.sh
~~~

## 3. Run the installer

~~~bash
bash scripts/install.sh
~~~

The installer checks prerequisites and prepares only documented lab resources.

## 4. Configure

~~~bash
bash scripts/configure.sh
~~~

## 5. Verify

~~~bash
bash scripts/verify.sh
printf 'exit_status=%s\n' "$?"
~~~

Exit status zero means the defined verification checks passed. It does not replace manual review.

## Safety

Run only on the intended disposable system. Do not use a production host. Keep a second administrative session for SSH or firewall work.

