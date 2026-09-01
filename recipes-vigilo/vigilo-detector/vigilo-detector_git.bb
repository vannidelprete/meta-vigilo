SUMMARY = "Vigilo vibration detection engine"
DESCRIPTION = "Live anomaly detector: subscribes to IMU batch telemetry over MQTT, computes vibration SNR at the monitored machine's rotational frequency, and publishes alerts on threshold crossing. Runs as a systemd service."
AUTHOR = "Giovanni Del Prete <giovannidelprete95@gmail.com>"
HOMEPAGE = "https://github.com/vannidelprete/vigilo"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=6909cbad14ba9c4c0cf7c2cdd88f5183"

SRC_URI = "git://github.com/vannidelprete/vigilo.git;branch=main;protocol=https \
           file://vigilo-detector.service \
"
SRCREV = "b97bda8ac3a6401d2a4374b7e7299e133b1ece1f"

S = "${WORKDIR}/git"

inherit systemd allarch

SYSTEMD_SERVICE:${PN} = "vigilo-detector.service"
SYSTEMD_AUTO_ENABLE:${PN} = "enable"

do_install() {
    install -d ${D}${datadir}/vigilo-detector
    install -m 0644 ${S}/ml/monitor.py ${D}${datadir}/vigilo-detector/
    install -m 0644 ${S}/ml/analyze_fft.py ${D}${datadir}/vigilo-detector/
    install -m 0644 ${S}/ml/collect_baseline.py ${D}${datadir}/vigilo-detector/
    install -m 0644 ${S}/ml/detect_anomaly.py ${D}${datadir}/vigilo-detector/

    install -d ${D}${sysconfdir}/vigilo

    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/vigilo-detector.service ${D}${systemd_unitdir}/system/
}

FILES:${PN} += "${systemd_unitdir}/system/vigilo-detector.service"
RDEPENDS:${PN} = "python3-core python3-paho-mqtt python3-numpy"
