##########################################################################################
#
# Samsung Camera RAW (DeathUI 8.0 V4) - V4 Stealth-Mount Fix
#
##########################################################################################

ui_print "****************************************"
ui_print "*   Samsung Camera RAW Port (V4)       *"
ui_print "*   V4 Stealth-Mount Strategy          *"
ui_print "*   Patched by himasimple (@Hima_Simple) *"
ui_print "*   For DeathUI 8.0 V4                 *"
ui_print "****************************************"

# Set permissions for the vendor library
set_perm_recursive "$MODPATH/system/vendor/lib64/hw" 0 0 0755 0644

# EXPLICITLY set permissions for the boot script
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755

# Ensure SELinux context is correct for the library
chcon u:object_r:vendor_file:s0 "$MODPATH/system/vendor/lib64/hw/camera.s5e8845.so" 2>/dev/null

ui_print "- Applied Stealth-Mount Patch (v4.1)"
ui_print "- Injected SELinux Policies"
ui_print "- Manual Bind-Mount Enabled"
