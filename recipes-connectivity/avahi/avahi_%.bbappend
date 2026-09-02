FILESEXTRAPATHS:prepend:raspberrypi4-64 := "${THISDIR}/${PN}:"

SRC_URI:append:raspberrypi4-64 = " file://vigilo-mqtt.service"

do_install:append:raspberrypi4-64() {
    install -d ${D}${sysconfdir}/avahi/services
    install -m 0644 ${WORKDIR}/vigilo-mqtt.service ${D}${sysconfdir}/avahi/services/
}
