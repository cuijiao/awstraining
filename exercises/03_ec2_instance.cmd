#! /bin/bash

aws cloudformation create-stack --stack-name training-exercise --template-body file://03_ec2_instance.json --parameters '[ { "ParameterKey": "VpcID", "ParameterValue": "vpc-c5e2eaa7" }, { "ParameterKey": "SubnetID", "ParameterValue": "subnet-3c99b248" }, { "ParameterKey": "KeyName", "ParameterValue": "nat-instances-key" }  ]' --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]'
