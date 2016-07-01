#!/bin/sh

set -e
cd hwdb

wget -N http://www.linux-usb.org/usb.ids			\
	http://pci-ids.ucw.cz/v2.2/pci.ids			\
	http://standards.ieee.org/develop/regauth/oui/oui.txt	\
	http://standards.ieee.org/develop/regauth/iab/iab.txt4

./ids-update.pl
