#!/usr/bin/env groovy

pipeline {
    agent {
        dockerfile {
            additionalBuildArgs '--build-arg UID=$(id -u) --build-arg GID=$(id -g)'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                script {
                    image = docker.build('jftanner/jenkins-agent', '--build-arg UID=$(id -u) --build-arg GID=$(id -g)')
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
