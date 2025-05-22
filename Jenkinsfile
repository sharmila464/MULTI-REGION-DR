pipeline {
    agent any

    environment {
        AWS_CREDS = credentials('aws-creds')
    }

    stages {
        stage('Terraform Init') {
            steps {
                withEnv([
                    'AWS_ACCESS_KEY_ID=${AWS_CREDS_USR}',
                    'AWS_SECRET_ACCESS_KEY=${AWS_CREDS_PSW}'
                ]) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withEnv([
                    'AWS_ACCESS_KEY_ID=${AWS_CREDS_USR}',
                    'AWS_SECRET_ACCESS_KEY=${AWS_CREDS_PSW}'
                ]) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withEnv([
                    'AWS_ACCESS_KEY_ID=${AWS_CREDS_USR}',
                    'AWS_SECRET_ACCESS_KEY=${AWS_CREDS_PSW}'
                ]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
