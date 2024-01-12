# $FreeBSD$

.if !defined(OSVERSION)
OSVERSION!=	awk '/^\#define[[:blank:]]__FreeBSD_version/ {print $$3}' ${SYSDIR}/sys/param.h 
.endif

_VALID_AMDGPUKMODS=	aldebaran \
			arcturus \
			banks \
			beige_goby \
			bonaire \
			carrizo \
			cyan_skillfish2 \
			dcn_3_1_4 \
			dcn_3_1_5 \
			dcn_3_1_6 \
			dcn_3_2_0 \
			dcn_3_2_1 \
			fiji \
			gc_10_3_6 \
			gc_10_3_7 \
			gc_11_0_0 \
			gc_11_0_1 \
			gc_11_0_2 \
			gc_11_0_3 \
			gc_11_0_4 \
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
			psp_13_0_0 \
			psp_13_0_4 \
			psp_13_0_5 \
			psp_13_0_7 \
			psp_13_0_8 \
			psp_13_0_10 \
			psp_13_0_11 \
			raven \
			raven2 \
			renoir \
			sdma_5_2_6 \
			sdma_5_2_7 \
			sdma_6_0_0 \
			sdma_6_0_1 \
			sdma_6_0_2 \
			sdma_6_0_3 \
			sdma_6_0_4 \
			si58 \
			smu_13_0_0 \
			smu_13_0_7 \
			smu_13_0_10 \
			stoney \
			tahiti \
			tonga \
			topaz \
			vcn_3_1_2 \
			vcn_4_0_0 \
			vcn_4_0_2 \
			vcn_4_0_4 \
			vega10 \
			vega12 \
			vega20 \
			vegam \
			verde \
			yellow_carp

.if ${OSVERSION} >= 1301000
_VALID_AMDGPUKMODS+=	dimgrey_cavefish \
			green_sardine \
			sienna_cichlid \
			navy_flounder \
			vangogh
.endif

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

.if ${AMDGPUKMODS:Mgc_10_3_6}
SUBDIR+=	gc_10_3_6_ce	\
		gc_10_3_6_me	\
		gc_10_3_6_mec	\
		gc_10_3_6_mec2	\
		gc_10_3_6_pfp	\
		gc_10_3_6_rlc
.endif

.if ${AMDGPUKMODS:Mgc_10_3_7}
SUBDIR+=	gc_10_3_7_ce	\
		gc_10_3_7_me	\
		gc_10_3_7_mec	\
		gc_10_3_7_mec2	\
		gc_10_3_7_pfp	\
		gc_10_3_7_rlc
.endif

.if ${AMDGPUKMODS:Mgc_11_0_0}
SUBDIR+=	gc_11_0_0_imu	\
		gc_11_0_0_me	\
		gc_11_0_0_mec	\
		gc_11_0_0_mes	\
		gc_11_0_0_mes1	\
		gc_11_0_0_mes_2	\
		gc_11_0_0_pfp	\
		gc_11_0_0_rlc
.endif

.if ${AMDGPUKMODS:Mgc_11_0_1}
SUBDIR+=	gc_11_0_1_imu	\
		gc_11_0_1_me	\
		gc_11_0_1_mec	\
		gc_11_0_1_mes	\
		gc_11_0_1_mes1	\
		gc_11_0_1_mes_2	\
		gc_11_0_1_pfp	\
		gc_11_0_1_rlc
.endif

.if ${AMDGPUKMODS:Mgc_11_0_2}
SUBDIR+=	gc_11_0_2_imu	\
		gc_11_0_2_me	\
		gc_11_0_2_mec	\
		gc_11_0_2_mes	\
		gc_11_0_2_mes1	\
		gc_11_0_2_mes_2	\
		gc_11_0_2_pfp	\
		gc_11_0_2_rlc
.endif

.if ${AMDGPUKMODS:Mgc_11_0_3}
SUBDIR+=	gc_11_0_3_imu	\
		gc_11_0_3_me	\
		gc_11_0_3_mec	\
		gc_11_0_3_mes1	\
		gc_11_0_3_mes_2	\
		gc_11_0_3_pfp	\
		gc_11_0_3_rlc
