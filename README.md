# PEC_WIFI
A script based on `curl` that prevents auto logout from captive portal on college wifi network.
`Network Manager` dispatcher service can be used to automatically execute this script on connection with AP.

Place the file `cplogin` at `/usr/local/sbin` or any equivalent directory
Place a file named `10-cplogin.sh` in the directory `/etc/NetworkManager/disptacher.d` with the following content

    #!/bin/bash
    cplogin &
    exit
