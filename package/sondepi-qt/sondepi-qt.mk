################################################################################
#
# sondepi-qt
#
################################################################################

SONDEPI_QT_VERSION = c5b54e45b0c56bdbaddc0a614b806e7f0e5d1a37
SONDEPI_QT_SITE = git@github.com:danijelt/sondepi-qt.git
SONDEPI_QT_SITE_METHOD = git

SONDEPI_QT_DEPENDENCIES = qt5base qt5location qt5quickcontrols2 qt5virtualkeyboard
SONDEPI_QT_LICENSE = GPL-3.0
SONDEPI_QT_LICENSE_FILES = doc/gpl.html

define SONDEPI_QT_CONFIGURE_CMDS
	(cd $(@D); $(TARGET_MAKE_ENV) $(QT5_QMAKE))
endef

define SONDEPI_QT_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define SONDEPI_QT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/sondepi-qt $(TARGET_DIR)/usr/bin/sondepi
endef

$(eval $(generic-package))
