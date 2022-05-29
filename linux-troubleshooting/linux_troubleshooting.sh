# basic troubleshoting guidelines 

# System info 
uname -a 

# list services
systemctl --type=service

# firewall settings
echo list iptable rules ...
iptables -L -v 
iptables -F && iptables -A 

echo firewall cmd ... 
firewall-cmd --list-all 
firewall-cmd enable

echo result as variable ... 
`whoami`

# rsync && scp
rsync dest@1.1.1.1:/root/myfile.txt .
scp TBD 

#### troubleshooting
lsof -u "june.chung" -p 23153 -i tcp:22
# killing process 
kill PID && kill -9 PID # -9 is force quit when no response 
# proc 
echo under /proc/PID/... you can see a lot of information about the process such as ... 
cat /proc/PID/cmdline & cmd & environ & exe 
# logs ... 
journalctl -u service-name
# disk space 
lsblk && df -H 
echo to mount permanently ... 
vi /etc/fstab
# mount EBS volume 
echo to make file system (initialize )...
mkfs /dev/disks_actual_name_in_lsblk
mount /dev/disks_actual_name /directory_in_linux
# increase EBS volume 
df -H && growpart # to increase the actual files system to consume all left volume 


### user and groups 
cat /etc/passwd # see all users
cat /etc/group # see all groups
useradd -g group1 user1 # add user1 under group1

### symlink and hardlinks... 
echo TBD...
 
# redirect output 
- command >file 2&>1 , command &> file 



### to be documented down (list)
# - bash scripting
# - service troubleshooting
# - travis
# - linux troubleshooting
# - ebs volume attach (df, du)
# - lsof / proc (which environment has the service started?)
# - scp
# - input output 1&2 - vim tricks
# - firewallcmd / iptables
# - how to cretae services?
# - init / serviced / systemctl
# - inode
# - cron job coding
# - easy ones
# - python tricks
