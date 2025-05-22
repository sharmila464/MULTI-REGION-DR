pipeline {
    agent { label 'agent-1' }

    environment {
        AWS_DEFAULT_REGION = 'us-east-1'  // update if needed
    }

    stages {
        stage('Terraform Init') {
            steps {
                withCredentials([aws(credentialsId: 'aws-creds')]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([aws(credentialsId: 'aws-creds')]) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                input 'Do you want to apply these changes?'
                withCredentials([aws(credentialsId: 'aws-creds')]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
