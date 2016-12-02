# Jenkins with pipeline plugin
Dockerfile building jenkins with plugins for pipeline

Create docker-volume for persistence.
```
docker volume create --name jenkins_data
```
Build the image
```
docker build -t myjenkins .
```
Run jenkins
```
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_data:/var/jenkins_home myjenkins
```
