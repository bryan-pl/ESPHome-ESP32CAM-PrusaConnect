# ESP32CAM-ESPHome-PrusaConnect
ESP32 camera to to monitor Prusa Printer integrated with Home Assistant.

Prerequisites
1. Installed and configured Home Assistant
2. Installed and configured ESP Home
3. Configured and Active Prusa Connect account with Printer added
4. ESP32CAM module - i.e. AI Thinker
5. Some enclosure and USB Power supply for camera (3D printed and USB psu)

Above was easy. My intention was to create neat and compact  esp32camera in ESP Home environment which will automatically send snapshots to the prusa connect without engaging HA in whole process - just to fire and forget with possibility to observe printer from Pruss Connect continuously and also from HA dashboard. Unfortunately it was not possible due limitations of esp32_camera component, as there is no action to get snapshot inside the environment. The solution is much more complicated and requires also actions on the Home Assistant to be done. 

The final recipe consist of following elements:
1. ESP32Camera configured in ESPHome
2. shell script in Home Assistant - using curl to get the snapshot ans send it to prusa connect
3. shell command configured in configuration.yaml
4. automation that will run the script every xxx seconds only when printer is active (powered on) to avoid taking of unneccessary snapshot when printer is idle.

Whine above solution is working, I'm considering other options to avoid unnecessary recording of the snapshot on the HA hard drive. The option is to use ramdisk as a temporary space, however from the level of HA there is no possibility to mount tmpfs into specific space. Topic still needs to be investigated.

