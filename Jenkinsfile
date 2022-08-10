pipeline{

	
        agent {label 'Agent-01'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

   

		stage('Build') {

			steps {
				sh 'docker build -t yandjoumbi/yann-dj:0.0.1 .'
			}
		}

 

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push yandjoumbi/yann-dj:0.0.1'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
