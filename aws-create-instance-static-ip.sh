#/bin/bash
# Writing script for aws automation
# This script create aws AMI and help to do automation
id=ami-be3dd0c6
sec_grp=sg-7fefec04
in_type=t2.micro
ssh_key=ami-testing-key
/root/.local/bin/aws ec2 run-instances --image-id $id --security-group-ids $sec_grp --count 1 --instance-type $in_type --key-name $ssh_key --private-ip-address 10.0.0.3 --subnet-id 255.255.255.0 --dry-run