.endif

.if ${AMDGPUKMODS:Mgc_11_0_4}
SUBDIR+=	gc_11_0_4_imu	\
		gc_11_0_4_me	\
		gc_11_0_4_mec	\
		gc_11_0_4_mes	\
		gc_11_0_4_mes1	\
		gc_11_0_4_mes_2	\
		gc_11_0_4_pfp	\
		gc_11_0_4_rlc
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
		polaris12_32_mc		\
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

.if ${AMDGPUKMODS:Marcturus}
SUBDIR+=	arcturus_asd		\
		arcturus_mec		\
		arcturus_rlc		\
		arcturus_smc		\
		arcturus_ta		\
		arcturus_gpu_info	\
		arcturus_mec2		\
		arcturus_sdma		\
		arcturus_sos		\
		arcturus_vcn
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

## GFX10/RDNA2
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

.if ${AMDGPUKMODS:Msienna_cichlid}
SUBDIR+=	sienna_cichlid_ce	\
		sienna_cichlid_dmcub	\
		sienna_cichlid_me	\
		sienna_cichlid_mec	\
		sienna_cichlid_mec2	\
		sienna_cichlid_pfp	\
		sienna_cichlid_rlc	\
		sienna_cichlid_sdma	\
		sienna_cichlid_smc	\
		sienna_cichlid_sos	\
		sienna_cichlid_ta	\
		sienna_cichlid_vcn
.endif

.if ${AMDGPUKMODS:Mnavy_flounder}
SUBDIR+=	navy_flounder_ce	\
		navy_flounder_me	\
		navy_flounder_mec2	\
		navy_flounder_rlc	\
		navy_flounder_smc	\
		navy_flounder_ta	\
		navy_flounder_dmcub	\
		navy_flounder_mec	\
		navy_flounder_pfp	\
		navy_flounder_sdma	\
		navy_flounder_sos	\
		navy_flounder_vcn
.endif

.if ${AMDGPUKMODS:Mdimgrey_cavefish}
SUBDIR+=	dimgrey_cavefish_ce	\
		dimgrey_cavefish_me	\
		dimgrey_cavefish_mec2	\
		dimgrey_cavefish_rlc	\
		dimgrey_cavefish_smc	\
		dimgrey_cavefish_ta	\
		dimgrey_cavefish_dmcub	\
		dimgrey_cavefish_mec	\
		dimgrey_cavefish_pfp	\
		dimgrey_cavefish_sdma	\
		dimgrey_cavefish_sos	\
		dimgrey_cavefish_vcn
.endif

.if ${AMDGPUKMODS:Mvangogh}
SUBDIR+=	vangogh_asd \
		vangogh_ce \
		vangogh_dmcub \
		vangogh_me \
		vangogh_mec \
		vangogh_mec2 \
		vangogh_pfp \
		vangogh_rlc \
		vangogh_sdma \
		vangogh_toc \
		vangogh_vcn
.endif

.if ${AMDGPUKMODS:Maldebaran}
SUBDIR+=	aldebaran_mec \
		aldebaran_mec2 \
		aldebaran_rlc \
		aldebaran_sdma \
		aldebaran_sjt_mec \
		aldebaran_sjt_mec2 \
		aldebaran_smc \
		aldebaran_sos \
		aldebaran_ta \
		aldebaran_vcn
.endif

.if ${AMDGPUKMODS:Mbeige_goby}
SUBDIR+=	beige_goby_ce \
		beige_goby_dmcub \
		beige_goby_me \
		beige_goby_mec \
		beige_goby_mec2 \
		beige_goby_pfp \
		beige_goby_rlc \
		beige_goby_sdma \
		beige_goby_smc \
		beige_goby_sos \
		beige_goby_ta \
		beige_goby_vcn
.endif

