#
#
# Copyright (C) Intel 2013-2015
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

naive_tokenizer_src_files := NaiveTokenizer.cpp
naive_tokenizer_cflags := \
    -Wall \
    -Werror \
    -Wextra \

# target
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(naive_tokenizer_src_files)
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := $(naive_tokenizer_cflags)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_MODULE := libaudiocomms_naive_tokenizer
LOCAL_MODULE_OWNER := intel

include $(BUILD_STATIC_LIBRARY)

# host
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(naive_tokenizer_src_files)
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := $(naive_tokenizer_cflags)

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_MODULE := libaudiocomms_naive_tokenizer_host
LOCAL_MODULE_OWNER := intel
include $(BUILD_HOST_STATIC_LIBRARY)
