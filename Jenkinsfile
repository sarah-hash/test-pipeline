pipeline {
    agent any
      stages {
        stage ('Checkout git') {
            steps {
                git branch: 'main' ,
               url:'https://github.com/sarah-hash/test-pipeline.git'
            }
        }
        stage ('Maven Clean') {
            steps {
                sh 'mvn clean'
            }
        }

        stage ('Maven Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage ('Maven Package') {
            steps {
                sh 'mvn package'
            }
        }
             stage ('Maven SonarQube') {
            steps { 
                withSonarQubeEnv('sq1') {
                sh 'mvn sonar:sonar -Dsonar.login=b8f81399db39910c4a8481c9ba93188f7a5386cb'
                                         }
                     }

       
    }
              stage ('Build image') {
            steps {
                sh 'docker build -t sarahkhh/test-pipeline . '
            }
        }
      }}
