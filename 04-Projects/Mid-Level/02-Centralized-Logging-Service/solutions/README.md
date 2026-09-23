# Reference Implementation

Build independently first. Then compare architecture, validation, failure handling, recovery, and cleanup with complete-solution.sh.

~~~bash
cp config/environment.example config/environment.conf
bash solutions/complete-solution.sh install
bash solutions/complete-solution.sh run
bash solutions/complete-solution.sh verify
bash solutions/complete-solution.sh fail
bash solutions/complete-solution.sh cleanup
~~~

