#! /bin/bash

# clear the screen
clear

# Check OS Type
os=$(uname -o)
echo -e '\E[32m'"Operating System Type :" $os

echo -en '\n'

# Check Kernal Version
kernal=$(uname -r)
echo -e 'Kernal Version :' $kernal


# Check CPU Virtual Core and Physical CPU Ratio
threads=$(lscpu | grep Core\(s\) | wc -l)
cores=$(lscpu | grep Thread\(s\) | wc -l)
socket=$(lscpu | grep Socket\(s\) | wc -l)
pcpu=$(lscpu | grep CPU\(s\) | wc -l)
vcpu=$((threads * cores * socket))

echo -e 'Ratio of Virtual CPU and Physical CPU' $vcpu ':' $pcpu


# Check CPU Clock Speed
cpuclock=$(lscpu | grep MHz)

echo -e 'CPU Clock Speed' $cpuclock

# Check CPU Architecture
architecture=$(uname -m)
echo -e '\E[32m'"Architecture :"  $architecture

echo -en '\n'

# Check Network bandwidth

echo -e 'Network Bandwidth:'
R1=`cat /sys/class/net/eth0/statistics/rx_bytes`
T2=`cat /sys/class/net/eth0/statistics/tx_bytes`
TKBPS=`expr $T2 / 1024`
RKBPS=`expr $R1 / 1024`
echo "tx eth0: $TKBPS kB/s rx eth0: $RKBPS kB/s"


# Check Firewall - Port and Protocol | Assuming Firewalld installed and used
echo -e 'Network Firewall'
firewall-cmd --list-port
firewall-cmd --list-protocol



# Check RAM and SWAP Usages
echo -e '\E[32m'"Ram Usages :"

free -h

echo -en '\n'

# Check Disk Status

echo -e 'Disk Status :'
df -aTh

