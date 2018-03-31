function push {
	rm -rf toPush
	git clone ${1} toPush
	cp -R includes srcs Makefile toPush
	cd toPush
	git add .
	git commit -m "Init project"
	echo "\033[30m"
	git push origin master
	rm -rf toPush
}

echo "\033[34m"
echo "	🔥	Would you like to push it into an existing github repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes )
			read -p "	Enter repository URL: " url;
			push ${url}
			break;;
        No ) break;;
    esac
done
printf "%b\n"
echo "\033[34m"
echo "	🔥	Would you like to push it into a 42 repository? "
select yn in "Yes" "No"; do
    case $yn in
        Yes )
			read -p "	Enter repository URL: " url;
			push ${url}
			break;;
        No ) break;;
    esac
done

