yum -y install gcc gcc-c++ perl kernel-devel-`uname -r`
yum -y install epel-release wget bzip2 #ntp

#sed -i "s/[0-2].centos.pool.ntp.org/-4 ntp.nict.jp/g" /etc/ntp.conf
#sed -i "/^server 3.centos.pool.ntp.org iburst/d" /etc/ntp.conf
#ntpdate ntp.nict.jp
#chkconfig ntpd on
#chkconfig iptables off
#chkconfig ip6tables off
