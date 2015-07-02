#casalibs-src

An [Ansible](http://docs.ansible.com/) [role](https://galaxy.ansible.com/intro)
supplying a built-from-source installation of 
[casacore](https://github.com/casacore/casacore), 
[casarest](https://svn.astron.nl/viewvc/casarest?view=revision&revision=7395),
and the [python-casacore](https://github.com/casacore/python-casacore)
Python bindings.

Work in progress, currently just targeting Ubuntu.

Note that if you're using a supported distribution (e.g. Ubuntu 14.04)
you might prefer to use the ready-made apt-packages available from 
https://launchpad.net/~radio-astro/+archive/ubuntu/main.

##Roadmap
* Build up the sub-tasks 
    * ~~casa_measures~~
    * ~~casacore~~
    * ~~casarest~~
    * ~~python-casacore~~
    * Bundle a shell-path exporting init-script.
* Package as a role