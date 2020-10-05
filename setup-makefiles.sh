#!/bin/bash
#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=lmi
export DEVICE_COMMON=sm8250-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2020

"./../../$VENDOR/$DEVICE_COMMON/setup-makefiles.sh" "$@"