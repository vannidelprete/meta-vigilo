FILESEXTRAPATHS:prepend:raspberrypi4-64 := "${THISDIR}/${PN}:"

SRC_URI:append:raspberrypi4-64 = " file://vigilo-listener.conf"

do_install:append:raspberrypi4-64() {
    cat ${WORKDIR}/vigilo-listener.conf >> ${D}${sysconfdir}/mosquitto/mosquitto.conf
}