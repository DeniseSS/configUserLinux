#!/bin/bash
mkdir publico
mkdir adm
mkdir ven
mkdir sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd 1234)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd 1234)
passwd maria -e

useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd 1234)
passwd joao -e


useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd 1234)
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd 1234)
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd 1234)
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd 1234)
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd 1234)
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd 1234)
passwd rogerio -e

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

chown root:GRP_VEN /ven
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec

chown root:/publico

chmod 777 /publico
chmod 770 /ven
chmod 770 /adm
chmod 770 /sec

echo "Realizada as configuracoes"

