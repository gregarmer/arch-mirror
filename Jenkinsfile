pipeline {
  agent { label 'docker' }

  stages {
    stage('Build') {
      steps {
        ansiColor('xterm') {
          sh "make build"
        }
      }
    }

    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        ansiColor('xterm') {
          echo 'Deploying because this is the master branch...'
          sh "make push"
        }
      }
    }
  }
}
