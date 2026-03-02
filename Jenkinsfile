pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo.git'
            }
        }
        stage('Build APK') {
            steps {
                sh './gradlew assembleDebug'
            }
        }
    }
    post {
        success {
            archiveArtifacts artifacts: 'app/build/outputs/**/*.apk'
        }
    }
}
