#!/bin/bash

for user in `cat /tmp/userlist | tr 'A-Z'  'a-z'` ; do
adduser $user 2> /dev/null

done
