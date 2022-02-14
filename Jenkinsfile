node{
    def app
    stage('Clone Repo'){
        checkout scm
    }

    stage('Build image'){
        app = docker.build("jdngc/app")
    }

    stage('Push image'){
        docker.withRegistry('https://registry.hub.docker.com' 'git'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
