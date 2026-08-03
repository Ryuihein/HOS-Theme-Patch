#!/system/bin/sh

# Use a 'Here Document' (<<EOF) instead of echo for big blocks of code.
# This prevents the quote-inside-quote errors.
./rish <<EOF



THEME_PATH="/storage/emulated/0/DeskTop_Theme/Theme/Purple_Sad_Girl.mtz"
SNAPSHOT_DIR="/storage/emulated/0/Android/data/com.android.thememanager/files/snapshot"
SNAPSHOT_PATH="\$SNAPSHOT_DIR/snapshot.mtz"

mkdir -p "\$SNAPSHOT_DIR"
cp "\$THEME_PATH" "\$SNAPSHOT_PATH"

/system/bin/am start -n "com.android.thememanager/com.android.thememanager.ApplyThemeForScreenshot" \
--es "theme_file_path" "\$SNAPSHOT_PATH" \
--es "api_called_from" "com.android.thememanager" \
-f 0x10000000

sleep 2

am broadcast -a miui.intent.action.THEME_APPLIED -p com.android.thememanager

sleep 2.5
/system/bin/am force-stop com.android.thememanager

echo "Done."
sleep 0.5
EOF

#munch:/data/system/theme
#*theme dir
