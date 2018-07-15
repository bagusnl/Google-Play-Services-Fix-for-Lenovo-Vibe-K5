#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed once during installation
# It is called inside the `set_permissions` function in `config.sh`

killall com.google.android.gms
rm -rf /data/data/com.google.android.gms

killall com.android.vending
rm -rf /data/data/com.android.vending

reboot
