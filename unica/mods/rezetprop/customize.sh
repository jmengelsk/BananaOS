LOG "- Applying prop spoofer"

SECURITY_PATCH="$(GET_PROP "ro.build.version.security_patch")"

{
    echo ""
    echo "on property:service.bootanim.exit=1"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.boot.flash.locked 1"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.boot.vbmeta.device_state locked"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.boot.verifiedbootstate green"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.boot.veritymode enforcing"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.boot.warranty_bit 0"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n sys.oem_unlock_allowed 0"
    echo "    exec u:r:init:s0 root root -- /system/bin/rezetprop -n ro.vendor.build.security_patch "$SECURITY_PATCH
    echo "    exec u:r:init:s0 root root -- /system/bin/settings put global ram_expand_size_list 2,4,6,8"
    echo "    exec u:r:init:s0 root root -- /system/bin/device_config set_sync_disabled_for_tests persistent"
    echo "    exec u:r:init:s0 root root -- /system/bin/device_config put activity_manager max_cached_processes 256"
    echo "    exec u:r:init:s0 root root -- /system/bin/device_config put activity_manager max_phantom_processes 2147483647"
    echo "    exec u:r:init:s0 root root -- /system/bin/settings put global settings_enable_monitor_phantom_procs false"
    echo "    exec u:r:init:s0 root root -- /system/bin/device_config put activity_manager max_empty_time_millis 43200000"
    echo ""
} >> "$WORK_DIR/system/system/etc/init/hw/init.rc"

sed -i 's/${ro.boot.warranty_bit}/0/g' "$WORK_DIR/system/system/etc/init/init.rilcommon.rc"

LINES="$(sed -n "/^(allow init init_exec\b/=" "$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil")"
for l in $LINES; do
    sed -i "${l} s/)))/ execute_no_trans)))/" "$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"
done
