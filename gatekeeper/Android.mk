LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE := gatekeeper.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_CFLAGS := -Wall -Wextra -Werror -Wunused
LOCAL_SRC_FILES := module.cpp SoftGateKeeperDevice.cpp
LOCAL_SHARED_LIBRARIES := libbinder libgatekeeper liblog libhardware libbase libutils libcrypto
LOCAL_STATIC_LIBRARIES := libscrypt_static
LOCAL_C_INCLUDES := external/scrypt/lib/crypto
include $(BUILD_SHARED_LIBRARY)
