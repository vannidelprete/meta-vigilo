FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://vigilo-listener.conf"

do_install:append() {
    cat ${WORKDIR}/vigilo-listener.conf >> ${D}${sysconfdir}/mosquitto/mosquitto.conf
}