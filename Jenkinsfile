pipeline{
agent{
docker { 
image 'bryandollery/terraform-packer-aws-alpine'
args '-u root --entrypoint=' } }
environment {
CREDS = credentials('sara-aws')
AWS_ACCESS_KEY_ID="${CREDS_USR}"
AWS_SECRET_ACCESS_KEY="${CREDS_PSW}"
OWNER="sarah"
PROJECT_NAME="sarah-webserver"
TF_NAMESPACE="sarah"
}
stages{
stage('build'){
steps{

sh 'packer build packer.json'
}
}
}
post {
    success {
build quietPeriod: 0, job: 'sarah-lab-2b'

}

}
}
