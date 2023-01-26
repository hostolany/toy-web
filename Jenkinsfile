pipeline {
    agent any 
    stages {
        stage('Delete') { 
            steps {
            sh '''
            sudo kubectl delete -f web.yml
            '''
            }
        }
        stage('Image Build') { 
            steps {
            sh '''
            sudo docker build -t 192.168.0.91:5000/web:polar .
            '''
            }
        }
        stage('Image Push') { 
            steps {
            sh '''
            sudo docker push 192.168.0.91:5000/web:polar
            '''
            }
        }
        stage('Kuber Apply') { 
            steps {
            sh '''
            sudo kubectl apply -f web.yml
            '''    
            }
        }
    }
}
