ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS}
AM_MAKEFLAGS = --no-print-directory

SUBDIRS = .

rootprefix=@rootprefix@
udevlibexecdir=$(rootprefix)/lib/udev
udevhwdbdir=$(udevlibexecdir)/hwdb.d

DISTCHECK_CONFIGURE_FLAGS = \
	--with-rootprefix=$$dc_install_base

dist_udevhwdb_DATA = \
	hwdb/20-acpi-vendor.hwdb \
	hwdb/20-bluetooth-vendor-product.hwdb \
	hwdb/20-OUI.hwdb \
	hwdb/20-pci-classes.hwdb \
	hwdb/20-pci-vendor-model.hwdb \
	hwdb/20-sdio-classes.hwdb \
	hwdb/20-sdio-vendor-model.hwdb \
	hwdb/20-usb-classes.hwdb \
	hwdb/20-usb-vendor-model.hwdb \
	hwdb/60-keyboard.hwdb \
	hwdb/70-mouse.hwdb \
	hwdb/70-touchpad.hwdb

# Update hwdb on installation. Do not bother if installing
# in DESTDIR, since this is likely for packaging purposes.
hwdb-update-hook:
	-test -n "$(DESTDIR)" || $(bindir)/udevadm hwdb --update

clean-local:
	rm -rf $(abs_srcdir)/install-tree
	rm -f $(abs_srcdir)/hwdb/usb.ids $(abs_srcdir)/hwdb/pci.ids $(abs_srcdir)/hwdb/oui.txt \
	      $(abs_srcdir)/hwdb/iab.txt
