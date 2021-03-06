#!/bin/bash

function push {
	rm -rf toPush
	git clone ${1} toPush >> githubLogs
	rm -rf toPush/*
	cp -R ./Projects/$PROJECT_NAME/* toPush
	cd toPush
	git add .
	git commit -m "Init project" >> githubLogs
	git push origin master >> githubLogs
	cd ..
	rm -rf toPush
}

echo "	- Would you like to push it into an existing github repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes )
			read -p "	Enter repository URL: " url;
			echo -e "\e[37m";
			push ${url} >> githubLogs;
			echo -e "\e[36m";
			# Add new project in projects config
			bash ./scripts/config/addProject.sh $PROJECT_NAME $url;
			break;;
        No ) bash ./scripts/config/addProject.sh $PROJECT_NAME "null"; break;;
    esac
done
printf "%b\n"
echo "	- Would you like to push it into a 42 repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes )
			read -p "	Enter repository URL: " url;
			push ${url}
			break;;
        No ) break;;
    esac
done

# Add new project in projects config
sh ./scripts/config/addProject.sh $PROJECT_NAME $url
