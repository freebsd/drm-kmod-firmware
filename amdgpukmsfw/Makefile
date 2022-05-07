# $FreeBSD$

_VALID_AMDGPUKMODS=	banks \
			bonaire \
			carrizo \
			fiji \
			green_sardine \
			hainan \
			hawaii \
			kabini \
			kaveri \
			mullins \
			navi10 \
			navi12 \
			navi14 \
			oland \
			picasso \
			pitcairn \
			polaris10 \
			polaris11 \
			polaris12 \
			raven \
			raven2 \
			renoir \
			si58 \
			stoney \
			tahiti \
			tonga \
			topaz \
			vega10 \
			vega12 \
			vega20 \
			vegam \
			verde

AMDGPUKMODS?=	${_VALID_AMDGPUKMODS}

.for var in ${AMDGPUKMODS}
.if empty(_VALID_AMDGPUKMODS:M${var})
_INVALID_AMDGPU_KMODS+=	${var}
.endif
.endfor
.if !empty(_INVALID_AMDGPU_KMODS)
.error "${_INVALID_AMDGPU_KMODS} firmware doesn't exists"
.endif

## GFX6/GCN
.if ${AMDGPUKMODS:Mbanks}
SUBDIR+=	banks_k_2_smc
.endif

.if ${AMDGPUKMODS:Mhainan}
SUBDIR+=	hainan_ce	\
		hainan_k_smc	\
		hainan_mc	\
		hainan_me	\
		hainan_pfp	\
		hainan_rlc	\
		hainan_smc
.endif

.if ${AMDGPUKMODS:Moland}
SUBDIR+=	oland_ce	\
		oland_k_smc	\
		oland_mc	\
		oland_me	\
		oland_pfp	\
		oland_rlc	\
		oland_smc	\
		oland_uvd
.endif

.if ${AMDGPUKMODS:Mpitcairn}
SUBDIR+=	pitcairn_ce	\
		pitcairn_k_smc	\
		pitcairn_mc	\
		pitcairn_me	\
		pitcairn_pfp	\
		pitcairn_rlc	\
		pitcairn_smc	\
		pitcairn_uvd
.endif

.if ${AMDGPUKMODS:Msi58}
SUBDIR+=	si58_mc
.endif

.if ${AMDGPUKMODS:Mtahiti}
SUBDIR+=	tahiti_ce	\
		tahiti_k_smc	\
		tahiti_mc	\
		tahiti_me	\
		tahiti_pfp	\
		tahiti_rlc	\
		tahiti_smc	\
		tahiti_uvd
.endif

.if ${AMDGPUKMODS:Mverde}
SUBDIR+=	verde_ce	\
		verde_k_smc	\
		verde_mc	\
		verde_me	\
		verde_pfp	\
		verde_rlc	\
		verde_smc	\
		verde_uvd
.endif

## GFX7/GCN
.if ${AMDGPUKMODS:Mbonaire}
SUBDIR+=	bonaire_ce	\
		bonaire_k_smc	\
		bonaire_mc	\
		bonaire_me	\
		bonaire_mec	\
		bonaire_pfp	\
		bonaire_rlc	\
		bonaire_sdma	\
		bonaire_sdma1	\
		bonaire_smc	\
		bonaire_uvd	\
		bonaire_vce
.endif

.if ${AMDGPUKMODS:Mhawaii}
SUBDIR+=	hawaii_ce	\
		hawaii_k_smc	\
		hawaii_mc	\
		hawaii_me	\
		hawaii_mec	\
		hawaii_pfp	\
		hawaii_rlc	\
		hawaii_sdma	\
		hawaii_sdma1	\
		hawaii_smc	\
		hawaii_uvd	\
		hawaii_vce
.endif

.if ${AMDGPUKMODS:Mkabini}
SUBDIR+=	kabini_ce	\
		kabini_me	\
		kabini_mec	\
		kabini_pfp	\
		kabini_rlc	\
		kabini_sdma	\
		kabini_sdma1	\
		kabini_uvd	\
		kabini_vce
.endif

.if ${AMDGPUKMODS:Mkaveri}
SUBDIR+=	kaveri_ce	\
		kaveri_me	\
		kaveri_mec	\
		kaveri_mec2	\
		kaveri_pfp	\
		kaveri_rlc	\
		kaveri_sdma	\
		kaveri_sdma1	\
		kaveri_uvd	\
		kaveri_vce
.endif

.if ${AMDGPUKMODS:Mmullins}
SUBDIR+=	mullins_ce	\
		mullins_me	\
		mullins_mec	\
		mullins_pfp	\
		mullins_rlc	\
		mullins_sdma	\
		mullins_sdma1	\
		mullins_uvd	\
		mullins_vce
.endif

