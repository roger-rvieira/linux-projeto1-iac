#!/bin/bash

echo  "Iniciando código"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd G_ADM
groupadd G_VEN
groupadd G_SEC

echo "Criando usuários..." 

useradd carlos -c "Carlos Caetano" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_ADM
useradd maria -c "Maria Rita" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_ADM
useradd joao -c "João Gilberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_ADM

useradd debora -c "Debora Farabella" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_VEN
useradd sebastiana -c "Sebastiana Freitas" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_VEN

useradd josefina -c "Josefina de Jesus" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_SEC
useradd amanda -c "Amanda Maia" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_SEC
useradd roger  -c "Roger Habbit" -m -s /bin/bash -p $(openssl passwd Senha123) -G G_SEC

echo "Permissionando diretórios..."

chown root:G_ADM /adm
chown root:G_VEN /ven
chown root:G_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim do código"

