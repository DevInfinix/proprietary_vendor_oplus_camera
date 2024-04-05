# Lets assemble OplusCamera.apk from its split parts

opcam="vendor/oplus/camera/proprietary/system_ext/priv-app/OplusCamera/OplusCamera"

# Remove existing file, if it exists
[ -e "$opcam.apk" ] && { rm -f "$opcam.apk" && echo "Removed existing $opcam.apk."; }

# Merge parts into $opcam.apk
echo "Merging parts into $opcam.apk"
cat "$opcam.part"* > "$opcam.apk" || { echo "Error: Failed to create $opcam.apk. Exiting build."; exit 1; }

echo "$opcam.apk built successfully."
