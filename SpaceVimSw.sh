#!/bin/bash
<<'COMMENT'

echo -e  "\033[31m 执行该脚本将会删除您之前安装的vim配置，如有需要，请妥善保存之前的配置文件。 \033[0m"

yes="yes"
read -p "确认继续安装吗 [Y/n]" input

#判断用户输入，是否继续执行安装
if [ "$input" = "Y" ];then
	echo "继续安装>>>"
else 
	echo "退出安装..."
	exit
fi
COMMENT
echo -e  "\033[32m 安装配置需要一定的时间，请耐心等待 \033[0m"
#删除旧的配置文件
sudo apt remove vim* -y
sudo rm -rf ~/.vim*

#安装依赖
sudo apt install git -y
sudo apt install curl -y
sudo apt install vim -y
sudo apt install clang-format -y
sudo snap install clangd --classic
npm install --global vscode-html-languageserver-bin
#安装Spacevim
curl -sLf https://spacevim.org/install.sh | bash

sudo chmod 777 ~/.vim/
sudo chmod 777 ~/.Vim*
sudo chmod 777 ~/.vim*
sudo chmod 777 ~/.SpaceVim*

curl -o init.toml  https://raw.githubusercontent.com/youngsw/SoftwareConfig/master/init.toml
sudo rm ~/.SpaceVim.d/init.toml 
sudo mv init.toml ~/.SpaceVim.d/  
echo -e  "\033[32m vim命令行下可以试用SPUpdate进行插件更新 \033[0m"
echo -e  "\033[32m SpaceVim的配置请参考 \033[0m"
firefox https://spacevim.org/cn/quick-start-guide/ #url


