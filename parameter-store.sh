#!/bin/bash

# aws kms describe-key --key-id alias/aws/ssm

# aws ssm put-parameter --name "/Test/IAD/helloWorld" --value "My1stParameter" --type "SecureString" --key-id "7868b430-76af-4f04-9422-b4682fbf25dc"
# aws ssm get-parameter --name "/Test/IAD/helloWorld"
# aws ssm get-parameter --name "/Test/IAD/helloWorld" --with-decryption

# aws ssm put-parameter --name param1 --value "secret" --type SecureString --key-id 1234abcd-12ab-34cd-56ef-1234567890ab
# aws ssm put-parameter --name param1 --value "secret" --type SecureString --key-id 1234abcd-12ab-34cd-56ef-1234567890ab
# aws ssm put-parameter --name "a_name" --value "a value, for example P@ssW%rd#1" --type "SecureString"
aws ssm create-key {
    "KeyMetadata": {
        "Origin": "AWS_KMS-
    }
}