pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'teralex_Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'python --version'
                sh 'wheris python3'
                sh 'pwd'
                sh 'ls -lah' 
            }
        }
        stage('Deploy') {
            steps {
                echo 'teralex_Deploying....'
            }
        }
    }
}
