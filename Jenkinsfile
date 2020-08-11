pipeline{
agent{
docker { 
image 'bryandollery/alpine-docker'
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


sh 'docker run -it bryandollery/terraform-packer-aws-alpine bash'
sh 'packer build packer.json'
}

}

}

}
