# ESP32CAM-ESPHome-PrusaConnect
ESP32 camera to to monitor Prusa Printer integrated with Home Assistant.

Prerequisites
1. Installed and configured Home Assistant
2. Installed and configured ESP Home
3. Configured and Active Prusa Connect acount with Printer added
4. ESP32CAM module - i.e. AI Thinker
5. Some enclosure and USB Power supply for camera

Above was easy. My intention was to create esp32camera in esphome which will automatically send snapshots to the prusa connect. Unfortunately it was not possible due limitations of esp32_camera component. The solution is much more complicated and requires also actions on the Home Assistant to be done. 

The final recipe consist of following elements:
1. ESP32Camera configured in ESPHome
2. shell script in Home Assistant - using curl to get the snapshot ans send it to prusa connect
3. shell command configured in configuration.yaml
4. automation that will run the script every xxx seconds

