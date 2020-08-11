pipeline{
agent{
docker { 
image 'ubuntu:18.04'
args '--entrypoint=' } }
environment {
CREDS = credentials('sara-aws')
AWS_ACCESS_KEY_ID="${CREDS_USR}"
AWS_SECRET_ACCESS_KEY="${CREDS_PSW}"
OWNER="sarah"
PROJECT_NAME="sarah-webserver"
}
stages{
stage('build'){
steps{


sh './s.sh'
sh 'packer build packer.json'
}

}

}

}
