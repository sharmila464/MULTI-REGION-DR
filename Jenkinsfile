pipeline {
    agent any

    environment {
        TF_VERSION = '1.5.7'
        TF_WORKDIR = './'  // update if your Terraform files are in a subfolder
    }

    tools {
        terraform "${TF_VERSION}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/sharmila464/MULTI-REGION-DR.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        // Uncomment this stage to auto-apply (CAREFUL in production)
        /*
        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
        */
    }
}
