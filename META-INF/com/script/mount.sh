#!/sbin/sh

SLOT=$(getprop ro.boot.slot_suffix)

mount -o ro -t auto /dev/block/mapper/system"${SLOT}" /system_root
blockdev --setrw /dev/block/mapper/system"${SLOT}"
mount -o rw,remount -t auto /system_root
mount -o ro -t auto /dev/block/mapper/product"${SLOT}" /product
blockdev --setrw /dev/block/mapper/product"${SLOT}"
mount -o rw,remount -t auto /product
mount -o ro -t auto /dev/block/mapper/vendor"${SLOT}" /vendor
blockdev --setrw /dev/block/mapper/vendor"${SLOT}"
mount -o rw,remount -t auto /vendor
mount -o ro -t auto /dev/block/mapper/system_ext"${SLOT}" /system_ext
blockdev --setrw /dev/block/mapper/system_ext"${SLOT}"
mount -o rw,remount -t auto /system_ext
mount -o ro -t auto /dev/block/mapper/odm"${SLOT}" /odm
blockdev --setrw /dev/block/mapper/odm"${SLOT}"
mount -o rw,remount -t auto /odm