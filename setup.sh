#!/bin/sh
#
# connect the JTAG and power on the target platform before start OpenOCD
#
sudo apt install -y libtool libusb-dev libusb-1.0-0-dev
git clone https://github.com/ADLINK/ampere-openocd.git
if [ "eval $(ssh -T git@github.com-adlink | grep -q "authenticated")" != "" ] ; then
  echo "==========================================================================="
  echo "replace HTTPS access with SSH access if authenticated"
  echo "==========================================================================="
  git remote set-url origin git@github.com-adlink:ADLINK/ampere-openocd.git
fi
git checkout adlink
git submodule update --init --recursive
cd ampere-openocd
./bootstrap
./configure --prefix=/home/pxing/ampere-openocd/install_IM/ --enable-ftdi --enable-ft2232_ftd2xx #--enable-armjtagew 
make; make install
#
# {32} for 32 cores CPU
# {36} for 80 cores CPU
#
sudo ./src/openocd -s tcl -c "set CORELIST_S0 {36}" -f openocd.qs_1s_sil.cfg
