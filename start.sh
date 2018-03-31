# Print script Header
sh ./scripts/header.sh

# Get the project name
read -p "	Enter project's name: " name
export PROJECT_NAME=$name

# Ask for libft
echo  "\033[32m"
echo "	Include libft? "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) export USE_LIBFT=true; sh ./scripts/libft.sh;break;;
        No ) export USE_LIBFT=false; break;;
    esac
done

# Generate basique skeleton
sh ./scripts/skeleton/skeleton.sh

# Push to an existing github repository
sh ./scripts/github.sh

echo  "\033[32m"
echo "	Your project is now ready to be used!"
printf "%b\n"