_VALID_RADEONKMODS=	aruba \
			barts \
			bonaire \
			btc \
			caicos \
			cayman \
			cedar \
			cypress \
			hainan \
			hawaii \
			juniper \
			kabini \
			kaveri \
			mullins \
			oland \
			palm \
			pitcairn \
			r100 \
			r200 \
			r300 \
			r420 \
			r520 \
			r600 \
			r700 \
			redwood \
			rs600 \
			rs690 \
			rs780 \
			rv610 \
			rv620 \
			rv630 \
			rv635 \
			rv670 \
			rv710 \
			rv730 \
			rv740 \
			rv770 \
			sumo \
			sumo2 \
			tahiti \
			turks \
			verde

RADEONKMODS?=	${_VALID_RADEONKMODS}

.for var in ${RADEONKMODS}
.if empty(_VALID_RADEONKMODS:M${var})
_INVALID_RADEON_KMODS+=	${var}
.endif
.endfor
.if !empty(_INVALID_RADEON_KMODS)
.error "${_INVALID_RADEON_KMODS} firmware doesn't exists"
.endif

## GFX1
.if ${RADEONKMODS:Mr100}
SUBDIR+=	R100_cp
.endif

.if ${RADEONKMODS:Mr200}
SUBDIR+=	R200_cp
.endif

## GFX2
.if ${RADEONKMODS:Mr300}
SUBDIR+=	R300_cp
.endif

.if ${RADEONKMODS:Mr420}
SUBDIR+=	R420_cp
.endif

.if ${RADEONKMODS:Mr520}
SUBDIR+=	R520_cp
.endif

.if ${RADEONKMODS:Mrs600}
SUBDIR+=	RS600_cp
.endif

.if ${RADEONKMODS:Mrs690}
SUBDIR+=	RS690_cp
.endif

## GFX3
.if ${RADEONKMODS:Mr600}
SUBDIR+=	R600_me		\
		R600_pfp	\
		R600_rlc	\
		R600_uvd
.endif

.if ${RADEONKMODS:Mr700}
SUBDIR+=	R700_rlc
.endif

.if ${RADEONKMODS:Mrv610}
SUBDIR+=	RV610_me	\
		RV610_pfp
.endif

.if ${RADEONKMODS:Mrv620}
SUBDIR+=	RV620_me	\
		RV620_pfp
.endif

.if ${RADEONKMODS:Mrv630}
SUBDIR+=	RV630_me	\
		RV630_pfp
.endif

.if ${RADEONKMODS:Mrv635}
SUBDIR+=	RV635_me	\
		RV635_pfp
.endif

.if ${RADEONKMODS:Mrv670}
SUBDIR+=	RV670_me	\
		RV670_pfp
.endif

.if ${RADEONKMODS:Mrs780}
SUBDIR+=	RS780_me	\
		RS780_pfp	\
		RS780_uvd
.endif

.if ${RADEONKMODS:Mrv710}
SUBDIR+=	RV710_me	\
		RV710_pfp	\
		RV710_smc	\
		RV710_uvd
.endif

.if ${RADEONKMODS:Mrv730}
SUBDIR+=	RV730_me	\
		RV730_pfp	\
		RV730_smc
.endif

.if ${RADEONKMODS:Mrv740}
SUBDIR+=	RV740_smc
.endif

.if ${RADEONKMODS:Mrv770}
SUBDIR+=	RV770_me	\
		RV770_pfp	\
		RV770_smc	\
		RV770_uvd
.endif

## GFX4
.if ${RADEONKMODS:Mbarts}
SUBDIR+=	BARTS_mc	\
		BARTS_me	\
		BARTS_pfp	\
		BARTS_smc
.endif

.if ${RADEONKMODS:Mcaicos}
SUBDIR+=	CAICOS_mc	\
		CAICOS_me	\
		CAICOS_pfp	\
		CAICOS_smc
.endif

.if ${RADEONKMODS:Mcedar}
SUBDIR+=	CEDAR_me	\
		CEDAR_pfp	\
		CEDAR_rlc	\
		CEDAR_smc
.endif

.if ${RADEONKMODS:Mcypress}
SUBDIR+=	CYPRESS_me	\
		CYPRESS_pfp	\
		CYPRESS_rlc	\
		CYPRESS_smc	\
		CYPRESS_uvd
.endif

.if ${RADEONKMODS:Mjuniper}
SUBDIR+=	JUNIPER_me	\
		JUNIPER_pfp	\
		JUNIPER_rlc	\
		JUNIPER_smc
.endif

.if ${RADEONKMODS:Mpalm}
SUBDIR+=	PALM_me	\
		PALM_pfp
.endif

.if ${RADEONKMODS:Mredwood}
SUBDIR+=	REDWOOD_me	\
		REDWOOD_pfp	\
		REDWOOD_rlc	\
		REDWOOD_smc
.endif

.if ${RADEONKMODS:Msumo}
SUBDIR+=	SUMO_me		\
		SUMO_pfp	\
		SUMO_rlc	\
		SUMO_uvd
.endif

.if ${RADEONKMODS:Msumo2}
SUBDIR+=	SUMO2_me	\
		SUMO2_pfp
.endif

.if ${RADEONKMODS:Mturks}
SUBDIR+=	TURKS_mc	\
		TURKS_me	\
		TURKS_pfp	\
		TURKS_smc
