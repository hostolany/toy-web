pipeline {
    agent any 
    stages {
        stage('Image Build') { 
            steps {
            sh '''
            sudo docker build -t 192.168.0.91:5000/web .
            '''
            }
        }
        stage('Image Push') { 
            steps {
            sh '''
            sudo docker push 192.168.0.91:5000/web
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
