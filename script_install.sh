echo "[+] Formating 2nd Hard drive"
#parted /dev/sdb mklabel msdos
#parted /dev/sdb mkpart primary 1 -1
#mkfs.ext3  /dev/sdb1
sudo fdisk -u /dev/sdb <<EOF
n
p



w
EOF
mkfs.ext4 /dev/sdb1

echo "[+] Mounting 2nd Hard drive"
mkdir /mnt/yolodisk
echo `blkid /dev/sdb1 | awk '{print$2}' | sed -e 's/"//g'` /mnt/disk   ext3   noatime,nobarrier   0   0 >> /etc/fstab
mount /dev/sdb1 /mnt/yolodisk

echo "[+]Done"
mount

echo "[Size]"
df

cd /mnt/
pwd
ls -al

exit 0

echo "[+] Clone YoloCTF"
cd /mnt/yolodisk
git clone https://github.com/monpremierctf/mon_premier_ctf.git
cd mon_premier_ctf

echo "[+] Install YoloCTF tools"
./go_install_tools
if [ $? -eq 2 ]; then 
    sudo shutdown now
fi

echo "[+] Build YoloCTF"
./go_first_install_webserver_run -y -r 

echo "[+] Package YoloCTF"
./go_build_package