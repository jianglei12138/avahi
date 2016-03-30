LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:=libavahi-core

LOCAL_SRC_FILES := \
    timeeventq.c \
    iface.c \
    server.c \
    entry.c \
    prioq.c \
    cache.c \
    socket.c \
    response-sched.c \
    query-sched.c \
    probe-sched.c \
    announce.c \
    browse.c \
    rrlist.c \
    resolve-host-name.c \
    resolve-address.c \
    browse-domain.c \
    browse-service-type.c \
    browse-service.c \
    resolve-service.c \
    dns.c \
    rr.c \
    log.c \
    browse-dns-server.c \
    fdutil.c \
    util.c \
    hashmap.c \
    wide-area.c \
    multicast-lookup.c \
    querier.c \
    addr-util.c \
    domain-util.c \
    iface-linux.c \
    netlink.c

LOCAL_SHARED_LIBRARIES:=\
    libavahi-common \
    liblog

LOCAL_CFLAGS := \
    -DHAVE_CONFIG_H \

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/../
LOCAL_LDLIBS := -llog
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/..

include $(BUILD_SHARED_LIBRARY)
