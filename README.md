# aws
AWS learning and scripting notes

step 1 - 

  vi create_new_instance_with_disk_option.sh
#/bin/bash
id=ami-58f1e621
sec_grp=sg-7fefec04
in_type=t2.micro
ssh_key=ami-testing-key
aws ec2 run-instances --image-id $id --security-group-ids $sec_grp --count 1 --instance-type $in_type --key-name $ssh_key --block-device-mappings file://mapping.json




step 2-
vi mapping.json
[
  {
    "DeviceName": "/dev/sda1",
    "Ebs": {
      "DeleteOnTermination": true,
      "VolumeSize": 10,
      "VolumeType": "gp2"
    }
  }
]

