# Wiring and Arduino setup

Disconnect USB power before wiring. The following five-wire setup was confirmed working on this specific GC9A01 module and ESP32-S3 board.

| Display pin | ESP32-S3 connection |
|---|---|
| VCC | 3V3 |
| GND | GND |
| SCL (SPI clock) | GPIO12 |
| SDA (SPI MOSI) | GPIO11 |
| DC | GPIO9 |
| CS | Not connected in tested setup |
| RST | Not connected in tested setup |

Other GC9A01 boards may require explicit CS and RST wiring; do not assume all modules behave the same. Do not connect VCC to 5 V for this tested wiring.

## Arduino IDE

- Board: ESP32S3 Dev Module; flash 16 MB; OPI PSRAM; upload speed 115200; Serial Monitor 115200.
- ArduinoJson 7.4.3 (owner's installed version at testing), Adafruit GFX, Adafruit GC9A01A, Adafruit BusIO.
- WiFi, HTTPClient, WiFiClientSecure, Preferences and WebServer are provided by the ESP32 Arduino core. Exact core and Adafruit library versions were not recorded.
- Tested SPI configuration: `SPI.begin(12, -1, 11, -1);` and display initialization at 27 MHz.
- Select USB CDC On Boot according to native USB vs UART connection. Use the working board settings from your saved sketch.

See the firmware setup notes for credentials and upload instructions.
