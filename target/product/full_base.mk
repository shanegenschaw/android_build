#
# Copyright (C) 2009 The Android Open Source Project
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

# This is a build configuration for a full-featured build of the
# Open-Source part of the tree. This is a base configuration to
# bes used for AOSP builds on various target devices.

$(call inherit-product, frameworks/base/data/sounds/AudioPackage5.mk)

# Get the TTS language packs
$(call inherit-product-if-exists, external/svox/pico/lang/PicoLangEnUsInSystem.mk)

# Get the list of languages.
$(call inherit-product, $(SRC_TARGET_DIR)/product/language_english.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
