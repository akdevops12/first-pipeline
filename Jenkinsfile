pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build and Tag') {

			steps {
				sh 'docker build -t app .'
				  sh  'docker tag app:0.0.1 30marcel/app:0.0.1
			        sh 'docker tag nginxtest 30marcel/app:$BUILD_NUMBER'
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
