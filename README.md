# ISABusListener
Altera Cyclone-II-based ISA bus address listener developed for reverse-engineering of custom ISA boards. Allows you to map addresses to chips by recording ISA addresses (as well as IOX/MEMX, ..CS16 and other signals) that cause /CS pins to be asserted. The data can be read by a microcontroller from FPGA's memory (4k x 26-bit event signature).

Based on EP2C5... development board from AliExpress: http://land-boards.com/blwiki/index.php?title=Cyclone_II_EP2C5_Mini_Dev_Board, with unneeded stuff removed as described in the land-boards page to free some GPIO pins.

Lots of CD4050 chips were used to shift logic levels. Pinout is available in Quartus Pin Planner. Project was created in Altera Quartus II 13.0-sp1 with ModelSim-Altera simulation tool.
