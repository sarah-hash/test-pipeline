pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
            sh "mvn clean package -DskipTests"

            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'sudo docker build -t sarahkhab/test-pipeline .'
                }
            }
        
    }
}
}