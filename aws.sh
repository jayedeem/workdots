#!/bin/bash

mfa() {
	token=$argv[1]
    	echo "token" $token
    	credentials=$(aws --profile primary sts get-session-token --serial-number arn:aws:iam::[account_number]:mfa/[first.last] --duration-seconds 129600 --token-code $token | jq '.Credentials')
    	accessKeyId=$(echo $credentials | jq -r '.AccessKeyId')
    	secretKey=$(echo $credentials | jq -r '.SecretAccessKey')
    	sessionToken=$(echo $credentials | jq -r '.SessionToken')
    	file="$HOME/.aws/credentials"
    	sed -E -i '' "/\[default\]/{g; n; /(aws_access_key_id=).*/{g;n; /(aws_secret_access_key=).*/{g;n; /(aws_session_token=).*/g; }; }; };" $file &&
    	echo '[default]' >> $file &&
    	echo "aws_access_key_id=$accessKeyId" >> $file &&
    	echo "aws_secret_access_key=$secretKey" >> $file &&
    	echo "aws_session_token=$sessionToken" >> $file &&
   	    echo "aws_region=us-west-2" >> $file &&
    	formatted=$(uniq $file)
    	echo $formatted > $file
    	export AWS_ACCESS_KEY_ID=$accessKeyId
    	export AWS_SECRET_ACCESS_KEY=$secretKey
    	eport AWS_SESSION_TOKEN=$sessionToken
}

