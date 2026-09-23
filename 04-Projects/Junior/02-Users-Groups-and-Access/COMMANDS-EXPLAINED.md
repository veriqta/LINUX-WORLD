# Users, Groups, and Access Management: Commands Explained

## Shell execution

~~~bash
bash scripts/verify.sh
~~~

- bash selects the Bash interpreter.
- scripts/verify.sh is the file being executed.
- The script returns an exit status that automation can evaluate.

## Strict variables

~~~bash
set -u
~~~

This stops the script when an unset variable is expanded. It catches misspelled names. The scripts still handle expected command failures explicitly instead of relying blindly on automatic exit behavior.

## Safe permissions

~~~bash
umask 077
~~~

A mask of 077 removes group and other permissions from newly created files. Reports may expose host information, so private output is the safe default.

## Command discovery

~~~bash
command -v COMMAND
~~~

This checks whether the shell can resolve COMMAND without parsing human-oriented package output.

## Exit status

~~~bash
if command; then
    printf 'PASS\n'
else
    printf 'FAIL\n' >&2
fi
~~~

The condition tests the command directly. Standard errors are written to file descriptor 2.

## Quoting

~~~bash
printf '%s\n' "$value"
~~~

Double quotes prevent unwanted word splitting and filename expansion. The percent-s format prints the value as data.

## Project-specific learning

Read the complete scripts line by line. For each command, use:

~~~bash
type COMMAND
COMMAND --help
man COMMAND
~~~

Document the command purpose, options used, required privilege, expected output, exit status, and cleanup effect.

