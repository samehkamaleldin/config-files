#!/bin/sh
# ------------------------------------------------------------------------------
# FILE        | startup.sh
# AUTHOR      | sameh kamal
# DESCRIPTION | Script that intended to run at system startup
# ------------------------------------------------------------------------------

# sync clock
sudo ntpd -qg
