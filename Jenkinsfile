pipeline {
    agent any
    
    environment {
        PATH="/usr/local/bin:/usr/local/sbin:/home/jenkins/.local/bin:$PATH"
        DockerHub_regestry = 'teralex79/devops_exam'
        DockerHub_Credential = '1eb34a30-8255-445a-ac78-40fc605d39e7'
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
                    myImage = docker.build("${env.DockerHub_regestry}")
                }
            }
        }

        stage('Publish') {
            steps {
                echo 'teralex_Publishing....'

                script {

                    docker.withRegistry( '', DockerHub_Credential ) {

                       myImage.push("web_py-2.$BUILD_NUMBER")
                       myImage.push("latest")
                    }
                }
            }
        }
    }
}
