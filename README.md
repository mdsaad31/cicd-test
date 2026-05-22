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


Labsheet 9:
Step 4:  Create New Jenkins Job 
Go to Jenkins Dashboard 
Click New Item 
Enter name → JUnit-Test-Project 
Select → Freestyle Project 
Click OK
Step 5: Configure
Source Code Management:
Git (enable option)

Repository URL: copy Junit repository from your git Hub 
https://github.com/prachikawalkar5-ui/Junit-Testing.git

Branch Specifier: */main
Triggers: Enable trigger build remotely 
	        Copy given path into text field 

Build Steps:
Add Build Step "Invoke top-level maven targets" (Install maven directly & give name)
Maven Version: Maven 3
Goals:
Type command “ clean install”
mvn clean
mvn package } clean install / package
mvn install (m2 repository)

Advanced: give pom.xml path from given repository
Eg: calculator/pom.xml

Apply OK and save

Labsheet 10:
Step I: Jenkins with Java Project (Maven)
Open Jenkins
New Item : Give any Name 
Type of Project: Freestyle Project
OK

Step II: Configure
Source Code Management:
Git (enable option)

Repository URL: copy any repository from your git Hub( make sure its must be maven java project : search for pom.xml file)
 http://github.com/peachikawalla/5-ui/web-mini-project.git

Branch Specifier: */main
Build Steps:
Add Build Step "Invoke top-level maven targets" (Install maven directly & give name)
Maven Version: Maven 3
Goals:
Type command “ clean install package”
mvn clean
mvn package } clean install / package
mvn install (m2 repository)

Advanced: give pom.xml path from given repository
Eg: calculator/pom.xml

Apply OK and save

Build your project: 
 Build Success 
java -jar calculator-0.0.1-SNAPSHOT.jar

Step VII: jd-gui Install
Install jd-gui (Java Decompiler GUI). 
Open JAR file into jd-gui.
Step VIII: O/P Show
pom.xml
