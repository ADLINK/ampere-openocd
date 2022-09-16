sudo ./src/openocd -s tcl -c "set CORELIST_S0 {32 36 52}" -f openocd.qs_1s_sil.cfg
# sudo ./src/openocd -s tcl -f openocd.qs_1s_sil.cfg
# sudo ./src/openocd -s tcl -c "set COREMASK_S0_LO {0xFFFFFFFFFFFFFFFF}" -c "set COREMASK_S0_HI {0xFFFF}" -f openocd.qs_1s_sil.cfg
# bash telnet localhost 4444
