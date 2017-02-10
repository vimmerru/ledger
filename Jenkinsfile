echo 'Ledger build...'

docker.image('python:3.5.3').inside {

    stage('Checkout') {
        echo 'Check csm...'
        checkout scm
        echo 'Check csm: done'
    }

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


echo 'Ledger build: done'
