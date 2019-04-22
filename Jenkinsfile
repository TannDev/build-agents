#!/usr/bin/env groovy

pipeline {
    agent {
        dockerfile {
            args '-v /var/run/docker.sock:/var/run/docker.sock -v /etc/passwd:/etc/passwd -v /var/lib/jenkins:/var/lib/jenkins'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                script {
                    image = docker.build("jftanner/jenkins-agent")
                }
            }
        }

        stage('Publish') {
            when {
                branch 'master'
            }
            steps {
                echo 'Pushing...'
                script {
                    image.push('latest')
                }
            }
        }
    }
}
