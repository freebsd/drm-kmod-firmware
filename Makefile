# $FreeBSD$

SYSDIR?=/usr/src/sys
.include "${SYSDIR}/conf/kern.opts.mk"

.if ${MACHINE_CPUARCH} == "amd64"
_amdgpukmsfw=	amdgpukmsfw
_i915kmsfw=	i915kmsfw
_radeonkmsfw=	radeonkmsfw
.endif

SUBDIR = \
	${_i915kmsfw} \
	${_amdgpukmsfw} \
	${_radeonkmsfw}

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
