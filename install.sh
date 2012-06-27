#!/bin/bash

#####################################################
#
# Bashtastic's installation file
# 
# Author: Sergi Martínez-Bea a.k.a zlOwram (@zlowram)
#
#####################################################

function linux_install {
    echo "##################################################" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Bashtastic's configuration for (~/.bashrc)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Author: Sergi Martínez-Bea (@zlowram)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "##################################################" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Set OS" >> ~/.bashrc
    echo "export os=linux" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Bashtastic's files" >> ~/.bashrc
    echo "source ~/bashtastic/config/aliases" >> ~/.bashrc
    echo "source ~/bashtastic/config/appearance" >> ~/.bashrc
}

function mac_install {
    echo "##################################################" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Bashtastic's configuration for (~/.bashrc)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Author: Sergi Martínez-Bea (@zlowram)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "##################################################" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Set OS" >> ~/.bashrc
    echo "export os=macosx" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Bashtastic's files" >> ~/.bashrc
    echo "source ~/bashtastic/config/aliases" >> ~/.bashrc
    echo "source ~/bashtastic/config/appearance" >> ~/.bashrc

    echo "source ~/.bashrc" >> ~/.bash_profile
}

echo "    ____             __    __             __  _     "
echo "   / __ )____ ______/ /_  / /_____ ______/ /_(_)____"
echo "  / __  / __ \`/ ___/ __ \/ __/ __ \`/ ___/ __/ / ___/"
echo " / /_/ / /_/ (__  ) / / / /_/ /_/ (__  ) /_/ / /__  "
echo "/_____/\__,_/____/_/ /_/\__/\__,_/____/\__/_/\___/  "
echo ""
echo "      by Sergi Martínez-Bea aka zlOwram (@zlowram)"
                                                              
echo ""
echo "== INSTALLATION ===================================="
echo ""
echo "  1. Install for GNU/Linux"
echo "  2. Install for MacOSX / FreeBSD"
echo ""
echo -n "  Option: "

read option 
echo ""
case $option in
    1)
        linux_install 
        echo "  Bashtastic for GNU/Linux is now correctly installed!"
        ;;
    2)
        mac_install
        echo "  Bashtastic for MacOSX / FreeBSD is now correctly installed!"
        ;;
    *)
        echo "  [FAIL] This option does not exist!"
        ;;
esac 
