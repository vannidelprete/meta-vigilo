SYSTEMD_SERVICE:${PN}:raspberrypi4-64 = "wpa_supplicant@wlan0.service"
SYSTEMD_AUTO_ENABLE:raspberrypi4-64 = "enable"

do_install:append:raspberrypi4-64() {
    install -d ${D}${sysconfdir}/wpa_supplicant
}
