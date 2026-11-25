# Add your tested firmware here

Create the folder `XWiz_Flight_Tracker_V0_8_1/` here and place your saved sketch inside it as `XWiz_Flight_Tracker_V0_8_1.ino` (Arduino requires the sketch directory and main `.ino` filename to match).

The exact owner-tested sketch is not packaged, to avoid substituting unverified code or including secrets. Use your actual working V0.8.1 rather than rebuilding from the earlier V0.8 draft.

Before publishing, replace `ssid`, `password` and `webPassword` values with placeholders. Do not upload personal credentials, private addresses or unredacted screenshots. If you already published a secret, rotate it; removing it in a later commit is not enough. Keep a separate private working copy for uploading to your board.

For V0.8.1, the tested compilation fix added forward declarations for `Settings`, `Aircraft`, `RadarData`, `RouteRequest`, and `RouteData` after the includes, and matched the `insertAircraft` declaration to the definition. Retain the valid JSON allocator and extended network timeouts.

Install libraries listed in [wiring](../../hardware/wiring.md), select the ESP32-S3 board settings, enter your own Wi-Fi details and a unique local web password of at least eight characters, then compile and upload. Open Serial Monitor at 115200. The default is 50 NM, blue, 5 NM proximity alerts on, routes on. Existing NVS settings override defaults after restart.

Do not expose the HTTP web panel to the public internet.
