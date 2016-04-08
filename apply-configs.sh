#!/bin/sh
# ------------------------------------------------------------------------------
# FILE        | .bashrc
# AUTHOR      | sameh kamal
# DESCRIPTION | bash initialization file
# ------------------------------------------------------------------------------

printf "> Applying configuration files to current system\n"

printf "= .bashrc \n"
cp ./config/.bashrc  ~/.bashrc

printf "= applying emacs configuration ... \n"
cp ./config/.emacs   ~/.emacs
cp ./config/emacs-pkginit.el ~/.emacs.d/

printf "> Done.\n"
