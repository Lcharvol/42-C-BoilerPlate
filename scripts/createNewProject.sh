#!/bin/bash
# Get the project name
printf "%b\n"
read -p "	🐬	Enter project's name: " name

# Check if project allready exist
if [ -d ./Projects/$name ];
	then
		while [ -d ./Projects/$name ]; do
			printf "%b\n"
			echo "	🐬	This project allready exist, take another name: "
			printf "%b\n"
			read -p "	" name;
		done
fi

# Create project folder
mkdir ./Projects/$name

# Export namein a enviroment variable
export PROJECT_NAME=$name

# Ask for libft
echo  -e "\e[36m"
echo "	Include any library from a github repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) export USE_LIB=true; bash ./scripts/lib.sh;break;;
        No ) export USE_LIB=false; break;;
    esac
done

# Generate basique skeleton
bash ./scripts/skeleton/skeleton.sh

# Push to an existing github repository
bash ./scripts/github.sh

echo -e "\e[93m"
echo "	Your project is now ready to be used! 😘"
printf "%b\n"