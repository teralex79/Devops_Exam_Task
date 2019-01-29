pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                withEnv(["HOME=${env.WORKSPACE}"]) {
                  sh 'pip install --user -e .[test]'
                  sh 'coverage run -m pytest'
                  sh 'coverage report'
                }
            }
        }
    }
}
