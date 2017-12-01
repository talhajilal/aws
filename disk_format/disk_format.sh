#/bin/bash 
# Script coded Date 21-7-2015" T
#Coded by Talha Jilal" 
echo "No warranty of any data lost this is an open source code"
echo "..............................absolute no warranty of any data lost......."
echo " Ctrl + C if you don't want to conte in next 5 Seceonds"
sleep 1
echo "1"
sleep 1
echo "2"
sleep 1 
echo "3"
sleep 1
echo "4"
sleep 1 
echo "5"

mkdir /data1 
mkdir /data2
cp /etc/fstab /etc/fstab-`date +%d%m%d`
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
###################### Creating Mount point ###################
# /tmp/mount_point
# /tmp/formated_disks   formated disks
fdisk -l | grep dev | grep -v xvda | grep -v -i disk | awk '{print $1}' > /tmp/formated_disks

#### Creating filesystem #### 
for i in `cat /tmp/formated_disks`
do echo " " 
mkfs.xfs -f $i 
done
#############################
echo data1 > /tmp/mount_point
echo data2 >> /tmp/mount_point
IFS='
'
set -- $( cat /tmp/mount_point)
for i in `cat /tmp/formated_disks`
do
  printf "%s %s\n" "$i" "/$1   xfs     defaults,noatime  0"  >> /etc/fstab
  shift
done
mount -a