## GFX8/gcn
.if ${AMDGPUKMODS:Mcarrizo}
SUBDIR+=	carrizo_ce	\
		carrizo_me	\
		carrizo_mec	\
		carrizo_mec2	\
		carrizo_pfp	\
		carrizo_rlc	\
		carrizo_sdma	\
		carrizo_sdma1	\
		carrizo_uvd	\
		carrizo_vce
.endif

.if ${AMDGPUKMODS:Mfiji}
SUBDIR+=	fiji_ce		\
		fiji_mc		\
		fiji_me		\
		fiji_mec	\
		fiji_mec2	\
		fiji_pfp	\
		fiji_rlc	\
		fiji_sdma	\
		fiji_sdma1	\
		fiji_smc	\
		fiji_uvd	\
		fiji_vce
.endif

.if ${AMDGPUKMODS:Mpolaris10}
SUBDIR+=	polaris10_ce		\
		polaris10_ce_2		\
		polaris10_k2_smc	\
		polaris10_k_mc		\
		polaris10_k_smc		\
		polaris10_mc		\
		polaris10_me		\
		polaris10_me_2		\
		polaris10_mec		\
		polaris10_mec2		\
		polaris10_mec2_2	\
		polaris10_mec_2		\
		polaris10_pfp		\
		polaris10_pfp_2		\
		polaris10_rlc		\
		polaris10_sdma		\
		polaris10_sdma1		\
		polaris10_smc		\
		polaris10_smc_sk	\
		polaris10_uvd		\
		polaris10_vce
.endif

.if ${AMDGPUKMODS:Mpolaris11}
SUBDIR+=	polaris11_ce		\
		polaris11_ce_2		\
		polaris11_k2_smc	\
		polaris11_k_mc		\
		polaris11_k_smc		\
		polaris11_mc		\
		polaris11_me		\
		polaris11_me_2		\
		polaris11_mec		\
		polaris11_mec2		\
		polaris11_mec2_2	\
		polaris11_mec_2		\
		polaris11_pfp		\
		polaris11_pfp_2		\
		polaris11_rlc		\
		polaris11_sdma		\
		polaris11_sdma1		\
		polaris11_smc		\
		polaris11_smc_sk	\
		polaris11_uvd		\
		polaris11_vce
.endif

.if ${AMDGPUKMODS:Mpolaris12}
SUBDIR+=	polaris12_ce		\
		polaris12_ce_2		\
		polaris12_k_mc		\
		polaris12_k_smc		\
		polaris12_mc		\
		polaris12_me		\
		polaris12_me_2		\
		polaris12_mec		\
		polaris12_mec2		\
		polaris12_mec2_2	\
		polaris12_mec_2		\
		polaris12_pfp		\
		polaris12_pfp_2		\
		polaris12_rlc		\
		polaris12_sdma		\
		polaris12_sdma1		\
		polaris12_smc		\
		polaris12_uvd		\
		polaris12_vce
.endif

.if ${AMDGPUKMODS:Mstoney}
SUBDIR+=	stoney_ce	\
		stoney_me	\
		stoney_mec	\
		stoney_pfp	\
		stoney_rlc	\
		stoney_sdma	\
		stoney_uvd	\
		stoney_vce
.endif

.if ${AMDGPUKMODS:Mtonga}
SUBDIR+=	tonga_ce	\
		tonga_k_smc	\
		tonga_mc	\
		tonga_me	\
		tonga_mec	\
		tonga_mec2	\
		tonga_pfp	\
		tonga_rlc	\
		tonga_sdma	\
		tonga_sdma1	\
		tonga_smc	\
		tonga_uvd	\
		tonga_vce
.endif

.if ${AMDGPUKMODS:Mtopaz}
SUBDIR+=	topaz_ce	\
		topaz_k_smc	\
		topaz_mc	\
		topaz_me	\
		topaz_mec	\
		topaz_mec2	\
		topaz_pfp	\
		topaz_rlc	\
		topaz_sdma	\
		topaz_sdma1	\
		topaz_smc
.endif

.if ${AMDGPUKMODS:Mvegam}
SUBDIR+=	vegam_ce	\
		vegam_me	\
		vegam_mec	\
		vegam_mec2	\
		vegam_pfp	\
		vegam_rlc	\
		vegam_sdma	\
		vegam_sdma1	\
		vegam_smc	\
		vegam_uvd	\
		vegam_vce
.endif

## GFX9/GCN
.if ${AMDGPUKMODS:Mgreen_sardine}
SUBDIR+=	green_sardine_asd	\
		green_sardine_ce	\
		green_sardine_dmcub	\
		green_sardine_me	\
		green_sardine_mec	\
		green_sardine_mec2	\
		green_sardine_pfp	\
		green_sardine_rlc	\
		green_sardine_sdma	\
		green_sardine_ta	\
		green_sardine_vcn
