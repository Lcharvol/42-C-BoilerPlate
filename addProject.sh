
projectUrl=$1
projectName=$(basename $projectUrl)

echo $projectName $projectUrl >> config/projects.csv