
sh ./scripts/header.sh
read -p "	Enter project's name: " name
export PROJECT_NAME=$name

sh ./scripts/skeleton/skeleton.sh
sh ./scripts/libft.sh
printf "%b\n"

echo  "\033[35m"
