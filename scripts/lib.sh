
function ProgressBar {
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")
	printf "\rClonnig libft : [${_fill// /#}${_empty// /-}] ${_progress}%%"
}
printf "%b\n"




read -p "Enter library name: " libname
read -p "Enter library repository URL: " libUrl

printf "%b\n";
git clone $libUrl $libname 2>1;
rm -rf 1;
rm -rf ./$libname/auteur ./$libname/.git;
























# rm -rf libft
# mkdir libft
# printf "%b\n"
# echo "Would you like to clone it from a gitHub repository?: "
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes )
# 			printf "%b\n";
# 			read -p "Enter repository URL: " url;
# 			git clone $url libft 2>1;
# 			rm -rf 1;
# 			rm -rf ./libft/auteur ./libft/.git;
# 			cd ./libft && make fclean 1>2;
# 			cd ../;
# 			_start=1
# 			_end=10
# 			for number in $(seq ${_start} ${_end})
# 			do
# 			    sleep 0.1
# 			    ProgressBar ${number} ${_end}
# 			done
# 			printf "%b\n"
# 			printf '\nFinished!\n'
# 			break;;
#         No ) break;;
#     esac
# done