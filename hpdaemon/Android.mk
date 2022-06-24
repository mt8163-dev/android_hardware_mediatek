LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
	external/tinyalsa/include \
	system/core/include/cutils

LOCAL_SHARED_LIBRARIES := liblog libcutils libtinyalsa

LOCAL_MODULE := hp-daemon

LOCAL_SRC_FILES := hp-daemon.c
LOCAL_INIT_RC   := hp-daemon.rc

LOCAL_MODULE_RELATIVE_PATH := hw

include $(BUILD_EXECUTABLE)
