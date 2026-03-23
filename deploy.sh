#!/bin/bash
aws s3 sync src/ s3://bucket-devops-1307 --acl public-read
