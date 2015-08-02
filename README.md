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
