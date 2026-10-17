#!/bin/bash
# Based on the AUR package integration by capezotte, Seto, and Koichi Murase.
# Updates are maintained in the arch-packages repository, not fetched from AUR.

_ble_base_package_type=AUR

function ble/base/package:AUR/version_check {
  LC_ALL=C pacman -Qi blesh-git | sed -n 's/^Version[[:space:]]*:[[:space:]]*//p'
}

function ble/base/package:AUR/update {
  ble/util/print >&2 'blesh-git is maintained in the arch-packages repository.'
  ble/util/print >&2 'Update and rebuild blesh-git there, then install the reviewed package with pacman -U.'
  return 1
}
