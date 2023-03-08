pipeline {
  agent any
  
   environment{
      PATH = "/usr/local/bin:$PATH"

  parameters {
    string(name: 'tag', defaultValue: 'aws-mumbai-1', description: 'The AWS Instance Tag')
    string(name: 'instance_type', defaultValue: 't2.micro', description: 'The EC2 instance type')
    
  }

  stages {

    stage('git checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/abybn27/terraform.git']])
            }
        }   
    stage('Deploy Terraform') {
      steps {
        script {
          def terraform_params = [ '-auto-approve', "-var 'tag=${params.tag}'", "-var 'instance_type=${params.instance_type}'", ]
          sh "terraform init"
          sh "terraform apply ${terraform_params.join(' ')}"
        }
      }
    }
  }
}
