Info importante: Es una vm reutilizada, por eso ya había volúmenes lógicos creados que tuve que borrar, además de tener problemas con el espacio de los nuevos.
  157  sudo fdisk /dev/sdc
  162  cat /proc/swaps
  167  sudo fdisk /dev/sdc
  168  free -h
  169  sudo mkswap /dev/sdc1
  170  sudo swapon /dev/sdc1
  171  free -h
  172  swapon -s
  173  sudo fdisk /dev/sdc
  174  sudo umount /dev/sdc1
  175  sudo umount /dev/sdc2
  176  sudo swapoff /dev/sdc1
  177  sudo fdisk /dev/sdc
  178  sudo fdisk -l
  179  sudo fdisk /dev/sdc
  180  sudo lsblk
  181  sudo fdisk /dev/sdc
  182  free -h
  183  sudo fdisk /dev/sdc
  184  sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
  185  sudo pvs
  186  sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
  187  sudo vgs
  188  sudo pvs
  189  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
  190  sudo pvs
  191  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
  192  sudo lvcreate -L 1G vgDevelopers -n lvTesters
  193  sudo pvs
  194  sudo lvcreate -L .9G vgDevelopers -n lvDevops
  195  sudo lvcreate -L 2G vgAdmin -n lvAdmin
  196  sudo vgdisplay vgDevelopers
  197  sudo lvcreate -L 999M vgDevelopers -n lvTesters
  198  sudo vgdisplay vgDevelopers
  199  sudo lvdisplay vgDevelopers
  200  sudo lvremove /dev/vgDevelopers/lvDevelopers
  201  sudo lvremove /dev/vgDevelopers/lvDevops
  202  sudo lvdisplay vgDevelopers
  203  sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
  204  sudo lvcreate -L 1G vgDevelopers -n lvTesters
  205  sudo lvcreate -L .9G vgDevelopers -n lvDevops
  206  sudo lvcreate -L 1G vgDevelopers -n lvTesters
  207  sudo pvdisplay
  208  sudo fdisk -l
  209  sudo umount /mnt/lvDevSrc1
  210  sudo umount /mnt/lvDevTester1
  211  sudo umount /mnt/lvDevDoc1
  212  sudo lvchange -an /dev/vgDev1/lvDevSrc1
  213  sudo lvchange -an /dev/vgDev1/lvDevTester1
  214  sudo lvchange -an /dev/vgDev1/lvDevDoc1
  215  sudo lvremove /dev/vgDev1/lvDevSrc1
  216  sudo lvremove /dev/vgDev1/lvDevTester1
  217  sudo lvremove /dev/vgDev1/lvDevDoc1
  218  sudo vgremove vgDev1
  219  sudo pvremove /dev/sdd5
  220  sudo pvremove /dev/sdd6
  221  sudo wipefs -a /dev/sdd
  222  sudo fdisk -l
  223  sudo lvs
  224  sudo lvcreate -L .9G vgDevelopers -n lvTesters
  225  sudo vgremove vgDevelopers
  226  sudo vgremove vgDevops
  227  sudo lvs
  228  sudo lvcreate -L .3G vgDevelopers -n lvDevelopers
  229  sudo lvcreate -L .3G vgDevelopers -n lvTesters
  230  sudo lvcreate -L .3G vgDevelopers -n lvDevops
  231  sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
  232  sudo lvcreate -L .3G vgDevelopers -n lvDevelopers
  233  sudo lvcreate -L .3G vgDevelopers -n lvTesters
  234  sudo lvcreate -L .3G vgDevelopers -n lvDevops
  235  sudo lvcreate -L 2G vgAdmin -n lvAdmin
  236  sudo lvcreate -L 1.9G vgAdmin -n lvAdmin
  237  sudo lvs
  238  sudo fdisk -l
  239  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
  240  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
  241  sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
  242  sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
  243  sudo lsblk -f
  244  df -h
  245  lsblk -f
