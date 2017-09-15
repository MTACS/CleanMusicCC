include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanMusicCC
NoDeviceInCC_FILES = Tweak.xm
NoDeviceInCC_PRIVATE_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
