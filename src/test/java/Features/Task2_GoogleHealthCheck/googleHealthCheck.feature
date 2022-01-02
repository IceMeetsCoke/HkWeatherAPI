Feature: GoogleHealthCheck

    Test the binary file that has logic to do health check about www.google.com


    Scenario: Google Health Check
    * def result = karate.fork("filePath\\binary.exe")
    * result.waitSync()
    * match result.getExitCode() == 0
    * match result.getSysOut() contains "It works!!!"
