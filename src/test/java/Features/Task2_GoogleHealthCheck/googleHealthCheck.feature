Feature: GoogleHealthCheck

    Test the binary file that has logic to do health check about www.google.com


    Scenario: Google Health Check
    * def result = karate.fork("filePath\\binaryfile.exe")
    * result.waitSync()
    * match result.getExitCode() == 0
    * def result = responseStatus != 200 ? {} : karate.call('classpath:Helpers/healthCheckSuccess.feature')
    * def result = responseStatus == 200 ? {} : karate.call('classpath:Helpers/healthCheckNoSuccess.feature')
    
    


