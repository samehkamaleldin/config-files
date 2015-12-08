#!/bin/sh
# ------------------------------------------------------------------------------
# FILE        | .bashrc
# AUTHOR      | sameh kamal
# DESCRIPTION | bash initialization file
# ------------------------------------------------------------------------------

printf "> Applying configuration files to current system\n"

printf "= .bashrc \n"
cp ./.bashrc  ~/.bashrc

printf "= .emacs \n"
cp ./.emacs   ~/.emacs

printf "= .xinitrc \n"
cp ./.xinitrc ~/.xinitrc

printf "> Done.\n"
