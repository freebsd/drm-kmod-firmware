# $FreeBSD$

SYSDIR?=${.CURDIR}/../..
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

.include <bsd.subdir.mk>
