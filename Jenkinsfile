 pipeline{

	//agent any
	agent {
		    node   {
						label 'docker-agent'
					}
			}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('Docker-hub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t raul012/nodeapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push raul012/nodeapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
