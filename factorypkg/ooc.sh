#!/bin/bash
./src/openocd -s tcl -c "set CORELIST_S0 {32 36 52}" -f openocd.qs_1s_sil.cfg

