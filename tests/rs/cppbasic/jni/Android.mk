LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	mono.rs \
	compute.cpp

LOCAL_LDFLAGS += -L$(call host-path,$(TARGET_C_INCLUDES)/../lib/rs)
LOCAL_LDLIBS := -llog -ldl -lRScpp_static

LOCAL_MODULE:= rstest-compute

LOCAL_C_INCLUDES += $(TARGET_C_INCLUDES)/rs/cpp
LOCAL_C_INCLUDES += $(TARGET_C_INCLUDES)/rs
LOCAL_C_INCLUDES += $(TARGET_OBJS)/$(LOCAL_MODULE)

include $(BUILD_EXECUTABLE)

