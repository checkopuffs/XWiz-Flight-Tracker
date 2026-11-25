# V0.9 enclosure — fit gauges only

The included files are the existing preliminary fit tests, not a finished housing. They were copied unchanged from the working project artifacts.

- [Display fit gauge](STL/XWiz_V09_Display_Fit_Test.stl): 39.5 mm pocket, 33.6 mm opening, connector-tab relief; 2.8 mm thick.
- [ESP32 fit gauge](STL/XWiz_V09_ESP32_Fit_Test.stl): 72 × 30.5 mm opening, 2.4 mm thick.
- [Editable source](CAD/XWiz_V09_Fit_Test.scad): select `part = "display"` or `part = "board"`, render F6 in OpenSCAD and export STL.

Import into Bambu Studio at 100% scale, flat on the build plate. Suggested PLA/PLA+, 0.20 mm layers, 3 wall loops, 15% infill, no supports. Unplug hardware before test fitting; do not force the glass or PCB.

Measurements are estimates from photographs; mounting-hole spacing, board thickness with pins, display thickness, wire bend radius and USB plug clearance still need confirmation. Proposed case is black/blue with a rear service panel and ventilation. No final housing STL is provided.

Record whether the display seats, whether the ESP32 passes through its gauge, and where interference occurs before designing the final enclosure.
