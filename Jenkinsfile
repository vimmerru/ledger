echo 'Ledger build...'

node {

    stage('Checkout csm') {
        echo 'Checkout csm...'
        checkout scm
        echo 'Checkout csm: done'
    }

    docker.image('python:3.5.3').inside {

        stage('Install deps') {
            echo 'Install deps...'
            sh 'python setup.py install' 
            echo 'Install deps: done'
        }
        
        stage('Test') {
            echo 'Testing...'
            sh 'python setup.py pytest' 
            echo 'Testesting: done'
        }
    }

    // Clean up workspace
    step([$class: 'WsCleanup'])
}


echo 'Ledger build: done'
