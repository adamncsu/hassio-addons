#!/bin/bash
echo "Reading APO register:"
i2cget -y 1 0x1a 0xfe
echo "Running i2cset to enable auto power-on"
i2cset -y 1 0x1a 0xfe 0x01 b
echo "Reading APO register:"
i2cget -y 1 0x1a 0xfe
echo "Done. You can now remove this add-on."
sleep 10
