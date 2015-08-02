My Workstation
==============

My ansible provisionning for my Ubuntu Gnome computer

Usage
-----

Install ansible in your host machine : [How to install ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu).

    cd ~/workspace
    git clone git://github.com/jbouzekri/workstation --recursive
    cd workstation
    ansible-playbook -i hosts provision.yml -u jobou --ask-sudo-pass

Testing
-------

I have a Virtualbox with a fresh Ubuntu 15.04 install and the user jobou in the sudoers group.

I have forwared the port 3022 from my host machine to the port 22 of the Virtualbox.

    ansible-playbook -i hosts customvbox.yml -u jobou --ask-pass --ask-sudo-pass
