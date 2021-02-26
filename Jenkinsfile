pipeline {
    agent any 
    stages {
        stage ("Packer Build") {
            steps {
                sh "echo 'packerbuild started'"
            }
        }
        stage ("Terraform") {
            steps {
                sh "cd terraform" //navigating to directory within automation_test project
                sh "aws-profile terraform init" //initiliasing terraform, and using aws-profile to give terraform the rights it needs to access HMRCs AWS.
                sh "aws-profile terraform plan" //dry run
                sh "aws-profile terraform apply -auto-approve" //running the terraform files, and autoapproving the yes prompt
            }
        }
        stage ("Deploy") {
            steps {
                sh "echo 'deploy started'"
            }
        }
    }
}