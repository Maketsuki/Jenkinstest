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
                bat 'cd client && npm install'
            }
        }

        stage('Install Server Dependencies') {
            steps {
                bat 'cd server && npm install'
            }
        }

        stage('Build Client') {
            steps {
                bat 'cd client && npm run build'
            }
        }

        stage('Deploy') {
            steps {
                bat '.\\deploy.bat' // Assuming you have a deploy.bat for Windows
            }
        }
    }
}