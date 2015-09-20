#!/bin/bash

echo "Introduce el nombre del nuevo usuario:"
read nombre

# Creacion de usuario
useradd $nombre

# Creacion de grupo
groupadd $nombre

# Creacion directorio
mkdir /home/$nombre

maildirmake /home/$nombre/Maildir

chown $nombre:$nombre -R /home/$nombre

passwd $nombre

echo "Usuario creado."
echo "Nombre de usuario:" $nombre
echo "Grupo:" $nombre
echo "Directorio: /home/"$nombre
