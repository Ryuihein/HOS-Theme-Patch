#!/system/bin/sh

./rish  <<EOF
echo "Deleting Theme Data..."
sleep 1.4
pm clear com.android.thememanager
echo "Cleared."
pm uninstall --user 0  com.android.thememanager
sleep 1
echo "Done. Exit(1)"

EOF
