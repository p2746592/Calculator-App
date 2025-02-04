


pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                script {
                    git credentialsId: '921ae6ae-ac29-4099-afce-73130c1b7776', branch: 'main', url: 'https://github.com/p2746592/Calculator-App.git'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t calculator-app .'
                }
            }
        }

        stage('Run Tests in Docker') {
            steps {
                script {
                    sh 'docker run --rm calculator-app'
                }
            }
        }

        stage('Deploy Application') {
            steps {
                script {
                    sh 'docker run -d -p 5050:5050 --name calculator-container calculator-app'
                }
            }
        }
    }
}

