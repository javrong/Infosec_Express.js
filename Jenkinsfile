pipeline {
  agent any
  stages {
    stage('clone repo') {
      steps {
	git 'https://github.com/javrong/BoilerpalteInfosec.git'
			  
        }
    }

    stage('Build Image') {
      steps{
        sshCommand remote: remote, command: 'cd /home/ubuntu/nodejs-template1 && docker build -t nodejs-template .'
      }
    }

    stage('Run Container') {
      steps {
        sshCommand remote: remote, command: 'docker run -p 700:8000 -d nodejs-template:latest'
      }
    }
  
  
  }
}
