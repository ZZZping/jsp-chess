x:
	sudo ln -f `ls -l | grep '^-' | awk '{print $$9}'` /var/lib/tomcat10/webapps/chess
