1.Giving SSH keys unique names

Particularly useful when you're administering a number of remote computers. You can name the SSH keys anything you want.

2.Putting long commands in text files 

In this way you can use your long command to log in and run on a remote PC: 

xyz@local:~$ ssh user@remotehost "'cat filename.txt'"

Do not use fancy quotations copied from some Web page. Use back-ticks instead of single apostrophes. 

3.Logging in and running a command in one step 

When powering off a remote computer for instance, you can log in and run the command in one step:

xyz@local:~$ ssh user@remotehost sudo poweroff

4.Launching a remote screen session 

This is how you do it:

host1 ~ $ ssh -t user@host2 /usr/bin/screen -xRR 

5.Viewing all fingerprints and randomart images in known_hosts 

View them all in your ~/.ssh/known_hosts file:

$ ssh-keygen -lvf ~/.ssh/known_hosts

6.Retrieving the fingerprint and randomart image of an SSH key

Here's how you do it:

$ ssh-keygen -lvf keyname 

7.Logging in with server-specific keys

Here's how you do it:

$ ssh -i .ssh/web-admin.pub user@webserver

8.Fast easy known_hosts key management

Here's how you can do it:

$ ssh-keygen -R remote-hostname 

9.Reading public key comments 

Here's how you can do it:

$ less .ssh/web-admin.pub

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1 

[snip] KCLAqwTv8rhp downtown lan webserver

10.Giving SSH keys informative comments 

Here's how you can do it:

$ ssh-keygen -t rsa -C "downtown lan webserver" -f .ssh/web-admin
