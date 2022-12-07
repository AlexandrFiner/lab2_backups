#!/bin/sh

curl -T /home/logs/access.log ftp://ftp --user user:pass
curl -T /home/logs/error.log ftp://ftp --user user:pass