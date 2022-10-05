## This procedure guides you how to use JTAG on AVA/AADP system

#### Prerequisites
* prepare the JTAG Debugger:
   * ARM-USB-OCD-H: https://www.mouser.com/new/olimex/olimex-arm-usb-ocd-jtag-debugger/ 
   * 909-ARM-JTAG-20-10: https://www.mouser.tw/ProductDetail/Olimex-Ltd/ARM-JTAG-20-10?qs=DUTFWDROaMbVQp3WoAdijQ%3D%3D

* Ubuntu 20.04 installed on your host system



#### Connection between JTAG debugger and the connector:

<img src="https://user-images.githubusercontent.com/48880474/194017397-78b1e935-e996-4237-b294-50a25608eace.png" width="400">

#### Here is the steps:

1. Download and execute [this script](https://hq0epm0west0us0storage.blob.core.windows.net/$web/public/COMHPC/AVA_AADP/JTAG/OpenOCD.sh) on your host. It helps to clone the repository of Ampere OpenOCD source and then be built up into the binary. 

2. Enter the following command to start the OpenOCD service

```
sudo ./src/openocd -s tcl -c "set CORELIST_S0 {32 36 52}" -f openocd.qs_1s_sil.cfg” in the “ampere-openocd
```

3. It is working correctly when you see the follwoing message: 
<img src="https://user-images.githubusercontent.com/48880474/194020595-c46a29c6-76cf-4f60-9917-a5e231661abb.png" width="500">

 
4. Quick test on OpenOCD to run telnet localhost 4444 and enter **targets** command to show some information like this:
 
<img src="https://user-images.githubusercontent.com/48880474/194022293-38da324f-f00e-4a18-b158-2db05000bead.png" width="500">
