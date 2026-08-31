SUMMARY = "Vigilo gateway image"
DESCRIPTION = "Raspberry Pi gateway image for Vigilo: MQTT broker and Python dependencies for the detection engine."
LICENSE = "MIT"

require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL += " \
    mosquitto \
    python3-paho-mqtt \
    python3-numpy \
"