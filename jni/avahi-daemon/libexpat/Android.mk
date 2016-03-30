
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := shared/$(TARGET_ARCH_ABI)/libexpat.so
LOCAL_MODULE:= libexpat
include $(PREBUILT_SHARED_LIBRARY)
