# Create dir

mkdir publico
mkdir adm
mkdir ven
mkdir sec

# Create user groups

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

# Create users

useradd carlos
useradd maria
useradd joao
useradd debora
useradd sebastiana
useradd roberto
useradd josefina
useradd amanda
useradd rogerio

# Add user to a group

usermode -a -G grp_adm carlos
usermode -a -G grp_adm maria
usermode -a -G grp_adm joao
usermode -a -G grp_ven debora
usermode -a -G grp_ven sebastiana
usermode -a -G grp_ven roberto
usermode -a -G grp_sec josefina
usermode -a -G grp_sec amanda
usermode -a -G grp_sec rogerio

# Change folder's permissions

chmod 770 grp_adm
chmod 770 grp_ven
chmod 770 grp_sec
chmod 777 publico

# Change folder's owner

chown root adm
chown root ven
chown root sec
chown root publico

chown :grp_adm adm
chown :grp_ven ven
chown :grp_sec sec
