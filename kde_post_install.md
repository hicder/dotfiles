# Things to do after installing KDE
These are things I do after installing Kubuntu to get things to work and look nice.

## Looks and Feels
* Change to breeze dark
  * System Settings -> Look and Feel -> Breeze Dark
* Install sierrabreeze
  * https://github.com/ishovkun/SierraBreeze
* Install latte-dock
  * Not needed in 19.10
* Change animation to magic lamp
  * System Settings -> Desktop Behavior -> Magic Lamp
* Change Task Switcher to Thumbnal
  * System Settings -> Window Behavior -> Task Switcher

## Software
### Vietnamese typing with ibus
```
sudo apt install ibus ibus-gtk3
im-config
```

## Hardware
### Fix bluetooth
```
sudo apt install pulseaudio pulseaudio-utils pavucontrol pulseaudio-module-bluetooth
sudo vim /etc/bluetooth/audio.conf
```
Add this section:
```
# This section contains general options
    [General]
    Enable=Source,Sink,Media,Socket
```
Then:
```
sudo service bluetooth restart
```
Then:
  * Go to this link: https://gist.github.com/pylover/d68be364adac5f946887b85e6ed6e7ae
  * Get the Device ID from: `pacmd list-cards`
  * Run: `a2dp.py <Device ID>`
