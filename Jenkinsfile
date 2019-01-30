pipeline {
    agent any
    
    environment {
        PATH="/home/jenkins/.local/bin:$PATH"
    }

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'pip install --user -e .[test]'
                sh 'echo $PATH'
                sh 'ls -lah /home/jenkins/.local/bin'
                sh 'coverage run -m pytest'
                sh '/home/jenkins/.local/bin/coverage report'
            }
        }
    }
}
