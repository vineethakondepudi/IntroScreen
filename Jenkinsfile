pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/vineethakondepudi/IntroScreen.git'
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

