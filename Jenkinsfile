pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t 30marcel/nodeapp:0.0.1 .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $'docker login -u $30marcel --password 237marcel'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push 30marcel/nodeapp:0.0.1'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
