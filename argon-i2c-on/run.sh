#!/bin/bash
echo "Reading APO register:"
i2cget -f -y 1 0x1A 0xFE
echo "Running i2cset to enable auto power-on"
i2cset -f -y 1 0x1A 0xFE 0x01
echo "Reading APO register:"
i2cget -f -y 1 0x1A 0xFE
echo "Full dump:"
i2cdump -y 1 0x1a
echo "Done. You can now remove this add-on."
sleep 10
