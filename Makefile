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

.include <bsd.subdir.mk>
