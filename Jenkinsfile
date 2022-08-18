<<<<<<< HEAD
pipeline {
        agent none
        stages {
          stage("build & SonarQube analysis") {
	    agent any
            steps {
              withSonarQubeEnv(installationName: 'sq1') {
                sh 'mvn clean package sonar:sonar'
              }
            }
          }
=======
pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t 30marcel/app:latest .'
			}
		}

		stage('Login') {

			steps {
			sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push 30marcel/app:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
>>>>>>> 73eace401d5b701e3c3698b36b47b1ca0af3b8f9
