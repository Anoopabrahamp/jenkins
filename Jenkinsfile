pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    agent any

    stages {
        stage('checkout') {
            steps {
                script {
                    dir("terraform") {
                        git "https://github.com/Anoopabrahamp/jenkins.git"
                    }
                }
            }
        }

       stage('tf_init'){
            steps{
                
                bat "D:\terraform\terraform.exe init"
            }
        }
		
        stage('tf_validate'){
            steps{
                
                bat "D:\terraform\terraform.exe validate"
            }
        }
        
        stage('tf_plan'){
            steps{
                
                bat "D:\terraform\terraform.exe plan"
            }
        }
        
        
        stage('tf_apply'){
            steps{
                
                bat "D:\terraform\terraform.exe apply -auto-approve"
            }
        }
    }
}
