# $FreeBSD$

SYSDIR?=/usr/src/sys
.include "${SYSDIR}/conf/kern.opts.mk"

_amdgpukmsfw=	amdgpukmsfw
_i915kmsfw=	i915kmsfw
_radeonkmsfw=	radeonkmsfw

SUBDIR = \
	${_i915kmsfw} \
	${_amdgpukmsfw} \
	${_radeonkmsfw}

SUBDIR_PARALLEL=

# Calling kldxref(8) for each module is expensive.
.if !defined(NO_XREF)
.MAKEFLAGS+=	-DNO_XREF
afterinstall: .PHONY
	@if type kldxref >/dev/null 2>&1; then \
		${ECHO} ${KLDXREF_CMD} ${DESTDIR}${KMODDIR}; \
		${KLDXREF_CMD} ${DESTDIR}${KMODDIR}; \
	fi
.endif

.include <bsd.subdir.mk>
