#!/bin/bash

# Copyright 2014 Bashtastic Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

function linux_install {
    mv $(pwd)/../bashtastic ~/.bashtastic
    echo "##################################################" > ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Bashtastic's configuration for (~/.bashrc)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Author: @zlowram_" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "##################################################" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Set OS" >> ~/.bashrc
    echo "export os=linux" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Bashtastic's files" >> ~/.bashrc
    echo "source ~/.bashtastic/config/aliases" >> ~/.bashrc
    echo "source ~/.bashtastic/config/appearance" >> ~/.bashrc
}

function mac_install {
    mv $(pwd)/../bashtastic ~/.bashtastic
    echo "##################################################" > ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Bashtastic's configuration for (~/.bashrc)" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "# Author: @zlowram_" >> ~/.bashrc
    echo "#" >> ~/.bashrc
    echo "##################################################" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Set OS" >> ~/.bashrc
    echo "export os=macosx" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo "# Bashtastic's files" >> ~/.bashrc
    echo "source ~/.bashtastic/config/aliases" >> ~/.bashrc
    echo "source ~/.bashtastic/config/appearance" >> ~/.bashrc
    echo "source ~/.bashrc" > ~/.bash_profile
}

echo "    ____             __    __             __  _     "
echo "   / __ )____ ______/ /_  / /_____ ______/ /_(_)____"
echo "  / __  / __ \`/ ___/ __ \/ __/ __ \`/ ___/ __/ / ___/"
echo " / /_/ / /_/ (__  ) / / / /_/ /_/ (__  ) /_/ / /__  "
echo "/_____/\__,_/____/_/ /_/\__/\__,_/____/\__/_/\___/  "
echo ""
echo "      by zlowram (@zlowram_)"
echo ""
echo "== INSTALLATION ===================================="
echo ""
echo "  1. Install for GNU/Linux"
echo "  2. Install for MacOSX / FreeBSD"
echo ""
echo -n "  Option: "

read option 
echo ""

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
    echo "  A backup of your previous .bashrc file was created at ~/.bashrc.bak"
    echo ""
fi
if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile ~/.bash_profile.bak
    echo "  A backup of your previous .bash_profile file was created at ~/.bash_profile.bak"
    echo ""
fi

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
