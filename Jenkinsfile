pipeline{

	
        agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-yaya')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t yandjoumbi/nginxsample:0.0.2 .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push yandjoumbi/nginxsample:0.0.2'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
