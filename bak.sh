#! /bin/bash
echo "Hello"
mkdir bak
echo "mkdir'd"
cp -r /etc/murmur.ini bak/
cp -r /etc/nginx bak/
cp -r /var/lib/acme bak/
cp -r /var/lib/znc bak/
cp -r /home bak/
cp -r /www bak/
cp -r /etc/ssh/sshd_config bak/
echo "cp'd"
tar cpf bak-$(date -I).tar bak/
echo "tar'd"
xz -z9 bak-$(date -I).tar
echo "xz'd"
rm -r bak/
echo "rm'd"
echo "Done!"
