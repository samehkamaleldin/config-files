#!/bin/sh
# ------------------------------------------------------------------------------
# FILE        | .bashrc
# AUTHOR      | sameh kamal
# DESCRIPTION | bash initialization file
# ------------------------------------------------------------------------------

printf "> Applying configuration files to current system\n"

printf "= .bashrc \n"
cp ./config/.bashrc  ~/.bashrc

printf "= .emacs \n"
cp ./config/.emacs   ~/.emacs

printf "= .xinitrc \n"
cp ./config/.xinitrc ~/.xinitrc

printf "> Done.\n"
