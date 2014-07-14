#! /bin/bash

aws cloudformation update-stack --stack-name training-exercise --template-body file://01_ec2_instance.json --parameters '[ { "ParameterKey": "VpcID", "ParameterValue": "vpc-c5e2eaa7" }, { "ParameterKey": "SubnetID", "ParameterValue": "subnet-3c99b248" }, { "ParameterKey": "SGIDs", "ParameterValue": "sg-8d555fef,sg-92555ff0" }, { "ParameterKey": "KeyName", "ParameterValue": "nat-instances-key" }  ]'
