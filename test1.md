# Ansible Ad-Hoc Commands 

	==> Ansible command by default look inside the /etc/ansible/inventory file.
	==> To specify intventory file, use “-i” switch.

## Test Case 1: Validate connectivity.
		#vi /some_path/inventory
			 [hosts1]
			 192.168.0.120
			 [host2]
			  kuber-02


## Scenario 1: Run local command on remote system.
		ansible all -a 'ping -c 2 localhost' -i hosts

		all--  present the all hosts in inventory file.
		-a --  plugin for remote command
		ping –c 2 localhost’ ] a ping to localhost [remote host it self] and print the output.
		We can also ping to some destination from remote host 


[NOTE:] We can run any command from, in ping area but command must be valid.


## Scenario 2: Run module from Ansible host to remote destination. (Ansible Ad-Hoc)
	 	ansible all -m  service -a "name=sshd enabled=yes" -i /root/hosts
		Or 
	 	ansible a-host-name -m  service -a "name=sshd enabled=yes" -i /root/hosts





### Run Command without Sudo User
		ansible web -a 'ping -c 2 localhost' -i /etc/ansible/hosts -u talha.jilal --ask-pass --become --ask-become-pass


