# $FreeBSD$
#
# Common rules for building firmware.  Note this gets auto-included
# by the subdir Makefile's as a consequence of included bsd.kmod.mk.

FWFILE?=	${NAME}.bin
_NAME=		radeon_${NAME}_bin

KMOD=	${_NAME}

FIRMWS=	${_NAME}:${_NAME}

#
# Note that a license ack is not needed for radeon. 
#
#FIRMWARE_LICENSE=

CLEANFILES+=	${_NAME} ${_NAME}.fwo ${_NAME}.ko.debug ${_NAME}.ko.full

${_NAME}: ${.CURDIR}/../../radeonkmsfw-files/${FWFILE}.uu
	uudecode -p $? > ${.TARGET}
