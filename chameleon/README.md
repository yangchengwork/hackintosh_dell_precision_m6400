# 安装驱动
## 声卡

声音比较麻烦，要先删除/S/L/E下的AppleHDA.kext，再加入VoodooHDA.kext。但此时并不一定能出声音，还需要参考https://blog.csdn.net/fjh1997/article/details/85729073
## wifi

在使用找到AirportItlwm后，wifi可以使用，但蓝牙暂时无法使用

# 安装硬盘启动

尝试很多方式，还是使用变色龙的方式可以启动。参考http://eisneim.github.io/articles/2013-2-install-hackintosh-to-pc-efi.html可以写入

主要命令是
```
newfs_hfs -v EFI /dev/disk0s1
复制boot、Extra、Extensions、com.apple.Boot.plist、Themes、dsdt.aml,update.sh
fdisk -f boot0 -u -y /dev/rdisk0
dd if=boot1h of=/dev/rdisk0s1
```
