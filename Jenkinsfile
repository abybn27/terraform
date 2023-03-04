pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/abybn27/terraform.git']])
            }
        }   
        stage('terraform init') {
            steps {
                sh ('terraform init -reconfigure')
            }
        }     
        
        stage('terraform plan') {
            steps {
                sh ('terraform plan')
            }
        }
    }    
}
