# $FreeBSD$

_VALID_I915KMODS=skylake broxton kabylake geminilake cannonlake \
	icelake elkhartlake tigerlake rocketlake alderlake \
	dg1 dg2

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
		sklguc_3300 \
		sklhuc_200
.endif

.if ${I915KMODS:Mbroxton}
SUBDIR+=	bxtdmc_107 \
		bxtguc_3300 \
		bxthuc_200
.endif

.if ${I915KMODS:Mkabylake}
SUBDIR+=	kbldmc_104 \
		kblguc_3300 \
		kblhuc_400 \
		cmlguc_3300 \
		cmlguc_7011 \
		cmlhuc_400
.endif

.if ${I915KMODS:Mgeminilake}
SUBDIR+=	glkdmc_104 \
		glkguc_3300 \
		glkhuc_400
.endif

.if ${I915KMODS:Mcannonlake}
SUBDIR+=	cnldmc_107
.endif

.if ${I915KMODS:Micelake}
SUBDIR+=	icldmc_109 \
		iclguc_3300 \
		iclhuc_900
.endif

.if ${I915KMODS:Melkhartlake}
SUBDIR+=	ehlguc_3304 \
		ehlhuc_900
.endif

.if ${I915KMODS:Mtigerlake}
SUBDIR+=	tgldmc_208 \
		tgldmc_212 \
		tglguc_3520 \
		tglguc_6903 \
		tglguc_7011 \
		tglguc_70 \
		tglhuc_750 \
		tglhuc_793
.endif

.if ${I915KMODS:Mrocketlake}
SUBDIR+=	rkldmc_202 \
		rkldmc_203
.endif

.if ${I915KMODS:Malderlake}
SUBDIR+=	adlsdmc_201 \
		adlpdmc_210 \
		adlpdmc_216 \
		adlpguc_70
.endif

.if ${I915KMODS:Mdg1}
SUBDIR+=	dg1dmc_202 \
		dg1guc_6200 \
		dg1guc_70 \
		dg1huc
.endif

.if ${I915KMODS:Mdg2}
SUBDIR+=	dg2dmc_207 \
		dg2guc_70
.endif

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
