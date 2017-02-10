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
            sh 'ls' 
            sh 'mkvirtualenv ledger'            
            sh 'workon ledger'
            sh 'python setup.py install' 
            echo 'Install deps: done'
        }
        
        stage('Test') {
            echo 'Testing...'
            //sh 'python setup.py pytest' 
            echo 'Testesting: done'
        }
    }

    stage('Cleanup') {
        echo 'Cleanup workspace...'
        step([$class: 'WsCleanup'])
        echo 'Cleanup workspace: done'
    }
}


echo 'Ledger build: done'
