stty intr ""
stty quit ""
stty susp undef

if [ -d "clouddrive" ]
then
    echo "Script by fb.com/thuong.hai.581"
else
    echo "Not In Cloud Shell, Please Run It In Azure SandBox" && exit
fi

temp=$(mktemp -d)
curl -s -L -k https://github.com/kmille36/Windows-11-VPS/raw/main/az-cli-vm-hk.sh > $temp
chmod +x az-cli-vm-hk.sh
bash az-cli-vm-hk.sh

