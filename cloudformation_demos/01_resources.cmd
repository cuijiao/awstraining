aws cloudformation create-stack --stack-name awstraining01 --template-body file://01_resources.json --tags '[ { "Key": "lob", "Value": "all" }, { "Key": "application", "Value": "ec2training" } ]'
