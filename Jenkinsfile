echo 'Ledger build...'

node {

    echo 'Check csm...'
    checkout scm
    echo 'Check csm: done'

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

    echo 'Cleanup workspace'
    step([$class: 'WsCleanup'])
    echo 'Cleanup workspace: done'
}


echo 'Ledger build: done'
