clear
echo "  "
echo "Install Ubuntu"
echo ""
sleep 1
echo "[1] Choose a channel to flash with the --wipe option (Will remove existing apps/data)"
echo "[2] Choose a channel to switch your device to (Will keep existing apps/data) "
echo ""
echo "[3] Back to menu "
sleep 1
echo ""
echo -n "Enter option: "; read optionubuntu
if [ "$optionubuntu" = "1" ]; then
  . .$SNAP/devices/pro5/ubuntu/flashwipe.sh
elif [ "$optionubuntu" = "2" ]; then
  . .$SNAP/devices/pro5/ubuntu/flashkeep.sh
elif [ "$optionubuntu" = "3" ]; then
  . .$SNAP/launcher.sh
else
  echo ""
  echo "Invalid Option"
  echo ""
  echo "Exiting script. Bye Bye"
  exit
fi
