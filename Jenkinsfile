pipeline{
agent{
docker { 
image 'bryandollery/terraform-packer-aws-alpine'
 } }
environment {
                CREDS = credentials('sara-aws')
}
stages{
stage('build'){
steps{

sh 'make'
sh 'make build'
}

}

}

}
