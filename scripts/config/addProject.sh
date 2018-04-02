projectName=$1
repositoryURL=$2

path=./config/$PROJECT_NAME.config
touch $path
echo $projectName $repositoryURL >> $path