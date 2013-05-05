clear
echo ""
echo ""
echo "   ---------------------------------"
sleep 0.5
echo "    CM10.1 patch"
sleep 0.5
echo "    Source by hPa and Edit by Mir"
sleep 0.5
echo "   ---------------------------------"
sleep 0.5
echo "    Shell Script will start"
sleep 0.5
echo "   ---------------------------------"
sleep 0.5

# PATH DEVICE
DEVICE=ef46l
VENDOR=pantech

# ril PATH
cp ./ril/telephony/java/com/android/internal/telephony/SkyQualcommRIL.java ../../../frameworks/opt/telephony/src/java/com/android/internal/telephony

# install bdroid_buildcfg.h
#cp ./bluetooth/bdroid_buildcfg.h ../../../external/bluetooth/bluedroid/audio_a2dp_hw
#cp ./bluetooth/bdroid_buildcfg.h ../../../external/bluetooth/bluedroid/hci/include/
#cp ./bluetooth/bdroid_buildcfg.h ../../../external/bluetooth/bluedroid/include/

# ERROR FIX - no rules to make "out/target/product/$DEVICE/obj/KERNEL_OBJ/usr"
mkdir -p ../../../out/target/product/$DEVICE/obj/KERNEL_OBJ/usr

# hostapd error fix
#cp -f ./hostapd/android.config ../../../external/wpa_supplicant_8/hostapd

if [ ! -s ../../../vendor/cm/proprietary/Term.apk ]; then
../../../vendor/cm/get-prebuilts
fi

# Package for cm-10.1
#sudo apt-get -y install schedtool

#if [ ! -s /usr/include/bits/byteswap.h ]; then
#	sudo cp -f ./usrinclude/endian.h /usr/include
#fi

#if [ ! -s /usr/include/bits/stat.h ]; then
#	sudo cp -f ./usrinclude/fcntl.h /usr/include
#fi

# ERROR FIX - no such file
# ERROR : /usr/include/regex.h:26:31: fatal error: gnu/option-groups.h: No such file or directory
#if [ ! -s /usr/include/gnu/option-groups.h ]; then
#	sudo cp -f ./usrinclude/regex.h /usr/include
#fi

echo ""
echo "    Finished Source PATCH and Error Fix"
echo ""
sleep 1
