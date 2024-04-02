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
                    dir('C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\terraform-standalone') {
                        bat 'D:\\terraform\\terraform.exe init ../../' // Assuming main.tf is in the root directory of the repository
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    dir('C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\terraform-standalone') {
                        bat 'D:\\terraform\\terraform.exe plan -out=tfplan ../../' // Assuming main.tf is in the root directory of the repository
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    dir('C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\terraform-standalone') {
                        bat 'D:\\terraform\\terraform.exe apply -auto-approve tfplan ../../' // Assuming main.tf is in the root directory of the repository
                    }
                }
            }
        }
    }
}
