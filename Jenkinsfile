pipeline {
    agent any
    
    environment {
        PATH="/usr/local/bin:/usr/local/sbin:/home/jenkins/.local/bin:$PATH"
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
                    def myImage = docker.build("teralex79/devops_exam:web_py-2.${env.BUILD_ID}")
                }
            }
        }

        stage('Publish') {
            steps {
                echo 'teralex_Publishing....'

                withCredentials([usernamePassword(credentialsId: '1eb34a30-8255-445a-ac78-40fc605d39e7', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh 'echo $PASSWORD'
                        echo "${env.USERNAME}"
                    //    sh 'docker login --username=${USERNAME} --email=teralex79@gmail.com --password=${PASSWORD}'
                }
            }
        }
    }
}
