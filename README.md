# esp12_trivial_programmer

Trivial programming addons for an ESP-12.

This is designed as a low-cost method to add basic programming features to an ESP8266 embedded in a device.

## Hardware Design

This is designed to add FTDI serial cable programming to most bare-bones ESP8266 boards, specifically the ESP-12e / ESP-12f boards from AI Thinker.

The hardware design is based upon the final circuit posted here: https://hallard.me/esp8266-autoreset/ with minimal addons to turn it into a complete solution.

Essentially it consists of the following elements:

1. `GPIO15` and `GPIO2` are pulled to ground and +3.3v to (partially) set the device into the correct mode
2. Charles Hallard's circuit is used to auto-reset the board and put it into program mode by controlling `EN` (`CH_PD`) and `GPIO0` with the `DTR` signal
3. A 3.3v FTDI USB to Serial converter is used as the actual interface with the programming computer

### A Note on cheap FTDI serial cables / programmers

Many "3.3v compatible" FTDI boards / cables actually provide a 5v power source, not 3.3v.

As such, **it's strongly recommended that you power the board from an external power source instead of from the FTDI cable.**

## Attached software

This repository also contains a trivial WiFi access point and webserver as a "hello world" project to test this.

It contains configuration to be build and programmed using [PlatformIO](https://platformio.org/) however `main.cpp` should work in the Arduino IDE with ESP8266 addons without major modifications.

## Using the device with this circuit attached

1. Build and upload the software using PlatformIO or your IDE of choice=
2. Make sure that either the **serial programmer is disconnected or the DTR pin is low**
3. Reset the ESP8266 device by either removing and restoring power or pulsing the reset pin
4. The uploaded code should run

## Licensing and Copyright

The auto-reset circuit is copyright Charles Hallard as stated on his blog. He does not specify a license.

The remaining hardware design and instructions are copyright Julian Calaby 2019-2020 and licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

The PlatformIO files and related software are trivial and are released to the public domain: [To the extent possible under law, I have waived all copyright and related or neighboring rights to the software in this repository](http://creativecommons.org/publicdomain/zero/1.0/).
