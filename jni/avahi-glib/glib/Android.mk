
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := libglib.so
LOCAL_MODULE:= glib
include $(PREBUILT_SHARED_LIBRARY)
