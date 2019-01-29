pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                //sh 'sudo ip install -e .[test]'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
    }
}
