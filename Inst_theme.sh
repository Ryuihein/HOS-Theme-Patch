#!/system/bin/sh

./rish  <<EOF
echo "Installing package APK ..."
sleep 0.9
pm install-existing --user 0  com.android.thememanager
echo "Success."
sleep 0.5
EOF


