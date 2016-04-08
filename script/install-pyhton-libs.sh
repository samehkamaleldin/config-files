#!/bin/sh

# ==============================================================================
# = project       :- dot-files
# = module        :- install-python-libs.sh
# = author        :- sameh kamal
# = description   :- install python dev & scince libraries
# = preconditions :- needs python3, easy_install and pip3 installed
# ==============================================================================

pip3 install numpy
pip3 install scipy
pip3 install sklearn
pip3 install https://storage.googleapis.com/tensorflow/mac/tensorflow-0.7.1-cp35-none-any.whl
pip3 install rope
pip3 install jedi
# flake8 for code checks
pip3 install flake8
# importmagic for automatic imports
pip3 install importmagic
# and autopep8 for automatic PEP8 formatting
pip3 install autopep8
# and yapf for code formatting
pip3 install yapf
