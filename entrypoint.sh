#!/bin/bash

if [ `ls -a | wc -l` -eq 2 ]; then
    hexo init
fi

npm --registry=https://registry.npm.taobao.org install

$@
