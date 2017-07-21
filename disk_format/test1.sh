IFS='
'
set -- $( cat /tmp/mount_point)
for i in `cat /tmp/formated_disks`
do
  printf "%s %s\n" "$i" "/$1   xfs     defaults,noatime  0"  >> /etc/fstab
  shift
done
