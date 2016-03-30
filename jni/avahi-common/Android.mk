LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:=libavahi-common

LOCAL_SRC_FILES := \
    avahi-malloc.c \
    address.c \
    alternative.c \
    error.c \
    strlst.c \
    domain.c \
    timeval.c \
    simple-watch.c \
    thread-watch.c \
    rlist.c \
    utf8.c \
    i18n.c

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H \
    -DAVAHI_LOCALEDIR=\"/usr/local/share/locale\"

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/../

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/..

include $(BUILD_SHARED_LIBRARY)
