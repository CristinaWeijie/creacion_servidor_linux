#!/bin/sh
echo "Script de creacion de controlador de dominio Linux"

# Primera parte: Creación del Creación

mdadm --create --verbose /dev/md0 --level=5 --raid-devices=3 /dev/sdb /dev/sdc /dev/sdd
# Otra forma:
mdadm --create --verbose /dev/md0 --level=5 --raid-devices=3 /dev/sd{b..d}
