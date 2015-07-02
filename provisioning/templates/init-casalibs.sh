## Source this file to add the casacore libs to LD_LIBRARY_PATH,
## and add the dir containing the casacore-python package to PYTHONPATH

export LD_LIBRARY_PATH={{casacore_install_prefix}}/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PYTHONPATH={{python_casacore_pathdir}}${PYTHONPATH:+:${PYTHONPATH}}