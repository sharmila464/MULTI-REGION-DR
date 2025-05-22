pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-creds').username
    AWS_SECRET_ACCESS_KEY = credentials('aws-creds').password
    AWS_DEFAULT_REGION    = 'us-east-1'  // Change if needed
  }

  stages {
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
      echo "Build failed!"
    }
  }
}
