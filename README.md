# QA Automation Exercise - Task 1 & Task 2

This is a Behavior-Driven test automation framework using Karate as the main technology, so that different kinds of tests could be managed in a clear, easy-understanding way..
Karate is a powerful testing tool which provides great features on not only API testing, but also UI testing/Performance testing/Cli testing/Backend testing. [Know more about Karate](https://github.com/karatelabs/karate)


## Getting Started

### Dependencies

* Operation System: Windows 10 (Below instructions are based on windows 10, mac user may need to take some adjustments accordingly)
* Download and install the latest (or recent) version of Git - [Git download link](https://git-scm.com/downloads) & [How to install Git](https://phoenixnap.com/kb/how-to-install-git-windows)
* Download and install the latest (or recent) version of Maven - [Maven download link](https://maven.apache.org/download.cgi) and add set system variables - [How to set Maven path](https://www.baeldung.com/install-maven-on-windows-linux-mac)
* Download and Install Java JDK 13 - [JDK download Link](https://www.oracle.com/java/technologies/javase/jdk13-archive-downloads.html) and set system variables - [How to set JDK path](https://java.com/en/download/help/path.html)
* Download and install Visual Studio Code as IDE - [VSC download link](https://code.visualstudio.com/download) & install below extensions in Marketplace
  * Cucumber (Gherkin) Full Support
  * Extension Pack for Java
  * Karate Runner
  * Open In Default Browser

### Import Project & Run test

* Open VSC IDE -> open terminal -> navigate to the directory where you want to put the repository -> run below command:
```
git clone https://github.com/IceMeetsCoke/QAExercise.git
```

* After project is successfully imported -> open terminal in VSC -> run below maven command:
```
mvn clean test
```


### Expected Results
* Open the test summary report to check the results. Test summary report is located at: .../target/karate-reports/karate-summary.html (Find the file in the project structure and right click the file and choose 'Open in default browser' to open it in the default browser)

* Task 1 is supposed to pass, the test includes assertion of the API response status code, dataTypes for each field, returned constant values, etc..
* Task 2 is supossed to fail because there is no sample binary file given in the assignment. However, the test code is there.
    * Firstly, I use a Karate feature to run the .exe file and saved the console output.
    * Secondly, I use the karate feature to validate the StatusResponseCode, if the response == 200, then the console output should contain "It works!!!"; if the response != 200. then the console output should be a number within the range(100 - 599)

