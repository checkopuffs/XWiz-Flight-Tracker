# V0.8.1 functional acceptance test

Date: November 24, 2026 (owner-reported local date). Hardware: ESP32-S3 N16R8 + GC9A01. Firmware: V0.8.1 Control Center Edition.

| ID | Test | Result |
|---|---|---|
| 01 | Firmware compiles and uploads | PASS |
| 02 | Live aircraft appear on radar | PASS |
| 03 | Departure and arrival airports appear | PASS |
| 04 | Spotter mode works | PASS |
| 05 | Web control panel opens | PASS |
| 06 | Change radar radius from web panel | PASS |
| 07 | Switch between all four color themes | PASS |
| 08 | Toggle proximity alerts | PASS |
| 09 | Toggle flight route information | PASS |
| 10 | Unplug device and verify settings retained | PASS |

**10 passed / 10 reported tests.** These results were supplied by the project owner, not independently reproduced. No serial logs or screenshots are attached to this test record. Toggle testing does not independently validate every proximity event or route accuracy.

## Pending verification

- Extended uptime and repeated connection-loss/recovery tests; record heap/PSRAM and HTTP/JSON errors.
- Check stale data display, API rate limiting, zero-aircraft response and range changes during outages.
- Verify HTTPS server certificates and local web security before final release.
- Fit gauges and assembled enclosure, USB plug clearance, wire strain relief and heat behavior.
