# Copyright (C) 2020 The Fluid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/fextras

PRODUCT_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/fextras/overlay

PRODUCT_PACKAGES += \
    wellbeingconf \
    googleconf

PRODUCT_COPY_FILES += \
    vendor/fextras/etc/privapp-permissions-elgoog.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-elgoog.xml
#    vendor/fextras/etc/googlesysconfig.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/elgoog.xml

# Blur
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1

# Inherit from fonts config
$(call inherit-product, vendor/fextras/config/fonts.mk)

# Inherit from audio config
$(call inherit-product, vendor/fextras/config/audio.mk)

# Lawnicons
$(call inherit-product, vendor/lawnicons/overlay.mk)

# Include bootanimation
include vendor/fextras/bootanimation/bootanimation.mk
