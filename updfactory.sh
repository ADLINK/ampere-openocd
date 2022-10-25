#!/bin/bash
cp ./src/openocd factorypkg/src/openocd
cp ./tcl/board/ampere_qs_mq_1s.cfg factorypkg/tcl/board/ampere_qs_mq_1s.cfg
cp ./tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg factorypkg/tcl/interface/ftdi/olimex-arm-usb-ocd-h.cfg
cp ./tcl/target/ampere_qs_mq.cfg factorypkg/tcl/target/ampere_qs_mq.cfg
cp ./tcl/openocd.qs_1s_sil.cfg factorypkg/tcl/openocd.qs_1s_sil.cfg