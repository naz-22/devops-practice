#!/bin/bash

# this is kind of shell script to automate the VALIDATE FUNCTION.
set -e # it means setting the automatic exit, if we get error. we can use  set-ex   for debugging.while analyzing the logs in detail.
failure(){
echo "Failed at : $1:$2"

}
trap 'failure "${LINENO}" "$BASH_COMMAND"' ERR # ERR is the error signal
echo "hello world success."
echhooooo "hello world failure"
echo "hello world after failure"