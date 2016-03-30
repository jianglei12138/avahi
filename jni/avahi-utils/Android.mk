LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:=avahi-browse

LOCAL_SRC_FILES := \
    avahi-browse.c \
    sigint.c

LOCAL_SHARED_LIBRARIES:=\
    libavahi-client \
    libavahi-common \
    libdbus \

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H \

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/../

include $(BUILD_EXECUTABLE)
