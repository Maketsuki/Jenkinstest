pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Client Dependencies') {
            steps {
                sh 'cd client && npm install'
            }
        }

        stage('Install Server Dependencies') {
            steps {
                sh 'cd server && npm install'
            }
        }

        stage('Build Client') {
            steps {
                sh 'cd client && npm run build'
            }
        }

        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}