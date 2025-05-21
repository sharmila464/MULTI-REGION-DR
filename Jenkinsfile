pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')   // Jenkins stored credential ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/sharmila464/MULTI-REGION-DR.git', branch: 'main'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
    post {
        failure {
            mail to: 'your.email@example.com',
                 subject: "Jenkins Build Failed: ${env.JOB_NAME} Build #${env.BUILD_NUMBER}",
                 body: "Build failed. Please check Jenkins console output."
        }
    }
}
