pipeline {
  agent any
  
   environment{
      PATH = "/usr/local/bin:$PATH"

  parameters {
    string(name: 'Environment', defaultValue: 'DEV', description: 'Tag Environment')
    string(name: 'Instance_Type', defaultValue: 't2.micro', description: 'Instance type')
    
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
          def terraform_params = [ '-auto-approve', "-var 'Environment=${params.Environment}'", "-var 'Instance_Type=${params.Instance_Type}'", ]
          sh "terraform init"
          sh "terraform apply ${terraform_params.join(' ')}"
        }
      }
    }
  }
}
