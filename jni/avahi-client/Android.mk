LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:=libavahi-client

LOCAL_SRC_FILES := \
    client.c \
    entrygroup.c \
    browser.c \
    resolver.c \
    xdg-config.c \
    check-nss.c \
    ../avahi-common/dbus.c \
    ../avahi-common/dbus-watch-glue.c

LOCAL_SHARED_LIBRARIES:=\
    libdbus \
    libavahi-common 

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H \
    -DDBUS_VERSION_MAJOR=1 \
    -DDBUS_VERSION_MINOR=6 \
    -DDBUS_VERSION_MICRO=18 \
    -DDBUS_API_SUBJECT_TO_CHANGE \
    -DDBUS_SYSTEM_BUS_DEFAULT_ADDRESS=\"unix:path=/dev/socket/dbus\"

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/../

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/..

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/libdbus/Android.mk
