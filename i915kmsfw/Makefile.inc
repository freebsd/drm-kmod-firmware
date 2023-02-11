# $FreeBSD$
#
# Common rules for building firmware.  Note this gets auto-included
# by the subdir Makefile's as a consequence of included bsd.kmod.mk.

.if defined(RAWVERSION)
FILEVERSION?=	${RAWVERSION}
FWFILE?=	${NAME}${"${FILEVERSION}" != "":?_:}${FILEVERSION}.bin
_NAME=		i915_${NAME}${"${RAWVERSION}" != "":?_:}${RAWVERSION:S/./_/g}_bin
.else
FILEVERSION?=	${VERSION}
FWFILE?=	${NAME}_ver${FILEVERSION}.bin
_NAME=		i915_${NAME}_ver${VERSION}_bin
.endif

KMOD=	${_NAME}

FIRMWS=	${_NAME}:${_NAME}

#
# Note that a license ack is not needed for i915kms.
#
#FIRMWARE_LICENSE=

CLEANFILES+=	${_NAME} ${_NAME}.fwo ${_NAME}.ko.debug ${_NAME}.ko.full

${_NAME}: ${.CURDIR}/../../i915kmsfw-files/${FWFILE}
	cp $? ${.TARGET}
