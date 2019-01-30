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
        stage('Build image') {
            steps {
                echo 'teralex_Building..'
            }
        }
    }
}
