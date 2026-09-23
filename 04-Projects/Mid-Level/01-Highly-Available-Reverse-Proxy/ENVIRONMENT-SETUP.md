# Highly Available Reverse Proxy: Environment Setup

1. Read the project brief and architecture.
2. Copy config/environment.example to config/environment.conf.
3. Review every script and the complete reference solution.
4. Record the clean baseline.
5. Run scripts/install.sh.
6. Run scripts/configure.sh.
7. Run scripts/verify.sh before failure tests.

~~~bash
cp config/environment.example config/environment.conf
chmod 600 config/environment.conf
bash scripts/install.sh
bash scripts/configure.sh
bash scripts/verify.sh
~~~

Do not copy environment-specific secrets into the configuration.

