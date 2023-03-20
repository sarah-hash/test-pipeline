pipeline {
    agent any
    tools{
        maven 'maven_3_5_0'
    }
    stages{
        stage('Build Maven'){
            steps{
            sh "mvn clean package -DskipTests"

            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t sarahkhab/test-pipeline .'
                }
            }
        
    }
}