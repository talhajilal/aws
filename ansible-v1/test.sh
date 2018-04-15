# /bin/bash 
# script version 1.0 
# Vm list validation.
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo "Please enter CSV file name, must be located in you program directory"
read csv_file
while true; do
    read -p "Do you wish Compare your CSV file with Current Data center VM list ?" yn
    case $yn in
        [Yy]* ) ansible-playbook vmware-facts.yml ;
	echo "list of matching VMs" ;
	for i in `cat /tmp/vms_list` ;do printf  "" ; cat $csv_file | grep $i  | awk -F ',' '{print $1}'  ; done > /tmp/vms_match ;
		number_of_vms=$(cat /tmp/vms_match | wc -l )
		if [ $number_of_vms -lt 1 ]
		then
		echo "NO matching VM found"
		else
		echo -e ${RED} Following Vms already exist
		cat /tmp/vms_match  
		echo -e ${NC}
		fi
 	#for i in `cat /tmp/vms_list ` ; do echo "" ; sed -i '/'$i'/d' $csv_file ;doae
	  break;;
        [Nn]* ) echo ${RED} Proceeding without CSV file comparison with current data center vm list ${NC}
 		echo "Ansible-playbook command here"
		exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

