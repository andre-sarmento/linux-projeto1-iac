#!/bim/bash

echo "Inicio do Script \n criando diretorios"

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando so grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Ajustando donos dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissionando dos diretorios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando os usuarios do grupo ADM"

useradd carlos.silva -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria.candido -m -c "Maria Candido" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao.barros -m -c "Joao Barros" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Crinado usuarios do grupo Vendas"

useradd debora.oliveira -m -c "Debora de Oliveira" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana.santos -m -c "Sebastiana Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto.senna -m -c "Roberto Senna" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criando os usuarios de secretaria"

useradd josefina.pedroso -m -c "Josefina Pedroso" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanada.lima -m -c "Amanada Lima" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio.flausino -m -c "Rogerio Flausino" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Fim do script"