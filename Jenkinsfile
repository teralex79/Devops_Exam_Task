pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'pip install --user -e .[test]'
                sh 'PATH=~/.local/bin:$PATH'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
    }
}
