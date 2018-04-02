# Set emoji

sh ./scripts/setEmoji.sh

# Print script Header
sh ./scripts/header.sh

# Menu options select

PS3='What do you want to do? '
options=("Create a new Project" "Modify a Project" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Create a new Project")
            sh ./scripts/createNewProject.sh
            exit
            ;;
        "Modify a Project")
			printf "%b\n"
            echo "	Modify a Project Comming soon!"
            printf "%b\n"
            ;;
        "Quit")
            exit
            ;;
        *) echo invalid option;;
    esac
done