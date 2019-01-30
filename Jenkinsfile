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
                sh 'hostname'
                sh 'echo $PATH'
                //sh 'docker build -t teralex79/devops_exam:web_py-2.${env.BUILD_ID}'
                script {
                    def myImage = docker.build("teralex79/devops_exam:web_py-2.${env.BUILD_ID}")
                }
            }
        }
    }
}
