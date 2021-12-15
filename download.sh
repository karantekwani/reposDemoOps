#!/bin/bash
cd /home/ubuntu/download
latestzip=$(aws s3 ls s3://opsbucketdemo/devops/ | sort | tail -n 1 | awk '{print $4}')
aws s3 cp s3://opsbucketdemo/devops/ ./$latestzip --recursive