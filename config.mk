# Copyright (C) 2017-2020 crDroid Android Project
# Copyright (C) 2020 Project Sakura
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
include $(call all-subdir-makefiles,$(LOCAL_PATH))

ifeq ($(KASUMI_SHIP_ADAWAY), true)
PRODUCT_PACKAGES += \
    AdAway
endif

ifeq ($(KASUMI_BUILD_TYPE), auroraoss)
PRODUCT_PACKAGES += \
    AuroraStore \
    AuroraServices

PRODUCT_COPY_FILES += \
    vendor/prebuilts/auroraoss/etc/permissions/permissions_com.aurora.services.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.aurora.services.xml
endif
