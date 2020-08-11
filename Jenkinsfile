pipeline{
agent{
docker { 
image 'ubuntu'
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


sh 'sudo apt update'
sh 'sudo apt install docker.io'
sh 'sudo apt install wget'
sh 'wget https://releases.hashicorp.com/packer/0.9.0/packer_0.9.0_linux_386.zip'
sh 'sudo apt-get install unzip'
sh 'unzip packer_0.9.0_linux_386.zip'
sh 'export PATH=$PATH:~/packer/'
sh 'packer'
sh 'packer build packer.json'
}

}

}

}