.endif

.if ${AMDGPUKMODS:Mpicasso}
SUBDIR+=	picasso_asd		\
		picasso_ce		\
		picasso_gpu_info	\
		picasso_me		\
		picasso_mec		\
		picasso_mec2		\
		picasso_pfp		\
		picasso_rlc		\
		picasso_rlc_am4		\
		picasso_sdma		\
		picasso_ta		\
		picasso_vcn
.endif

.if ${AMDGPUKMODS:Mraven}
SUBDIR+=	raven_asd		\
		raven_ce		\
		raven_dmcu		\
		raven_gpu_info		\
		raven_kicker_rlc	\
		raven_me		\
		raven_mec		\
		raven_mec2		\
		raven_pfp		\
		raven_rlc		\
		raven_sdma		\
		raven_ta		\
		raven_vcn
.endif

.if ${AMDGPUKMODS:Mraven2}
SUBDIR+=	raven2_asd	\
		raven2_ce	\
		raven2_gpu_info	\
		raven2_me	\
		raven2_mec	\
		raven2_mec2	\
		raven2_pfp	\
		raven2_rlc	\
		raven2_sdma	\
		raven2_ta	\
		raven2_vcn
.endif

.if ${AMDGPUKMODS:Mrenoir}
SUBDIR+=	renoir_asd	\
		renoir_ce	\
		renoir_dmcub	\
		renoir_gpu_info	\
		renoir_me	\
		renoir_mec	\
		renoir_mec2	\
		renoir_pfp	\
		renoir_rlc	\
		renoir_sdma	\
		renoir_ta	\
		renoir_vcn
.endif

.if ${AMDGPUKMODS:Mvega10}
SUBDIR+=	vega10_acg_smc	\
		vega10_asd	\
		vega10_ce	\
		vega10_gpu_info	\
		vega10_me	\
		vega10_mec	\
		vega10_mec2	\
		vega10_pfp	\
		vega10_rlc	\
		vega10_sdma	\
		vega10_sdma1	\
		vega10_smc	\
		vega10_sos	\
		vega10_uvd	\
		vega10_vce
.endif

.if ${AMDGPUKMODS:Mvega12}
SUBDIR+=	vega12_asd	\
		vega12_ce	\
		vega12_gpu_info	\
		vega12_me	\
		vega12_mec	\
		vega12_mec2	\
		vega12_pfp	\
		vega12_rlc	\
		vega12_sdma	\
		vega12_sdma1	\
		vega12_smc	\
		vega12_sos	\
		vega12_uvd	\
		vega12_vce
.endif

.if ${AMDGPUKMODS:Mvega20}
SUBDIR+=	vega20_asd	\
		vega20_ce	\
		vega20_me	\
		vega20_mec	\
		vega20_mec2	\
		vega20_pfp	\
		vega20_rlc	\
		vega20_sdma	\
		vega20_sdma1	\
		vega20_smc	\
		vega20_sos	\
		vega20_ta	\
		vega20_uvd	\
		vega20_vce
.endif

## GFX10/RDNA
.if ${AMDGPUKMODS:Mnavi10}
SUBDIR+=	navi10_asd	\
		navi10_ce	\
		navi10_gpu_info	\
		navi10_me	\
		navi10_mec	\
		navi10_mec2	\
		navi10_pfp	\
		navi10_rlc	\
		navi10_sdma	\
		navi10_sdma1	\
		navi10_smc	\
		navi10_sos	\
		navi10_ta	\
		navi10_vcn
.endif

.if ${AMDGPUKMODS:Mnavi12}
SUBDIR+=	navi12_asd	\
		navi12_ce	\
		navi12_dmcu	\
		navi12_gpu_info	\
		navi12_me	\
		navi12_mec	\
		navi12_mec2	\
		navi12_pfp	\
		navi12_rlc	\
		navi12_sdma	\
		navi12_sdma1	\
		navi12_smc	\
		navi12_sos	\
		navi12_ta	\
		navi12_vcn
.endif

.if ${AMDGPUKMODS:Mnavi14}
SUBDIR+=	navi14_asd	\
		navi14_ce	\
		navi14_ce_wks	\
		navi14_gpu_info	\
		navi14_me	\
		navi14_me_wks	\
		navi14_mec	\
		navi14_mec2	\
		navi14_mec2_wks	\
		navi14_mec_wks	\
		navi14_pfp	\
		navi14_pfp_wks	\
		navi14_rlc	\
		navi14_sdma	\
		navi14_sdma1	\
		navi14_smc	\
		navi14_sos	\
		navi14_ta	\
		navi14_vcn
.endif

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
