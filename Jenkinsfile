/*pipeline {
    agent { 
    		node 
    			{
				label 'static-agent'
			}
	}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}*/
pipeline {

	agent  
            {
                node 
                        {
                            label 'static-agent'
                        }
            }

	environment {
		DOCKERHUB_CREDENTIALS=credentials('junior')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t josianenana/nodeapp:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push josianenana/nodeapp:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
