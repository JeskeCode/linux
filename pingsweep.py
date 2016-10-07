  #!/usr/bin/python
  
  import os
  import sys
  import time
  
  os.system("clear")
  home_network = "172.16.23."
  mine = []
 
 for i in range(1, 256):
          z =  home_network + str(i)
          result = os.system("ping -c 1 "+ str(z))
          os.system("clear")
          if result == 0:
                  mine.append(z)
 
 for j in mine:
          print "host ", j ," is up"
