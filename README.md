# cal_xml
Labsheet 12
1. download plugins in jenkins
docker 
docker pipeline
2. edit the enviroment variable
give the docker path there
C:\Program Files\Docker\Docker\resources\bin
3. Restart the both docker and jenkins
4.then create the docker give and run it using the jenkins
5.Dashboard → New Item → Enter name (example: Docker-Test) → Select Pipeline → Click OK
Add test pipeline
Scroll down to: Pipeline section
Under Definition choose:
Pipeline script
Paste this:
pipeline { agent any stages { stage('Check Docker') { steps { bat 'docker --version' } } } }
Click:
Save
Run it
Click:
Build Now
(left side menu)
View output
Click the build number:
#1
Then click:
Console Output
You should see:
Docker version ...
That means Jenkins sees Docke
Run a container from Jenkins
Replace your pipeline script with this:
pipeline { agent any stages { stage('Run Docker Container') { steps { bat 'docker run hello-world' } } } }
Click:
· Save ->Build Now ->Console Output
If you see Hello from Docker!, Jenkins can run containers.


Labsheet 9 and 10:
