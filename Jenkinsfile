pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'teralex_Testing..'
                withEnv(["HOME=${env.WORKSPACE}"]) {
                  sh 'ip install -e .[test]'
                  sh 'coverage run -m pytest'
                  sh 'coverage report'
                }
            }
        }
    }
}
