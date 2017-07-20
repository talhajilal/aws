#/bin/bash 
# Step 1 Obtain list of drives # 
sudo fdisk  -l |  grep dev | grep -v xvda | grep -i disk  | awk '{print $2}' | awk -F ':' '{print $1}'  >/tmp/disks_list

for i in `cat /tmp/disks_list ` 
do echo "" 
#(
#echo o # Create a new empty DOS partition table
#echo n # Add a new partition
#echo p # Primary partition
#echo 1 # Partition number
#echo   # First sector (Accept default: 1)
#echo   # Last sector (Accept default: varies)
#echo w # Write changes
#) | sudo fdisk
echo -e "o\nn\np\n1\n\n\nw" | fdisk $i 
done
for i in `cat /tmp/disk_list`; do echo "" ; ll $i* 
done
