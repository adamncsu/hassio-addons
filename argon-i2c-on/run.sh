#!/bin/bash
echo "Detecting I2C devices..."
i2cdetect -y 1 || echo "i2cdetect failed"
echo "Running i2cset to enable auto power-on..."
i2cset -y 1 0x01 0xFE 0x01
echo "Done. You can now remove this add-on."
sleep 10
