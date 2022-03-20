# hackintosh_dell_precision_m6400

## 电脑配置
| 规格   | 详细信息 |
| -------- | ---------- |
| 电脑型号 | Dell Precision M6400 |
| 处理器 | Intel DuO P8700 |
| 内存 | 8GB |
| 硬盘 | 三星860EVO * 2 |
| 显卡 | NVIDIA Quadro FX 2700M |
| 声卡 | Intel 82801I |
| 有线网卡 | BCM5761e |
| 无线网卡 | Intel 5100 |

## MacOS安装事宜
使用的是chameleon，安装10.13。主要是将安装盘中的exter的目录复制到系统盘中，**默认没有声音现在尝试在S**/L/E下加入AppleAlc.kext

安装时要注意修改用户名，否则会使用Apple ID做为用户名

在安装后，本身系统无法使用，需要手动将RT2870USBWirelessDriver.kext，RemoteVirtualInterface.kext两个文件从系统S/L/E目录下去掉

## 多系统分区
一直以来有一个误区，因为MacOS硬盘一定要UEFI，所以在MacOS系统硬盘上，安装了Win10+MacOS，但因为电脑本身不支持UEFI，所以又要使用clover进行UEFI模拟。但每次windows10升级时都有可能会破坏clover的UEFI。但MacOS其实是由Chameleon的wowpc.iso启动的，这是在linux下的一个方式。同时linux是主力系统要求的硬盘空间最大。

之前的方式是

Clover -> UEFI | -> Windows10
       -> GRUB | -> Archlinux

MacOS要启动时要手动切换使用另一个硬盘启动

现在计划修改为，整个机器使用MBR启动，由GRUB来启动三个系统分区方式如下
| 磁盘 | 分区 | 大小 |
| --- | --- | ---- |
| 硬盘1 MBR | Arch root | 250G |
| | Arch Swap | 16G |
| | window10 | 150G |
| | data1 | 剩余 |
| --- | --- | ---- |
| 硬盘2 GPT | EFI | 200M |
| | MacOS | 215G |
| | Arch home | 剩余 |

安装时的顺序是先安装 MacOS -> Windows10 -> Archlinux

这样完全不需要clover，减少功能
