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
                sh """
                export AWS_PROFILE='sandbox' 
                echo $AWS_PROFILE
                cd terraform 
                aws-profile terraform init 
                aws-profile terraform plan //dry run
                aws-profile terraform apply -auto-approve
                """ 
            }
        }
        stage ("Deploy") {
            steps {
                sh "echo 'deploy started'"
            }
        }
    }
}

//Tell it to use sandbox profile
//navigating to directory within automation_test project
//initiliasing terraform, and using aws-profile to give terraform the rights it needs to access HMRCs AWS.
//dry run
//running the terraform files, and autoapproving the yes prompt