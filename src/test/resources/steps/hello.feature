@hello 
Feature: hello (Function to validate the environment.) 

	Scenario Outline: Function to validate the environment.
    Given I check that author '<author>' is not empty.
    
    Given I check mandatory fields:
        |author|<author>|
        |city|<city>|
        |element|<element>|
        
    Then I wait '1' seconds.    
    
    Given 'DEMO_HOME' is opened.
    Then The DEMO portal is displayed.
		
    Given me a hello, please. Best Regards '<author>'.
    Given me a hello, please. Best Regards '<author>':
		    |key|expected|actual|
    Given me a hello, please. Best Regards '<author>':
		    |key|expected|actual|
			  |zip|35000|<zip>|
			  |city|Rennes|<city>|
			  
    Given me a bye, please. Best Regards '<author>':
    Given me a bye, please. Best Regards '<author>':
			  |zip|<zip>|
			  |city|<city>|
			  
    Given me a cat, please. Best Regards '<author>'.
		
    When I update text 'DEMO_HOME-input-text-field' with '<author>'
    And I check text 'DEMO_HOME-input-text-field' with '<author>'
    When I update select list 'DEMO_HOME-input-select-field' with '<city>'
    Then I update date 'DEMO_HOME-input-text-field' with a 'future' date '<date>'
    
    And I update radio list 'DEMO_HOME-rate' with 'day'
    Then I update checkbox 'DEMO_HOME-agree' with 'yes':
        |yes|true|
			  |no|false|
    
    When I click on 'DEMO_HOME-submit'
		
    Given me a error if '<city>' is Paris.
    
    When I click by js on 'DEMO_HOME-smilejs'
    And I check message 'OK' on alert
    
    When I click on 'DEMO_HOME<element>'
    And I check message 'OK' on alert
		
    Given test for 'Annulée'.
    
  Examples:
    #DATA
    |id|author|zip|city|element|date|
    #END