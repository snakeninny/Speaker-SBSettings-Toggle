ARCHS = armv7
TARGET = iphone:latest:4.3

include theos/makefiles/common.mk

LIBRARY_NAME = Toggle
Toggle_FILES = Toggle.mm
Toggle_FRAMEWORKS = UIKit
Toggle_INSTALL_PATH = /var/mobile/Library/SBSettings/Toggles/Speaker
Toggle_LDFLAGS = -lAccessibility

include $(THEOS_MAKE_PATH)/library.mk

internal-stage::
	$(ECHO_NOTHING)cp -r var $(THEOS_STAGING_DIR)/$(ECHO_END)
