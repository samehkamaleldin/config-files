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
