
### prop files
SYSTEM_PROP="$WORK_DIR/system/system/build.prop"
SYSTEM_DLKM_PROP="$WORK_DIR/system/system/system_dlkm/etc/build.prop"
SYSTEM_EXT_PROP="$WORK_DIR/system/system/system_ext/etc/build.prop"
ODM_PROP="$WORK_DIR/odm/etc/build.prop"
PRODUCT_PROP="$WORK_DIR/product/etc/build.prop"
VENDOR_PROP="$WORK_DIR/vendor/build.prop"

### update build date
old_date=$(grep 'ro.build.date=' $SYSTEM_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_PROP
### update build date utc
old_date=$(grep 'ro.build.date.utc=' $SYSTEM_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_PROP
### update system build date
old_date=$(grep 'ro.system.build.date=' $SYSTEM_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_PROP
### update system build date utc
old_date=$(grep 'ro.system.build.date.utc=' $SYSTEM_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_PROP
sleep 3

### update system_dlkm build date
old_date=$(grep 'ro.system_dlkm.build.date=' $SYSTEM_DLKM_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_DLKM_PROP
### update system_dlkm build date utc
old_date=$(grep 'ro.system_dlkm.build.date.utc=' $SYSTEM_DLKM_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_DLKM_PROP
sleep 3

### update system_ext build date
old_date=$(grep 'ro.system_ext.build.date=' $SYSTEM_EXT_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_EXT_PROP
### update system_ext build date utc
old_date=$(grep 'ro.system_ext.build.date.utc=' $SYSTEM_EXT_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $SYSTEM_EXT_PROP
sleep 3

### update odm build date
old_date=$(grep 'ro.odm.build.date=' $ODM_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $ODM_PROP
### update odm build date utc
old_date=$(grep 'ro.odm.build.date.utc=' $ODM_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $ODM_PROP
sleep 3

### update product build date
old_date=$(grep 'ro.product.build.date=' $PRODUCT_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $PRODUCT_PROP
### update product build date utc
old_date=$(grep 'ro.product.build.date.utc=' $PRODUCT_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $PRODUCT_PROP
sleep 3

### update vendor build date
old_date=$(grep 'ro.vendor.build.date=' $VENDOR_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $VENDOR_PROP
### update vendor build date utc
old_date=$(grep 'ro.vendor.build.date.utc=' $VENDOR_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $VENDOR_PROP
### update bootimage build date
old_date=$(grep 'ro.bootimage.build.date=' $VENDOR_PROP)
new_date="${old_date%%=*}=$(date)"
sed -i "s/$old_date/$new_date/g" $VENDOR_PROP
### update bootimage build date utc
old_date=$(grep 'ro.bootimage.build.date.utc=' $VENDOR_PROP)
new_date="${old_date%%=*}=$(date +%s)"
sed -i "s/$old_date/$new_date/g" $VENDOR_PROP
sleep 3


unset SYSTEM_PROP SYSTEM_DLKM_PROP SYSTEM_EXT_PROP ODM_PROP PRODUCT_PROP VENDOR_PROP old_date new_date

