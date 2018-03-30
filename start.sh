printf "%b\n"
echo  "\033[36m ========================================="
echo  " ==== create-42-c-project by Lcharvol ===="
echo  " ========================================="

printf "%b\n"
echo  "\033[1m"
read -p "Enter project's name: " name
export PROJECT_NAME=$name
sh ./scripts/skeleton.sh
printf "%b\n"
echo  "\033[32m"
echo "Include libft? "

select yn in "Yes" "No"; do
    case $yn in
        Yes ) sh ./scripts/libft.sh; break;;
        No ) libft=false; break;;
    esac
done
printf "%b\n"

echo  "\033[35m"
echo "Include mlx? "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) mlx=true; break;;
        No ) mlx=false; break;;
    esac
done

echo name: $name
echo libft: $libft
echo mlx: $mlx

