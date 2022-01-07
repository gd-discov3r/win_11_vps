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
cd $temp
curl -s -L -k -O https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/az-create.sh
chmod +x az-cli-vm-hk.sh
bash az-cli-vm-hk.sh

