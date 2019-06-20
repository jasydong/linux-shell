#!/bin/bash

#文件同步脚本
rsync -avzc /usr/local/nginx/html/cubephplnk/ --exclude="data/" --exclude="tests/" /usr/local/nginx/html/cubephp/
