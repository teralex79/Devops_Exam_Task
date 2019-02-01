pipeline {
    agent any
    
    environment {
        PATH="/usr/local/bin:/usr/local/sbin:/home/jenkins/.local/bin:$PATH"
        DockerHub_regestry = 'teralex79/devops_exam'
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
                    def myImage = docker.build("${env.DockerHub_regestry}")
                }
            }
        }

        stage('Publish') {
            steps {
                echo 'teralex_Publishing....'

                withCredentials([usernamePassword(credentialsId: '1eb34a30-8255-445a-ac78-40fc605d39e7', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh 'echo $PASSWORD'
                        echo "${env.USERNAME}"
                        sh 'docker login --username=${USERNAME} --password=${PASSWORD}'
                       // sh 'docker push ${DockerHub_regestry}:web_py-2.${BUILD_ID}'
                        script {
                            myImage.push("web_py-2.${env.BUILD_ID}")    
                            myImage.push("latest") 
                        }
                }
            }
        }
    }
}
