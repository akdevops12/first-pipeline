pipeline {
    agent {
        node {label 'agent01'}
    }

    stages {
        stage('Build') {

            agent any 

                 steps {
                  sh 'docker build -t yandjoumbi/app:0.0.1'
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
