################################################################################
#
# radiosonde
#
################################################################################

RADIOSONDE_VERSION = 10fff6b0cb64537a3925f0b010771e84309d7ba1
RADIOSONDE_SITE = https://github.com/rs1729/RS.git
RADIOSONDE_SITE_METHOD = git

define RADIOSONDE_BUILD_CMDS
	BIN=rs41/rs41ptu $(TARGET_MAKE_ENV) CROSS_COMPILE=$(TARGET_CROSS) $(MAKE) -C $(@D)
	BIN=m10/m10ptu $(TARGET_MAKE_ENV) CROSS_COMPILE=$(TARGET_CROSS) $(MAKE) -C $(@D)
endef

define RADIOSONDE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rs41/rs41ptu $(TARGET_DIR)/usr/bin/rs41
	$(INSTALL) -D -m 0755 $(@D)/m10/m10ptu $(TARGET_DIR)/usr/bin/m10
endef

$(eval $(generic-package))
