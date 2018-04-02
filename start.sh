# Set emoji

sh ./scripts/setEmoji.sh

# Print script Header
sh ./scripts/header.sh

# Get the project name
read -p "	🐬	Enter project's name: " name
export PROJECT_NAME=$name
mkdir $name

# Ask for libft
echo  "\033[32m"
echo "	Include any library from a github repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) export USE_LIB=true; sh ./scripts/lib.sh;break;;
        No ) export USE_LIB=false; break;;
    esac
done

# Generate basique skeleton
sh ./scripts/skeleton/skeleton.sh

# Push to an existing github repository
sh ./scripts/github.sh

echo  "\033[32m"
echo "	Your project is now ready to be used! 😘"
printf "%b\n"