#! /bin/bash

aws cloudformation create-stack --stack-name training-exercise --template-body file://04_ec2_instance.json --parameters '[ { "ParameterKey": "VpcID", "ParameterValue": "vpc-c5e2eaa7" }, { "ParameterKey": "PrivateSubnets", "ParameterValue": "subnet-3c99b248,subnet-74939a16" }, { "ParameterKey": "KeyName", "ParameterValue": "nat-instances-key" }  ]' --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]'
