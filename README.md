# firefox-security-and-privacy-policies
The purpose is to create a template for everyday browsing and security combining usable DISA STIGs with Common-sense privacy and security practices. 
Think LibreWolf but without another group in the middle. The difference being you use the official Mozilla Firefox browser, which if you are a System Admin 
your bosses will like and no weird changes under the hood making firefox not usable as a "Daily Driver". This is also a good resource for Linux Cyber and System Admins looking for templates to use. 
I hope you find this as a good starting point.
#
Built and tested for Ubuntu (Linux Mint) not for RHEL or Flatpak, at least out of the box. Firefox is found in /usr/lib on 
Ubuntu but /usr/lib64 on RHEL systems. Also RHEL systems put files for PKI and CAC/Smart readers in different places.
#
# Q: Why both a policy and a config file? 
A: I have found that a policy file can do stuff a config file can not do 
  and stuff a config file can do but a policy file can not. I wish it was as simple as one or the other.
#
# Q: I made changes to the policy file but I do not see changes being made.
A: Make sure the policy file is named, permissioned, and placed in the right place on your system. 
   Use the URL of about:support to get to the support window and see if there is any policy errors
   meaning most likely a json format error.
#
# Q: How do I get started?
A: Run the configure-firefox.sh script to install the new policies and config file in the right position or do it manually. Nothing too crazy here.
