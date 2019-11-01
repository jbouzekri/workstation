# My Workstation

My ansible provisionning for my Ubuntu Gnome computer

## Usage

Install ansible in your host machine : [How to install ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) :

```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
$ sudo apt install aptitude
```

Then provision the computer :

```
$ cd ~/workspace
$ git clone git://github.com/jbouzekri/workstation --recursive
$ cd workstation
$ ansible-playbook -i hosts provision.yml -u jobou --ask-become-pass
```

**WARNING : provision.yml enables the role gnome which change the theme and setup a few settings as I prefer. Disable it with `--skip-tags "gnome"` if you don't want this.**

## Testing

I have a Virtualbox with a fresh Ubuntu 15.04 install and the user jobou in the sudoers group.

I have forwared the port 3022 from my host machine to the port 22 of the Virtualbox.

    ansible-playbook -i hosts customvbox.yml -u jobou --ask-pass --ask-sudo-pass
