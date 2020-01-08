#!/bin/bash

# Copyright 2014 Bashtastic Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

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

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
    echo "  A backup of your previous .bashrc file was created at ~/.bashrc.bak"
    echo ""
fi

mv bashtastic ~/.bashtastic
echo "# Enable Bashtastic" >> ~/.bashrc
echo "source ~/.bashtastic/config/bashtastic" >> ~/.bashrc

if [[ "$(uname -s)" == "Darwin" ]]; then
    if [ -f ~/.bash_profile ]; then
        cp ~/.bash_profile ~/.bash_profile.bak
        echo "  A backup of your previous .bash_profile file was created at ~/.bash_profile.bak"
        echo ""
    fi
    echo "source ~/.bashrc" >> ~/.bash_profile
fi

echo "  Bashtastic is now correctly installed!"
