pipeline {
    agent { 
    		node 
    			{
				label 'Agent02'
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
                echo 'Deploying..Bas..'
            }
        }
    }
}
