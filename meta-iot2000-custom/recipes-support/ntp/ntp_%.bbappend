FILESEXTRAPATHS_prepend := "${THISDIR}/ntp:"

SRCREV = "c9384d7fc40acdf8b5ed668ac3f5fa0e2ad4dbd1"

SRC_URI += " \
    file://ntp.conf"

do_install_append() {
    install -m 644 ${WORKDIR}/ntp.conf ${D}${sysconfdir}/ntp.conf
}