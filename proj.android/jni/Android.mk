LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := santa_shared

LOCAL_MODULE_FILENAME := libsanta

LOCAL_SRC_FILES := snowsanta/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                                   ../../Classes/MessageBox.cpp \
                                   ../../Classes/FireLayer.cpp \
                   ../../Classes/SantaMenu.cpp \
                                   ../../Classes/UpgradeItem.cpp \
                                   ../../Classes/ItemShop.cpp \
                                   ../../Classes/StageLevel.cpp \
                                   ../../Classes/FireBullet.cpp \
                                   ../../Classes/FireGun.cpp \
                                   ../../Classes/SnowSanta.cpp \
                                   ../../Classes/FireSky.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
