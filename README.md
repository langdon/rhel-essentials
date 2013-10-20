rhel-essentials
===============

All the stuff you need on rhel (some straight rpms but also repos rpms)
Notes
===
hmmm.. rpmdevtools and bash-completion conflict

Steps
====
1. setup ssh agent forwarding
2. add to .ssh/config : Host *; ForwardAgent yes
3. check /etc/ssh/sshd_config has AllowAgentForwarding yes
4. check /etc/ssh/ssh_config is not explicitly overriding ForwardAgent
5. copy id_rsa to local, add to key store using ssh-add
6. install git
7. git clone git@github.com:whitel/rhel-essentials.git
8. install tmux
9. install bash-completion
10. 


RPM Notes
====
* wget http://pkgs.repoforge.org/tmux/tmux-1.6-1.el6.rf.x86_64.rpm
* wget http://pkgs.repoforge.org/bash-completion/bash-completion-20060301-1.el6.rf.noarch.rpm
