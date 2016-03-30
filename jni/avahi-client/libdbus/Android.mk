
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := libdbus.so
LOCAL_MODULE:= dbus
include $(PREBUILT_SHARED_LIBRARY)
