pipeline {   
  agent any
  environment {     
    DOCKERHUB_CREDENTIALS= credentials('dockerhub_id')     
  } 
  stages{          
    stage('Build Docker Image') {         
      steps{
	sh "docker build -t jdngc/app:$BUILD_NUMBER ."
        echo "Build Image Completed"
      }           
    }
    stage('Login to Docker Hub') {
      steps{      
    	sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"               
    	echo 'Login Completed'
        sh "docker push jdngc/app/:$BUILD_NUMBER"
      }           
    }                
  }
} //pipeline
