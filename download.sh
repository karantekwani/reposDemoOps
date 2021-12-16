#!/bin/bash
cd /home/ubuntu/download
aws s3 cp s3://opsbucketdemo/devops/buildArtifact/artifact.zip artifact.zip
unzip artifact.zip
rm -rf artifact.zip