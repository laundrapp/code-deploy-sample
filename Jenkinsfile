pipeline {
  // SETUP
  tools {
    maven "mvn-3.5.3"
    gradle "gradle-4.1"
    nodejs "node-9.9.0"
  }
  options {
    buildDiscarder(logRotator(numToKeepStr:'20'))
    timestamps()
    timeout(time: 90, unit: 'MINUTES')
  }
  agent {
    node {
      label "android"
    }
  }

  // STAGES
  stages {
    stage("Build") {
      steps {
        node("android") {
          sh "sleep 2"
        }
      }
    }
    stage("Test") {
      steps {
        node("android") {
          sh "sleep 2"
        }
      }
    }
  }

  // POST
  post {
    always {
      // clean up our workspace
      echo "Done."
    }
    success {
      // create a promote url
      script {
        currentBuild.description = "Good to push? Click <strong><a href='${JENKINS_URL}job/release-test/build?delay=0sec&commitId=${env.GIT_COMMIT}'>here</a></strong>."
      }
    }
    failure {
      // notify commiter
      mail to: "${env.GIT_COMMITTER_EMAIL}", subject: "Failed Pipeline: ${currentBuild.fullDisplayName}", body: "Something is wrong with ${env.BUILD_URL}"
    }
  }
}
