# SondePi

Mobile radiosonde tracking with Raspberry Pi.

### sondepi-buildroot

sondepi-buildroot is a part of the SondePi project.

It is based on Buildroot v2019.05.
The board is based on RPi 3B (compatible with RPi 3B+).

#### Usage

To start, make defconfig with:  
`make sondepi_defconfig`

Modify configuration with:  
`make menuconfig`

Build with:  
`make`

The resulting image is in `output/images/sdcard.img`.
Use `dd` to write it to a microSD card.

#### Licensing

Buildroot is licensed under GPLv2 license.

