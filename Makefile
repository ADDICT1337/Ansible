ping: 
	ansible all -i inventory.ini -u admin -m ping  


installGit: 
	ansible-playbook playbookInstallGit.yml -i inventory.ini  

removeGit:
	ansible-playbook playbookRemoveGit.yml -i inventory.ini