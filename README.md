
Version 11.2
Published September 1st, 2022

https://www.linuxfromscratch.org/lfs/view/stable/index.html

         _,met$$$$$gg.           atweek@atweek
      ,g$$$$$$$$$$$$$$$P.        OS: Debian 11 bullseye
    ,g$$P""       """Y$$.".      Kernel: x86_64 Linux 5.10.0-18-amd64
   ,$$P'              `$$$.      Uptime: 17m
  ',$$P       ,ggs.     `$$b:    Packages: 1643
  `d$$'     ,$P"'   .    $$$     Shell: bash 5.1.4
   $$P      d$'     ,    $$P     Disk: 4.4G / 19G (25%)
   $$:      $$.   -    ,d$$'     CPU: Intel Core i7-8750H @ 6x 2.208GHz
   $$\;      Y$b._   _,d$P'      GPU: VMware SVGA II Adapter
   Y$$.    `.`"Y$$$$P"'          RAM: 841MiB / 9713MiB
   `$$b      "-.__              
    `Y$$                        
     `Y$$.                      
       `$$b.                    
         `Y$$b.                 
            `"Y$b._             
                `""""           



    /boot 200M
    /home 15G
    / other
    
    
    Number  Start  End  Size  File system  Name  Flags
                                                   
(parted) mkpart primary ext4 0 500MB
(parted) mkpart primary ext4 500MB 30G
(parted) mkpart primary ext4 30G -0M
(parted) name 1 boot                                                      
(parted) name 2 root                                                      
(parted) name 3 home                                                      
(parted) set 1 boot on 

Number  Start   End     Size    File system  Name     Flags
 1      17.4kB  500MB   500MB   ext4         primary
 2      500MB   30.0GB  29.5GB  ext4         primary
 3      30.0GB  53.7GB  23.7GB  ext4         primary
                                 
