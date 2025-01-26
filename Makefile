SYSDIR?=/usr/src/sys
.include "${SYSDIR}/conf/kern.opts.mk"

_VALID_KMODS=	amdgpukmsfw i915kmsfw radeonkmsfw

DEFAULT_KMODS=	amdgpukmsfw radeonkmsfw

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
DEFAULT_KMODS+=	i915kmsfw
.endif

# Calling kldxref(8) for each module is expensive.
.if !defined(NO_XREF)
.MAKEFLAGS+=	-DNO_XREF
afterinstall: .PHONY
	@if type kldxref >/dev/null 2>&1; then \
		${ECHO} ${KLDXREF_CMD} ${DESTDIR}${KMODDIR}; \
		${KLDXREF_CMD} ${DESTDIR}${KMODDIR}; \
	fi
.endif

KMODS?=	${DEFAULT_KMODS}

.for var in ${KMODS}
.if empty(_VALID_KMODS:M${var})
_INVALID_KMODS+=	${var}
.endif
.if empty(DEFAULT_KMODS:M${var})
_INVALID_ARCH_KMODS+=	${var}
.endif
.endfor
.if !empty(_INVALID_KMODS)
.error "Unknown drm kmod ${_INVALID_KMODS}"
.endif
.if !empty(_INVALID_ARCH_KMODS)
.error "${_INVALID_ARCH_KMODS} aren't supported on this architecture"
.endif

SUBDIR=	${KMODS}

.include <bsd.subdir.mk>
