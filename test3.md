# Ansible and Juniper.
## (1) Installing pre-req 

	easy_install pip 
	pip install ncclient
## (2)  Creating first juniper playbook.
	cd juniper-first-playbook
	ansible-galaxy init first
## (3) Review site.yml , hosts and tasks.yml files.



	Register: result
      - debug: msg={{ result }} 
## (4) How to read json file. 
