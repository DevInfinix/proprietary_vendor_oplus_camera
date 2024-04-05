# Lets assemble OplusCamera.apk & OnePlusGallery.apk from its split parts

opcam="vendor/oplus/camera/proprietary/system_ext/priv-app/OplusCamera/OplusCamera"
opgallery="vendor/oplus/camera/prebuilts/OnePlusGallery"

# Remove existing file, if it exists
[ -e "$opcam.apk" ] && { rm -f "$opcam.apk" && echo "Removed existing $opcam.apk."; }
[ -e "$opgallery.apk" ] && { rm -f "$opgallery.apk" && echo "Removed existing $opgallery.apk."; }

# Merge parts into $opcam.apk & $opgallery.apk
echo "Merging parts into $opcam.apk"
cat "$opcam.part"* > "$opcam.apk" || { echo "Error: Failed to create $opcam.apk. Exiting build."; exit 1; }

echo "$opcam.apk built successfully."

echo "Merging parts into $opgallery.apk"
cat "$opgallery.part"* > "$opgallery.apk" || { echo "Error: Failed to create $opgallery.apk. Exiting build."; exit 1; }

echo "$opgallery.apk built successfully."
