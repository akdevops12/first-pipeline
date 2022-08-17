pipeline{

	
        agent {label 'Agent-01'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
		AWS_ACCOUNT_ID = "597647611698"
        AWS_DEFAULT_REGION = "us-east-1"
		IMAGE_REPO_NAME= "yandjoumbi"
		IMAGE_TAG = "latest" 
		REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}" 
	}

	stages {

   

		stage('Build') {

			steps {
				sh 'docker build -t yandjoumbi/yann-dj:0.0.1 .'
				//dockerImage = docker.build "yandjoumbi:latest"
			}
		}

 

		stage('Login') {

			steps {
				//sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
				//sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 597647611698.dkr.ecr.us-east-1.amazonaws.com"
			    sh'docker login -u AWS -p eyJwYXlsb2FkIjoiSlhaREpISmtUdVcxVjFENGE5TDZXY3BjYnk5WGxTaFlNOWlZRWllTHpzckZCSmJTM2RIWGJwc1NjcUJRb3IxcVMyT2VBYmZLWGpvcXNzUmh0c1YxcFNaSHlWRkVsVjI0V0M4RTE5MnhSUStkUHFUMUdlY014Q3ROVW5VaEVMRHBaZ0d6MDk2TzFIajh6QTdTOTRtMk9wVHJOZ3RZcU1uYnpRU3JaS3BmQ0t3WTRNNWhNcUNvZENrYTZkTWRkQU1uTjNoNWVET2JKNnkzVmRpSmRWK1FMTDdFN1RqZ09YWmRldHNHcGRoRmVpY2dFMW5MWkZaTUFBQ0VJWWdVUit4WGRQVStjNUNWdEIwWVR6T29NODdMNTdKL283K1F4UGs0d2tSQXVGazNBTnBnMTljK2FJWnRnZUFNaFJQNFFmb25tb2J6d3JTWFJ5ZjV4Y0o4cFRPM0NHOXkyWXE5aDZsdEE1TzdMS1ZlTjVVL2t0Nk1RUnFyQitPWWFPY1llRlZhZ0xteEw1RWRTVG1WNlRrS1NMVW10L3BYWUhmdVV5T1pxeURDK2xWbTE4cWord0h6QVNheHE3cDNzOXFUdzNYM1V4VTErV2hPU0M0bnBwUXVzWGdxUktuVkFualVMditHMG5YQWo5QlNKOTRPcTZKU3lKUTNLTXhRWGdJdVdZRjF5emlFWEJsa3VMa0tPZU00MllKVlNoSFp6cHROOGtUcENuYlJFeFRsZk1LRWh1Yk9oaEVDcUhVaCtuS2JIWE9pZENFU0hFeWVQN3ptbkFjcjZjZGN3VWFGR3lTeGthR2RtbG15RTlmOHgxNE03T0JHZVQ4V2N1RmpOY1FkRGQzb1RzcXVUSFVaR1lCdnVEQmJsTXJaRnVZcHU0ZGFyb1lib2NVeU5Ha2VPTVU1aUtwQkVpT09JNHpnZ3JFeGpQYUNoVHhJc1I5N2cvblFtVFlXSG80MmVzaWJqcEdsN2sxMThtOStQdGNUR21ISFNnRXAwRWRLVFBWeGE0ZXRHOGpOdVJCUkhZYjdVZW0xa1BCamZ2UEhycmVQY21vN2srUkRiemJsSmZXR2ZXdy9LSkhRcXJoRzlMOGxJSlhGRGFTTnhMalhmY2toTlozVmoreWlpTHhrQ2lRSTgrWDdRb1hZcDFZZHE1MFkxWnBRbmZoc0F0V2t5aFh4c1M1SG00eFZ4aEFXbktrQ3pHcEd1d05QU0VVdW4yeE9pUFU0T25kVzgzMG9jaUlCRFJvMTFqdTJnMCtTbm02VVRmTy9vUkJ0ek5Da3BQUWNNeEIxbjU2YlJRV0hJNzBNVGk5N3NTb3NESHdSNGpzclQ5TjVmeHUvVmRGTnQ5YXFWRnJLQ1UveVB3akx2SWt5VWpnUUpuNHdWcmRkUTlTaXcvSXZ3cWVqZ1BJd1RVbndtN3ZUVDNmNFgrY1dhWTJqbElvbWw3amo2TjVHVmpqWCs2V200aXpVcmpMMHl4RVhoT3JRVy9FczA5T0lYRWxacEQ0ak1VaTFVK1QxUHR2WTNsS24wWEpZcWJhMkJrVWFIdmU4ZFZxbXkvVUJJbEhMYjk2cDFFNlljYnowR1A0UlRpUTR4T2x3bWpVQnMzWXh3ZWkrY1RxMHY5ZWNoNHp6Y1ZubzQ0ZFVhRnloazRzWHZGajBERE1FaFJTQzJFd0w0eERDMElEdkJ3aHB0MTZ1TnRhbW9tV2ZuNWlNUGVOVFhHSjN6bGNOUTJ0R0J2SDdjOFF3eXhPdU91L0QvY3g0V0puZWtYdDRBVnhPYXhpbEd2QUJtT2xwNkp1UE1GRlh5VzdGR28wZ2k0ZE5BUGZ1U1AvODFCa2tmWmNkakcxK21SZHZvMlpTaXZoVlBjZjFncVp0RUpkZ0RCVkNoSjBXRHZzN1B4RzZ6RlR0clFBaXdpL21hZ3psR2MyWFk4eWVEQ0FJSXFqU3BJcmxhdHJFMVhDWDlSRXNSQ21YN3N6V0dvZU00L3hTY256Z0dkRXcrQUZ0Z3B1N1lHRmFPZ2pFN0VJTDJYRHcybUtqSjd5ekd2dmZZYTFiTDBXOW84MUdvNkgyYzFSc0FZa0NlUHBJUWw2bk1RcHZ6QlhTNUlndFFFWXJMaktJOHVDU05KaG95VjZ6eHZwRm1xdi9VanlhZnhSaFhWSUd4ckgzclJhSjJ6cEVNZ3hyN3RqL2wzaTRpc3VxRW1HS296ZkFFbm1OUElNb2VPR2Zoc0UwdEY0NFU2dTFGTDd5Y3BnMHFCeU5nM3kxblkxWG9RMlFvVVFJL3VMbjVsc3VNTkhqanpYQ3JFZTF0dEdsM0sybGRVcWNjSHNHS3RMWW1aN3A3b2hYMVlRWHhGNkZrTkZuTkRXd0xMRGEvZTdkYWh3czBLRT0iLCJkYXRha2V5IjoiQVFFQkFIaHdtMFlhSVNKZVJ0Sm01bjFHNnVxZWVrWHVvWFhQZTVVRmNlOVJxOC8xNHdBQUFINHdmQVlKS29aSWh2Y05BUWNHb0c4d2JRSUJBREJvQmdrcWhraUc5dzBCQndFd0hnWUpZSVpJQVdVREJBRXVNQkVFREJZWTUrWDNMWkMzclBSME5nSUJFSUE3S0prVFJjU1VzY2o5MUovSzV6cStpQ05aWWpNdEJvZWhzRTRJMUpXVU1kWlRYbXZTWEVCNk1WdWJMMnZsb3hBNk1kUWNEbGdWUVV1cFYrMD0iLCJ2ZXJzaW9uIjoiMiIsInR5cGUiOiJEQVRBX0tFWSIsImV4cGlyYXRpb24iOjE2NjA3Mzc3NDJ9 -e none https://597647611698.dkr.ecr.us-east-1.amazonaws.com'
			}

		}

		stage('Push') {

			steps {
				//sh 'docker push yandjoumbi/yann-dj:0.0.1'
				sh 'docker tag yandjoumbi:latest 597647611698.dkr.ecr.us-east-1.amazonaws.com/yandjoumbi:latest'
				sh 'docker push 597647611698.dkr.ecr.us-east-1.amazonaws.com/yandjoumbi:latest'

			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
