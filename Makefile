# $FreeBSD$

SYSDIR?=${.CURDIR}/../..
.include "${SYSDIR}/conf/kern.opts.mk"

.if ${MACHINE_CPUARCH} == "amd64"
_amdgpukmsfw=	amdgpukmsfw
_i915kmsfw=	i915kmsfw
.endif

SUBDIR = \
	${_i915kmsfw} \
	${_amdgpukmsfw}

.include <bsd.subdir.mk>
