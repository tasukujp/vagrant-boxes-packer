rpm -i http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm

yum -y install gcc
yum -y install kernel-devel-`uname -r`
yum -y install perl
yum -y install wget
yum -y install ntp

sed -i "s/[0-2].centos.pool.ntp.org/-4 ntp.nict.jp/g" /etc/ntp.conf
sed -i "/^server 3.centos.pool.ntp.org iburst/d" /etc/ntp.conf
ntpdate ntp.nict.jp
service ntpd start
chkconfig ntpd on

chkconfig iptables off
chkconfig ip6tables off
