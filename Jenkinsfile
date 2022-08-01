pipeline {
    agent {
        node {label 'agent01'}
    }

    stages {
        stage('Build') {
            agent{
                any {
                    image 'yandjoumbi/app:0.0.1'
                    reuseNode true
                }
            }
            steps {
                  any {
                    image 'yandjoumbi/app:0.0.1'
                    reuseNode true
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..for..cam'
            }
        }
        stage('Deploy') {
            steps {
                echo 'cameron..  ...'
            }
        }
    }
}
