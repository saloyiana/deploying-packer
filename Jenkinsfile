pipeline{
agent{
docker { 
image 'bryandollery/terraform-packer-aws-alpine'
 } }

stages{
stage('build'){
steps{

sh 'make'
sh 'make build'
}

}

}

}
