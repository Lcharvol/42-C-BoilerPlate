# Set emoji

sh ./scripts/setEmoji.sh

# Print script Header
sh ./scripts/header.sh

# Menu options select

PS3='What do you want to do? '
options=("Create a new Project" "Manage a Project" "Update projects list" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Create a new Project")
            sh ./scripts/createNewProject.sh
            exit
            ;;
        "Update projects list")
	        sh ./scripts/updateProjects.sh
	        ;;
        "Manage a Project")
			printf "%b\n"
            echo "	Manage a Project Comming soon! 😘"
            printf "%b\n"
            ;;
        "Quit")
            exit
            ;;
        *) echo invalid option;;
    esac
done