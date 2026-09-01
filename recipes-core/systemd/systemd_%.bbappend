FILESEXTRAPATHS:prepend:raspberrypi4-64 := "${THISDIR}/${PN}:"

SRC_URI:append:raspberrypi4-64 = " file://25-wlan0-dhcp.network"

do_install:append:raspberrypi4-64(){
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/25-wlan0-dhcp.network ${D}${sysconfdir}/systemd/network/
}

FILES:${PN} += "${sysconfdir}/systemd/network/25-wlan0-dhcp.network"
