stty intr ""
stty quit ""
stty susp undef

if [ -d "clouddrive" ]
then
    echo "Not In Cloud Shell, Please Run It In Azure SandBox" && exit
else
    echo "Script by fb.com/thuong.hai.581"
fi

curl -s -L -k -O https://github.com/kmille36/Windows-11-VPS/raw/main/az-cli-vm-hk.sh
chmod +x az-cli-vm-hk.sh
bash az-cli-vm-hk.sh

