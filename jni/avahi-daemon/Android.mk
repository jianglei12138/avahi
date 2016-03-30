LOCAL_PATH:=$(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := avahi-daemon

LOCAL_SRC_FILES := \
        main.c \
        static-services.c \
        static-hosts.c \
        ini-file-parser.c \
        setproctitle.c \
        sd-daemon.c \
        glob.c \
        ../avahi-client/check-nss.c \
        dbus-protocol.c \
        dbus-util.c \
        dbus-async-address-resolver.c \
        dbus-async-host-name-resolver.c \
        dbus-async-service-resolver.c \
        dbus-domain-browser.c \
        dbus-entry-group.c \
        dbus-service-browser.c \
        dbus-service-type-browser.c \
        dbus-sync-address-resolver.c \
        dbus-sync-host-name-resolver.c \
        dbus-sync-service-resolver.c \
        dbus-record-browser.c \
        ../avahi-common/dbus.c \
        ../avahi-common/dbus-watch-glue.c

LOCAL_CFLAGS := \
        -DHAVE_CONFIG_H \
        -DAVAHI_CONFIG_FILE=\"/system/etc/avahi-daemon.conf\" \
        -DAVAHI_HOSTS_FILE=\"/system/etc/avahi/hosts\" \
        -DAVAHI_SERVICE_DIR=\"/system/etc/avahi/services\"  \
        -DUSE_EXPAT_H  -DDBUS_VERSION_MAJOR=1 \
        -DDBUS_VERSION_MINOR=6 -DDBUS_VERSION_MICRO=18  -DDBUS_API_SUBJECT_TO_CHANGE \
        -DDBUS_SYSTEM_BUS_DEFAULT_ADDRESS=\"unix:path=/dev/socket/dbus\"

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH) \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/libdaemon/include \
        $(LOCAL_PATH)/libexpat/include \

LOCAL_SHARED_LIBRARIES:=\
		libdaemon \
		libexpat \
		libdbus \
        libavahi-common \
        libavahi-core \
        libdl \

include $(BUILD_EXECUTABLE)
include $(LOCAL_PATH)/libexpat/Android.mk
include $(LOCAL_PATH)/../libdaemon/Android.mk