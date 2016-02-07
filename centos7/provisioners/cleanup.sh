yum -y clean all
rm -f /tmp/*
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
