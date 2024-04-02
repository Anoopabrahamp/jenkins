pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Anoopabrahamp/jenkins.git'
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    dir('D:\\terraform') { // Change directory to the terraform directory
                        bat 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    dir('D:\\terraform') { // Change directory to the terraform directory
                        bat 'terraform plan -out=tfplan'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    dir('D:\\terraform') { // Change directory to the terraform directory
                        bat 'terraform apply -auto-approve tfplan'
                    }
                }
            }
        }
    }
}
