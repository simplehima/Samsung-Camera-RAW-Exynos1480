#!/system/bin/sh
# V4 Stealth-Mount script for Camera RAW
# This version injects SELinux policies to ensure the mount is seen by the system

MODDIR=${0%/*}

# 1. Inject SELinux policies to allow cameraserver to access the module files
# We allow reading, opening, and getting attributes for the vendor library path
magiskpolicy --live "allow cameraserver vendor_file file { read open getattr execute }"
magiskpolicy --live "allow cameraserver system_file file { read open getattr execute }"

# 2. Manually bind-mount the patched library over the stock one
# We target the direct vendor path since /system/vendor is a symlink
if [ -f "$MODDIR/system/vendor/lib64/hw/camera.s5e8845.so" ]; then
    mount --bind "$MODDIR/system/vendor/lib64/hw/camera.s5e8845.so" /vendor/lib64/hw/camera.s5e8845.so
fi
