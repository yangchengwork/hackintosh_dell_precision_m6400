# hackintosh_dell_precision_m6400

## 电脑配置
| 规格   | 详细信息 |
| -------- | ---------- |
| 电脑型号 | Dell Precision M6400 |
| 处理器 | Intel DuO P8700 |
| 内存 | 8GB |
| 硬盘 | 三星860EVO |
| 显卡 | NVIDIA Quadro FX 2700M |
| 有线网卡 | BCM5761e |
| 无线网卡 | Intel 5100 |

主要是将安装盘中的exter的目录复制到系统盘中根目录下，这时才可以继续安装

安装时要注意修改用户名，否则会使用Apple ID做为用户名

在安装后，本身系统无法使用，需要手动将RT2870USBWirelessDriver.kext，RemoteVirtualInterface.kext两个文件从系统S/L/E目录下去掉
