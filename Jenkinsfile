pipeline {
    agent any
    
    environment {
        PATH="/home/jenkins/.local/bin:$PATH"
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
        stage('Build') {
            steps {
                echo 'teralex_Building..'
                app = docker.build("teralex79/devops_exam")
            }
        }
    }
}
