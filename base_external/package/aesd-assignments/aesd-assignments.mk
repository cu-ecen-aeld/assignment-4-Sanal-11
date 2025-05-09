
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################
$(info ==== aesd-assignments.mk IS PARSED ====)

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 91c9bd31993f87eab266846655f19210784d0e33
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
# AESD_ASSIGNMENTS_SITE = https://github.com/cu-ecen-aeld/assignments-3-and-later-Sanal-11.git
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Sanal-11.git
AESD_ASSIGNMENTS_SITE_METHOD = git
# AESD_ASSIGNMENTS_SITE = /home/win/workspace/coursera/assignment-1-Sanal-11
# AESD_ASSIGNMENTS_SITE_METHOD = local
AESD_ASSIGNMENTS_GIT_SUBMODULES = NO

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/bin/writer
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/bin/finder-test.sh
endef

#$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/bin/finder-test.sh
#$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/bin/writer
#$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
#$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin

$(eval $(generic-package))
