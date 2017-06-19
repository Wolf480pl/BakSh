#! /bin/bash
echo "Hello"
mkdir bak
echo "Mkdir'd"
cp -r /etc/murmur.ini bak/
cp -r /etc/nginx bak/
cp -r /var/lib/acme bak/
cp -r /var/lib/znc bak/
cp -r /home bak/
cp -r /www bak/
cp -r /etc/ssh/sshd_config bak/
echo "Cp'd"
tar cpf bak-$(date -I).tar bak/
echo "Tar'd"
xz -z9 bak-$(date -I).tar
echo "Xz'd"
rm -r bak/
echo "Rm'd"
echo "Done!"