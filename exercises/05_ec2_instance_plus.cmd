#! /bin/bash

aws cloudformation update-stack --stack-name training-exercise --template-body file://05_ec2_instance_plus.json --parameters '[ { "ParameterKey": "VpcID", "ParameterValue": "vpc-c5e2eaa7" }, { "ParameterKey": "PrivateSubnets", "ParameterValue": "subnet-3c99b248,subnet-74939a16" }, { "ParameterKey": "PublicSubnets", "ParameterValue": "subnet-3e99b24a,subnet-75939a17" }, { "ParameterKey": "KeyName", "ParameterValue": "nat-instances-key" } ]' # --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]'
