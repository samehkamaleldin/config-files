#!/bin/sh

# ==============================================================================
# = project       :- dot-files
# = module        :- mac_init_pkgs.sh
# = author        :- sameh kamal
# = description   :- initialize mac necessary packages
# = preconditions :- runs on mac osx 10.11.x
# ==============================================================================




# create a temporary directory and enter it
mkdir -p /tmp/pkginit

# ------------------------------------------------------------------------------
#  Homebrew - MacOSX package manager
# ------------------------------------------------------------------------------
# run the install script from homebrew github rep
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install coreutils
brew cask install java python3

# ------------------------------------------------------------------------------
#  pip3 - the python package manager 
# ------------------------------------------------------------------------------
# download and install setuptools
curl -O https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
python3 ez_setup.py
# download and install pip
curl -O https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
python3 ./get-pip.py
