casalibs-legacy
=============

An [Ansible](http://docs.ansible.com/) [role](https://galaxy.ansible.com/intro)
supplying a built-from-source installation of the deprecated legacy versions of
[casacore](https://code.google.com/p/casacore/), 
[casarest](https://svn.astron.nl/viewvc/casarest?view=revision&revision=7395),
and the old [pyrap](https://code.google.com/p/pyrap/)
Python bindings.

Work in progress, currently just targeting Ubuntu.

Note that if you're using a supported distribution (e.g. Ubuntu 14.04)
you might prefer to use the ready-made apt-packages available from 
https://launchpad.net/~radio-astro/+archive/ubuntu/main.


----------------

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. 

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
