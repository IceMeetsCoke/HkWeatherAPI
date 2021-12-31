# QA Automation Exercise - Task 1

This is a Behavior-Driven API test automation framework with the purpose of organising API tests efficiently and accurately.
Karate is being used as the main technology due to its efficiency and powerful features. [Know more about Karate](https://github.com/karatelabs/karate)


## Getting Started

### Dependencies

* Operation System: Windows 10 (Below instructions are based on windows 10, mac user may need to take some adjustments accordingly)
* Download and install the latest (or recent) version of Git - [Git download link](https://git-scm.com/downloads) & [How to install Git](https://phoenixnap.com/kb/how-to-install-git-windows)
* Download and install the latest (or recent) version of Maven - [Maven download link](https://maven.apache.org/download.cgi) and add set system variables - [How to set Maven path](https://www.baeldung.com/install-maven-on-windows-linux-mac)
* Download and Install Java JDK 13 - [JDK download Link](https://www.oracle.com/java/technologies/javase/jdk13-archive-downloads.html) and set system variables - [How to set JDK path](https://java.com/en/download/help/path.html)
* Download and install Visual Studio Code as IDE - [VCS download link](https://code.visualstudio.com/download) & install below extensions in Marketplace
  * Cucumber (Gherkin) Full Support
  * Extension Pack for Java
  * Karate Runner
  * Open In Default Browser

### Import Project & Run test

* Open VCS IDE -> open terminal -> navigate to the directory where you want to put the repository -> run below command:
```
git clone https://github.com/IceMeetsCoke/HkWeatherAPI.git
```

* After project is successfully imported -> open terminal -> navigate to your project folder -> run below maven command to run the test:
```
mvn clean test
```

* The test is supposed to pass, and the html format test summary report is located at: .../target/karate-reports/karate-summary.html (you can right click the file and choose 'Open in default browser' to open it in browser)


