function push {
	git clone ${1} toPush
	cp -R includes srcs Makefile toPush
	cd toPush
	git add .
	git commit -m "Init project"
	git push origin master
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

