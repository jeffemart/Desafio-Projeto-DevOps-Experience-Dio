#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -d /home/carlos -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_ADM
useradd maria -m -d /home/maria -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_ADM
useradd joao -m -d /home/joao -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_ADM

useradd debora -m -d /home/debora -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_VEN
useradd sebastiana -m -d /home/sebastiana -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_VEN
useradd roberto -m -d /home/roberto -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_VEN

useradd josefina -m -d /home/josefina -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_SEC
useradd amanda -m -d /home/amanda -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_SEC
useradd rogerio -m -d /home/rogerio -p $(openssl passwd -1 Senha123) -s /bin/bash -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."
