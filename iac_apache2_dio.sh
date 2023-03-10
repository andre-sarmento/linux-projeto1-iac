#!/bim/bash

echo "Inicio do Script \n atualizando o servidor"

apt update
apt upgrade -y

echo "Instalando o Apache"

apt search apache2
apt install apache2 -y

echo "Instalando o unzip e wget"

apt install unzip -y
apt install wget -y

echo "Baixando aplicação e copiando os arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cp -R linux-site-dio-main/* /var/www/html

echo "Fim do script"
