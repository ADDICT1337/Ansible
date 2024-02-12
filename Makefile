ping: 
	ansible all -i inventory.ini -u admin -m ping  


installGit: 
	ansible-playbook playbookInstallGit.yml -i inventory.ini  

removeGit:
	ansible-playbook playbookRemoveGit.yml -i inventory.ini

apply_all:
	ansible-playbook -i inventory.ini setup_server.yml

setup_nginx:
	ansible-playbook -i inventory.ini nginx_setup.yml --ask-become-pass

setup_nginx_vars:
	ansible-playbook -i inventory.ini nginx_setup_with_variables.yml --ask-become-pass

setup_nginx_inventory_vars:
	ansible-playbook -i inventory.ini nginx_setup_with_inventory_variables.yml --ask-become-pass

apply_update_cache:
	ansible-playbook -i inventory.ini setup_server.yml --tags update_cache

apply_install_packages:
	ansible-playbook -i inventory.ini setup_server.yml --tags install_packages

apply_create_users:
	ansible-playbook -i inventory.ini setup_server.yml --tags create_users