# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# The curve25519 java module
LOCAL_MODULE := curve25519-java

src_files := java/src/main/java
common := common/src/main/java

LOCAL_SRC_FILES := \
    $(call all-java-files-under, $(common)) \
    $(call all-java-files-under, $(src_files))

LOCAL_STATIC_LIBRARIES := libcurve25519-donna libcurve25519
LOCAL_ADDITIONAL_DEPENDENCIES += libcurve25519

include $(BUILD_STATIC_JAVA_LIBRARY)

include $(call first-makefiles-under, $(LOCAL_PATH))