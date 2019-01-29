pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'id'
                sh 'ls -lah'
                sh 'pip install -e .[test]'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
    }
}
