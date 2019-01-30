pipeline {
    agent any
    
    environment {
        PATH = " ~/.local/bin:$PATH"
    }

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'pip install --user -e .[test]'
                sh 'echo $PATH'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
    }
}
