#!/bin/bash

git_url="https://github.com/jcroyoaun/kodekloud-lab-sample-nodejs/blob/master/app.js"
raw_url_step1="${git_url/github.com/raw.githubusercontent.com}"


echo "${raw_url_step1}"

exit 0
