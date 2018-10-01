#
# Copyright (C) 2018 The LineageOS Project
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
#

LOCAL_PATH := device/samsung/n1awifi

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Inherit from n1a-common
$(call inherit-product, device/samsung/n1a-common/device-common.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/n1awifi/n1awifi-vendor.mk)
