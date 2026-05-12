#!/bin/bash

#Author:Mohammed Aqueel
#Date:12th May 2026
#Version:v1
#About:Cronjob for AWS resource tracking

set -x
set -e
set -o pipefail

#S3 buckets
aws s3 ls

#EC2 instances
aws ec2 describe-instances

#Lambda
aws lambda list-functions

#IAM users
aws iam list-users
