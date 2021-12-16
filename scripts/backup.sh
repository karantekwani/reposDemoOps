#!/bin/bash
cd /home/ubuntu/download
zip -r backup.zip .
aws s3 cp ./backup.zip s3://opsbucketdemo/devops/backup/
rm -rf backup.zip
