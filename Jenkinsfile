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
