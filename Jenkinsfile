pipeline{
    agent any
    stages {
        stage('Setup python virtual environment')
        steps {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''
        }
        
        stage('Set Gunicorn Setup')
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                ''' 
            }

        stage('Setup NGINX')
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                ''' 
            }
    }
}