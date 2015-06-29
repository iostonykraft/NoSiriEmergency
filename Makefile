export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang
export SDKVERSION = 8.0
export THEOS_DEVICE_IP=192.168.0.2

include theos/makefiles/common.mk

TWEAK_NAME = NoSiriEmergency
NoSiriEmergency_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
