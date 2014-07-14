#! /bin/bash

aws cloudformation create-stack --stack-name training-stack-creator --template-body file://full-training-stack.json --tags '[ { "Key": "lob", "Value": "training" }, { "Key": "application", "Value": "aws" } ]' --capabilities CAPABILITY_IAM
