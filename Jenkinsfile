pipeline {
    agent any
    
    environment {
        PATH="/usr/local/bin:/usr/local/sbin:/home/jenkins/.local/bin:$PATH"
        DockerHub_regestry = 'teralex79/devops_exam'
        DockerHub_Credential_id = 'dockerhub'
        myImage = ''
    }

    stages {
        stage('Py-tests') {
            steps {
                echo 'teralex_Testing..'
                sh 'pip install --user -e .[test]'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
        stage('Build image') {
            steps {
                echo 'teralex_Building..'
                script {
                    myImage = docker.build("${DockerHub_regestry}")
                }
            }
        }

        stage('Publish') {
            steps {
                echo 'teralex_Publishing....'
                script {
                    docker.withRegistry( '', DockerHub_Credential_id ) {
                       myImage.push("web_py-2.${BUILD_NUMBER}")
                       myImage.push("latest")
                    }
                }
            }
        }

        stage('Remove Unused docker image') {
            steps{
                echo 'teralex_Removing Unused docker image....'
                sh "docker rmi ${DockerHub_regestry}:web_py-2.${BUILD_NUMBER}"
                sh "docker rmi ${DockerHub_regestry}:latest"
            }
        } 
    }
}