.endif

## GFX5

.if ${RADEONKMODS:Maruba}
SUBDIR+=	ARUBA_me	\
		ARUBA_pfp	\
		ARUBA_rlc
.endif

.if ${RADEONKMODS:Mbtc}
SUBDIR+=	BTC_rlc
.endif

.if ${RADEONKMODS:Mcayman}
SUBDIR+=	CAYMAN_mc	\
		CAYMAN_me	\
		CAYMAN_pfp	\
		CAYMAN_rlc	\
		CAYMAN_smc
.endif

## GFX6
.if ${RADEONKMODS:Mhainan}
SUBDIR+=	HAINAN_ce	\
		HAINAN_mc	\
		HAINAN_mc2	\
		HAINAN_me	\
		HAINAN_pfp	\
		HAINAN_rlc	\
		HAINAN_smc	\
		hainan_ce	\
		hainan_k_smc	\
		hainan_mc	\
		hainan_me	\
		hainan_pfp	\
		hainan_rlc	\
		hainan_smc
.endif

.if ${RADEONKMODS:Moland}
SUBDIR+=	OLAND_ce	\
		OLAND_mc	\
		OLAND_mc2	\
		OLAND_me	\
		OLAND_pfp	\
		OLAND_rlc	\
		OLAND_smc	\
		oland_ce	\
		oland_k_smc	\
		oland_mc	\
		oland_me	\
		oland_pfp	\
		oland_rlc	\
		oland_smc
.endif

.if ${RADEONKMODS:Mpitcairn}
SUBDIR+=	PITCAIRN_ce	\
		PITCAIRN_mc	\
		PITCAIRN_mc2	\
		PITCAIRN_me	\
		PITCAIRN_pfp	\
		PITCAIRN_rlc	\
		PITCAIRN_smc	\
		pitcairn_ce	\
		pitcairn_k_smc	\
		pitcairn_mc	\
		pitcairn_me	\
		pitcairn_pfp	\
		pitcairn_rlc	\
		pitcairn_smc
.endif

.if ${RADEONKMODS:Mtahiti}
SUBDIR+=	TAHITI_ce	\
		TAHITI_mc	\
		TAHITI_mc2	\
		TAHITI_me	\
		TAHITI_pfp	\
		TAHITI_rlc	\
		TAHITI_smc	\
		TAHITI_uvd	\
		TAHITI_vce	\
		tahiti_ce	\
		tahiti_k_smc	\
		tahiti_mc	\
		tahiti_me	\
		tahiti_pfp	\
		tahiti_rlc	\
		tahiti_smc
.endif

.if ${RADEONKMODS:Mverde}
SUBDIR+=	VERDE_ce	\
		VERDE_mc	\
		VERDE_mc2	\
		VERDE_me	\
		VERDE_pfp	\
		VERDE_rlc	\
		VERDE_smc	\
		verde_ce	\
		verde_k_smc	\
		verde_mc	\
		verde_me	\
		verde_pfp	\
		verde_rlc	\
		verde_smc
.endif

## GFX7
.if ${RADEONKMODS:Mbonaire}
SUBDIR+=	BONAIRE_ce	\
		BONAIRE_mc	\
		BONAIRE_mc2	\
		BONAIRE_me	\
		BONAIRE_mec	\
		BONAIRE_pfp	\
		BONAIRE_rlc	\
		BONAIRE_sdma	\
		BONAIRE_smc	\
		BONAIRE_uvd	\
		BONAIRE_vce	\
		bonaire_ce	\
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

.if ${RADEONKMODS:Mkabini}
SUBDIR+=	KABINI_ce	\
		KABINI_me	\
		KABINI_mec	\
		KABINI_pfp	\
		KABINI_rlc	\
		KABINI_sdma	\
		kabini_ce	\
		kabini_me	\
		kabini_mec	\
		kabini_pfp	\
		kabini_rlc	\
		kabini_sdma	\
		kabini_sdma1	\
		kabini_uvd	\
		kabini_vce
.endif

.if ${RADEONKMODS:Mkaveri}
SUBDIR+=	KAVERI_ce	\
		KAVERI_me	\
		KAVERI_mec	\
		KAVERI_pfp	\
		KAVERI_rlc	\
		KAVERI_sdma	\
		kaveri_ce	\
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

.if ${RADEONKMODS:Mhawaii}
SUBDIR+=	HAWAII_ce	\
		HAWAII_mc	\
		HAWAII_mc2	\
		HAWAII_me	\
		HAWAII_mec	\
		HAWAII_pfp	\
		HAWAII_rlc	\
		HAWAII_sdma	\
		HAWAII_smc	\
		hawaii_ce	\
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

.if ${RADEONKMODS:Mmullins}
SUBDIR+=	MULLINS_ce	\
		MULLINS_me	\
		MULLINS_mec	\
		MULLINS_pfp	\
		MULLINS_rlc	\
		MULLINS_sdma	\
		mullins_ce	\
		mullins_me	\
		mullins_mec	\
		mullins_pfp	\
		mullins_rlc	\
		mullins_sdma	\
		mullins_sdma1	\
		mullins_uvd	\
		mullins_vce
.endif

SUBDIR_PARALLEL=

.include <bsd.subdir.mk>
