# $FreeBSD$
#
# Common rules for building firmware.  Note this gets auto-included
# by the subdir Makefile's as a consequence of included bsd.kmod.mk.

FILEVERSION?=	${VERSION}
FWFILE?=	${NAME}_ver${FILEVERSION}.bin
_NAME=		i915_${NAME}_ver${VERSION}_bin

KMOD=	${_NAME}

FIRMWS=	${FWFILE}:i915/${NAME}_ver${VERSION}.bin

#
# Note that a license ack is not needed for i915kms.
#
#FIRMWARE_LICENSE=

CLEANFILES+=	${FWFILE}
CLEANFILES+=	${_NAME} ${_NAME}.fwo ${_NAME}.ko.debug ${_NAME}.ko.full

${FWFILE}: ${.CURDIR}/../../i915kmsfw-files/${FWFILE}.uu
	uudecode -p $? > ${.TARGET}
