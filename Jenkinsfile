pipeline {
    agent { 
    		node 
    			{
				label 'agent01'
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
        stage('Clean') {
            steps {
                echo 'Cleanning..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
