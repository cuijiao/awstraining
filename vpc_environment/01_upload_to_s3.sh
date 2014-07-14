#! /bin/bash

BUCKET="rea-awstraining-deployment"

echo "** Uploading vpc template - $BUCKET"
aws s3 cp vpc-training.json s3://${BUCKET}/vpc-training.json
[ $? -ne 0 ] && echo "ERROR: failed to upload vpc-training.json to S3" && exit 1

echo "** Uploading bastion host template - $BUCKET"
aws s3 cp bastion_host.json s3://${BUCKET}/bastion_host.json
[ $? -ne 0 ] && echo "ERROR: failed to upload bastion_host.json to S3" && exit 1

echo "** Uploading keys into s3 - $BUCKET"
cd keys
rm -f setup_keys.tgz
tar czf setup_keys.tgz * 
[ $? -ne 0 ] && echo "ERROR: Keys tarball failed to create" && exit 1

aws s3 cp setup_keys.tgz s3://${BUCKET}/setup_keys.tar.gz
[ $? -ne 0 ] && echo "ERROR: failed to upload tarball to S3" && exit 1
