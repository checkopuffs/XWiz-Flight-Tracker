# Troubleshooting and lessons learned

| Symptom | Investigation / change | Observed outcome |
|---|---|---|
| Full display flashes during updates (V0.4) | Hardware SPI, 16-bit framebuffer, background networking and FreeRTOS queues | Owner confirmed improved display in V0.4.1 |
| API endpoint not returning usable data | Switched to ADSB.fi position endpoint and tested in browser | Live data confirmed |
| JSON error / connecting Wi-Fi screen after V0.7 | Checked API links and serial settings; corrected potential null allocator fallback and increased HTTP timeouts | Owner reported V0.7 worked afterward; exact root cause was not isolated |
| `insertAircraft` / `RadarData` undeclared at compile (V0.8) | Added forward declarations for custom structs and matched function declaration/definition | Owner confirmed compilation and later all acceptance tests passed |

## Diagnostic approach

Keep a last-known-good sketch. Isolate wiring, serial output, connectivity, API response, allocation and compile errors separately. Check browser endpoints without exposing credentials. For larger ranges, monitor response size and available memory. Prefer incremental changes and record the outcome rather than assuming a suspected cause is proven.

## Known limitations

At prototype stage, certificate validation is disabled on outbound HTTPS, and local HTTP authentication is not encrypted. Routes can be inaccurate and API failures can delay position updates. These are follow-up engineering tasks, not resolved issues.
