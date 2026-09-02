SUMMARY = "Vigilo gateway image"
DESCRIPTION = "Raspberry Pi gateway image for Vigilo: MQTT broker and Python dependencies for the detection engine."
AUTHOR = "Giovanni Del Prete <giovannidelprete95@gmail.com>"
HOMEPAGE = "https://github.com/vannidelprete/meta-vigilo"
LICENSE = "MIT"

require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL += "mosquitto \
    python3-paho-mqtt \
    python3-numpy \
    vigilo-detector \
    linux-firmware-rpidistro-bcm43455 \
    kernel-module-brcmfmac \
    kernel-module-brcmfmac-wcc \
    wpa-supplicant \
    wpa-supplicant-passphrase \
    avahi-daemon \
"
