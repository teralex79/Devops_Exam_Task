pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                sh 'pip install --user -e .[test]'
                sh 'export PATH=~/.local/bin:$PATH'
                sh 'echo $PATH'
                sh 'ls -lah ~/.local/bin'
                sh 'coverage run -m pytest'
                sh 'coverage report'
            }
        }
    }
}
