pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build and Tag') {

			steps {
				sh 'docker build -t marcel/app:0.0.1 .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push marcel/app:0.0.1'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
