

if [ -d "clouddrive" ]
then
    echo "Script by fb.com/thuong.hai.581"
else
    echo "Not In Cloud Shell, Please Run It In Azure SandBox" && exit
fi

temp=$(mktemp -d)
cd $temp
curl -s -L -k https://raw.githubusercontent.com/kmille36/thuonghai/master/katacoda/AZ/az-create.sh
chmod +x az-create.sh
bash $temp/az-create.sh

