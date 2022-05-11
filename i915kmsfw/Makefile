# $FreeBSD$

_VALID_I915KMODS=skylake broxton kabylake geminilake coffeelake \
	icelake elkhartlake tigerlake rocketlake

I915KMODS?=	${_VALID_I915KMODS}

.for var in ${I915KMODS}
.if empty(_VALID_I915KMODS:M${var})
_INVALID_I915_KMODS+=	${var}
.endif
.endfor
.if !empty(_INVALID_I915_KMODS)
.error "${_INVALID_I915_KMODS} firmware doesn't exists"
.endif

.if ${I915KMODS:Mskylake}
SUBDIR+=	skldmc_127 \
		sklguc_933 \
		sklguc_3300 \
		sklhuc_107 \
		sklhuc_200
.endif

.if ${I915KMODS:Mbroxton}
SUBDIR+=	bxtdmc_107 \
		bxtguc_929 \
		bxtguc_3300 \
		bxthuc_107 \
		bxthuc_108 \
		bxthuc_200
.endif

.if ${I915KMODS:Mkabylake}
SUBDIR+=	kbldmc_104 \
		kblguc_939 \
		kblguc_3300 \
		kblhuc_200 \
		kblhuc_400
.endif

.if ${I915KMODS:Mgeminilake}
SUBDIR+=	glkdmc_104 \
		glkguc_3300 \
		glkhuc_301 \
		glkhuc_400
.endif

.if ${I915KMODS:Mcoffeelake}
SUBDIR+=	cnldmc_106 \
		cnldmc_107 \
		cmlguc_3300 \
		cmlhuc_400
.endif

.if ${I915KMODS:Micelake}
SUBDIR+=	icldmc_107 \
		icldmc_109 \
		iclguc_3300 \
		iclhuc_84 \
		iclhuc_900
.endif

.if ${I915KMODS:Melkhartlake}
SUBDIR+=	ehlguc_3304 \
		ehlhuc_900
.endif

.if ${I915KMODS:Mtigerlake}
SUBDIR+=	tgldmc_204 \
		tgldmc_208 \
		tglguc_3520 \
		tglhuc_703
.endif

.if ${I915KMODS:Mrocketlake}
SUBDIR+=	rkldmc_202
.endif


SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
