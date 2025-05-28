pipeline {
    agent any

    environment {
        TF_VAR_region = "us-east-1"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/sharmila464/MULTI-REGION-DR.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Terraform') {
            steps {
                input message: 'Approve to apply changes?'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
