printf "%b\n"
echo "\033[36m"
echo " ========================================="
echo " ==== create-42-c-project by Lcharvol ===="
echo " ========================================="

printf "%b\n"
echo  "\033[1m"

read -p "Enter project's name: " name
export PROJECT_NAME=$name

sh ./scripts/skeleton/skeleton.sh
sh ./scripts/libft.sh
printf "%b\n"

echo  "\033[35m"
