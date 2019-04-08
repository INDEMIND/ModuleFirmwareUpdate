固件烧录手册
==== 
## 运行环境
    1.linux 系统 x86_64 平台

## 一、固件更新方法(以ubuntu 18.04 为例)
1.将模组插入到PC usb3.0接口
2.打开终端
3.输入 “sudo ./firmburn 固件名称” 烧录固件 
    如：$sudo ./firmburn Firmware_v1.1.bin
4.等待终端输出 “download successful!” 代表下载成功, 下载失败请参考 “下载失败情况及处理办法” 进行操作
5.重新插拔设备，即可。


## 下载失败情况及处理办法
1.出现 “Please use "sudo ./firmburn  binfile" to burn bin file !!!”
    下载命令错误，请根据"固件更新方法"步骤3使用固件更新命令

2.出现 “Please re-plug the device !!!!”
    需要重新插拔设备，再次按照“固件更新方法”中的步骤3-4执行，若再次出现此错误提示，重新插拔设备后输入烧录命令再次烧录即可

3.出现 “xxx file is not correct!!!”
    说明固件非indemind提供的固件，或者下载过程中出错，导致文件不完整, 需要重新下载固件(bin文件)

## 更新日志：
    固件 Firmware_v1.1_5ms.bin :
        曝光时间5ms 分辨率2x640x400(25fps 50fps 100fps 200fps)  2x1280x800(25fps 50fps 100fps)
