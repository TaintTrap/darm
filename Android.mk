LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

# LOCAL_NO_CRT := true

LOCAL_MODULE := libdarm 
LOCAL_SRC_FILES := darm.c darm-tbl.c armv7.c armv7-tbl.c thumb.c thumb-tbl.c thumb2.c thumb2-tbl.c thumb2-decoder.c
# LOCAL_SRC_FILES := $(wildcard *.c)
# LOCAL_CFLAGS += -gdwarf-2 -g3 -O0 -fPIC -Wall -Wextra -march=armv7-a -mcpu=cortex-a9
# LOCAL_CFLAGS += -O0 -g -fPIC -Wall -Wextra -march=armv7-a -mcpu=cortex-a9
LOCAL_CFLAGS += -fPIC -Wall -Wextra -march=armv7-a -mcpu=cortex-a9
# LOCAL_CFLAGS += -O3
LOCAL_CFLAGS += -Ofast
LOCAL_ARM_MODE = arm
LOCAL_CFLAGS += -g3
LOCAL_CFLAGS += -std=c99
LOCAL_CFLAGS += -DANDROID
LOCAL_CFLAGS += -fno-omit-frame-pointer

# gprof
# LOCAL_CFLAGS += -fno-function-sections
# LOCAL_CFLAGS += -fno-omit-frame-pointer
# LOCAL_CFLAGS += -pg
# LOCAL_STATIC_LIBRARIES := libandroid-ndk-profiler

# LOCAL_SHARED_LIBRARIES := liblog

LOCAL_LDFLAGS := -Wl,--exclude-libs=libgcc.a
LOCAL_SYSTEM_SHARED_LIBRARIES :=
LOCAL_CFLAGS += -nodefaultlibs -nostdlib
LOCAL_STATIC_LIBRARIES := libc_nomalloc

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
