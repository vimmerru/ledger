echo 'Ledger build...'

node {
    stage('Build') {
        echo 'Build state...'
        
        echo 'Check csm...'
        checkout scm
        echo 'Check csm: done'

        echo 'Build state: done'
    }
    
    stage('Test') {
        echo 'Test state...'
        echo 'Test state: done'
    }
    
    stage('Deploy') {
        echo 'Deploy state'
        echo 'Deploy state'
    }

    echo 'Cleanup workspace'
    step([$class: 'WsCleanup'])
    echo 'Cleanup workspace: done'
}


echo 'Ledger build: done'
