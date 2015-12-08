#!/bin/sh
# ------------------------------------------------------------------------------
# FILE        | .bashrc
# AUTHOR      | sameh kamal
# DESCRIPTION | bash initialization file
# ------------------------------------------------------------------------------

printf "> Applying configuration files to current system\n"

cp ./.bashrc ~/.bashrc
cp ./emacs   ~/.emacs
cp ./xinitrx ~/.xinitrc

printf "> Done.\n"
