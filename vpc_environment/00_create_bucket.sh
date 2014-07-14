#!/bin/bash

aws cloudformation create-stack --stack-name training-bucket-deployment --template-body file://deployment-s3-bucket.json --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]'
