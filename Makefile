export ARCHS = arm64 arm64e
export TARGET = iphone:clang:11.2:11.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NudeDock

NudeDock_FILES = Tweak.x
NudeDocs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"