.if ${AMDGPUKMODS:Mcyan_skillfish2}
SUBDIR+=	cyan_skillfish2_ce \
		cyan_skillfish2_me \
		cyan_skillfish2_mec \
		cyan_skillfish2_mec2 \
		cyan_skillfish2_pfp \
		cyan_skillfish2_rlc \
		cyan_skillfish2_sdma \
		cyan_skillfish2_sdma1
.endif

.if ${AMDGPUKMODS:Myellow_carp}
SUBDIR+=	yellow_carp_asd \
		yellow_carp_ce \
		yellow_carp_dmcub \
		yellow_carp_me \
		yellow_carp_mec \
		yellow_carp_mec2 \
		yellow_carp_pfp \
		yellow_carp_rlc \
		yellow_carp_sdma \
		yellow_carp_ta \
		yellow_carp_toc \
		yellow_carp_vcn
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_0}
SUBDIR+=	psp_13_0_0_sos \
		psp_13_0_0_ta
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_4}
SUBDIR+=	psp_13_0_4_ta \
		psp_13_0_4_toc
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_5}
SUBDIR+=	psp_13_0_5_asd \
		psp_13_0_5_ta \
		psp_13_0_5_toc
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_7}
SUBDIR+=	psp_13_0_7_sos \
		psp_13_0_7_ta
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_8}
SUBDIR+=	psp_13_0_8_asd \
		psp_13_0_8_ta \
		psp_13_0_8_toc
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_10}
SUBDIR+=	psp_13_0_10_sos \
		psp_13_0_10_ta
.endif

.if ${AMDGPUKMODS:Mpsp_13_0_11}
SUBDIR+=	psp_13_0_11_ta \
		psp_13_0_11_toc
.endif

.if ${AMDGPUKMODS:Msdma_5_2_6}
SUBDIR+=	sdma_5_2_6
.endif

.if ${AMDGPUKMODS:Msdma_5_2_7}
SUBDIR+=	sdma_5_2_7
.endif

.if ${AMDGPUKMODS:Msdma_6_0_0}
SUBDIR+=	sdma_6_0_0
.endif

.if ${AMDGPUKMODS:Msdma_6_0_1}
SUBDIR+=	sdma_6_0_1
.endif

.if ${AMDGPUKMODS:Msdma_6_0_2}
SUBDIR+=	sdma_6_0_2
.endif

.if ${AMDGPUKMODS:Msdma_6_0_3}
SUBDIR+=	sdma_6_0_3
.endif

.if ${AMDGPUKMODS:Msmu_13_0_0}
SUBDIR+=	smu_13_0_0
.endif

.if ${AMDGPUKMODS:Msmu_13_0_7}
SUBDIR+=	smu_13_0_7
.endif

.if ${AMDGPUKMODS:Msmu_13_0_10}
SUBDIR+=	smu_13_0_10
.endif

.if ${AMDGPUKMODS:Mvcn_3_1_2}
SUBDIR+=	vcn_3_1_2
.endif

.if ${AMDGPUKMODS:Mvcn_4_0_0}
SUBDIR+=	vcn_4_0_0
.endif

.if ${AMDGPUKMODS:Mvcn_4_0_2}
SUBDIR+=	vcn_4_0_2
.endif

.if ${AMDGPUKMODS:Mvcn_4_0_4}
SUBDIR+=	vcn_4_0_4
.endif

.if ${AMDGPUKMODS:Mdcn_3_1_4}
SUBDIR+=	dcn_3_1_4_dmcub
.endif

.if ${AMDGPUKMODS:Mdcn_3_1_5}
SUBDIR+=	dcn_3_1_5_dmcub
.endif

.if ${AMDGPUKMODS:Mdcn_3_1_6}
SUBDIR+=	dcn_3_1_6_dmcub
.endif

.if ${AMDGPUKMODS:Mdcn_3_2_0}
SUBDIR+=	dcn_3_2_0_dmcub
.endif

.if ${AMDGPUKMODS:Mdcn_3_2_1}
SUBDIR+=	dcn_3_2_1_dmcub
.endif

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
