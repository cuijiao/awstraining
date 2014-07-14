#! /bin/bash

aws cloudformation create-stack --stack-name training-exercise --template-body file://00_ec2_instance.json --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]' --parameters '[ { "ParameterKey": "VpcID", "ParameterValue": "vpc-c5e2eaa7" }, { "ParameterKey": "SubnetID", "ParameterValue": "subnet-3c99b248" }, { "ParameterKey": "SGID", "ParameterValue": "sg-8d555fef" }, { "ParameterKey": "KeyName", "ParameterValue": "nat-instances-key" }  ]'
