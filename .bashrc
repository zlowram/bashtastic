###########################################
#
# Bash configuration file (~/.bashrc)
#
# Author: Sergi Martínez-Bea (@zlowram)
# 
###########################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash theme (Available themes in ~/bashtastic/themes/)
theme="zlowy"


source ~/bashtastic/themes/$theme
source ~/bashtastic/config/aliases
