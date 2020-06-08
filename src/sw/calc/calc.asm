	include "p18f1320.inc" ;include the defaults for the chip
  include "calc.inc"



	udata
v_adcfwd_mV res 2
v_adcref_mV res 2
v_calc_n_fwd res 1
v_calc_n_ref res 1
v_calc_adc_lsb res 1
IFDEF TEST
v_calc_port res 1
ENDIF
v_calctmp res 2
v_calc_eep_fwd res 2
v_calc_eep_ref res 2
v_calc_V_fwd res 2
v_calc_V_ref res 2
v_calc_d_fwd res 2
v_calc_d_ref res 2
v_calc_pas res 2
v_calc_count



	extern v_adcfwd
	extern v_adcref

	code
IFDEF TEST

f_calc_mul
	MOVLW   0x08
  MOVWF   v_calc_count

_f_calc_mul_loop
  RRCF     v_calc_adc_lsb, F
  BTFSC   STATUS,C
  GOTO    _f_calc_mul2
  DECFSZ  v_calc_count, F
  GOTO    _f_calc_mul_loop

  CLRF    v_calc_d_fwd
  CLRF    v_calc_d_fwd+1
  RETLW   0x00

_f_calc_mul2
  BCF    STATUS,C
  GOTO    _f_calc_mul3

_f_calc_mul_loop2
  RRCF     v_calc_adc_lsb, F
  BTFSS  STATUS,C
  GOTO    _f_calc_mul3
  MOVF    v_calctmp+1,W
  ADDWF   v_calc_d_fwd+1, F
  MOVF    v_calctmp,W
  BTFSC  STATUS,C
  INCFSZ  v_calctmp,W
  ADDWF   v_calc_d_fwd, F
_f_calc_mul3
  rrcf     v_calc_d_fwd, F
  rrcf     v_calc_d_fwd+1, F
  ;RRF     AARGB2, F
  DECFSZ  v_calc_count, F
  GOTO    _f_calc_mul_loop2

	return

f_calc_init
	;Port = FWD
	clrf v_calc_port
	bsf v_calc_port,PORT_BIT ;Port=FWD
	movlw 0x01
	movwf v_calc_n_fwd
	movwf v_calc_n_ref
	return

f_calc_set_n_max_fwd
	movlw N_MAX
	movwf v_calc_n_fwd
	return

f_calc_set_n_min_fwd
	movlw N_MIN
	movwf v_calc_n_fwd
	return

f_calc_set_n_max_ref
	movlw N_MAX
	movwf v_calc_n_ref
	return

f_calc_set_n_min_ref
	movlw N_MIN
	movwf v_calc_n_ref
	return

;-----------------------------------------
;Fonction Convertir la mesure des ADC en mV
;Nom 		;
;Paramètres entrée
;	v_adcfwd (2bytes) : résultat de l'ADC AN0 sur 10 bits
;	v_adcref (2bytes) : résultat de l'ADC AN1 sur 10 bits
;Paramètres sorties
;	v_adcfwd_mV (2bytes) : résultat de l'ADC en mV en hexa
;	v_adcref_mV (2bytes) : résultat de l'ADC en mV en hexa
;Traitements
;-----------------------------------------
f_calc_vadc_fwd_and_ref
	movf v_adcfwd,W
	movwf v_adcfwd_mV
	movf v_adcfwd+1,W
	movwf v_adcfwd_mV+1

	movf v_adcref,W
	movwf v_adcref_mV
	movf v_adcref+1,W
	movwf v_adcref_mV+1
	return
ENDIF

f_calc_get_eep_value
	movff v_adcfwd,v_calc_eep_fwd
	movff v_adcfwd+1,v_calc_eep_fwd+1
	movff v_adcref,v_calc_eep_ref
	movff v_adcref+1,v_calc_eep_ref+1
	return

f_calc_partie_entiere
	movff v_calc_eep_fwd,v_calc_V_fwd
	movff v_calc_eep_fwd+1,v_calc_V_fwd+1
	movff v_calc_eep_ref,v_calc_V_ref
	movff v_calc_eep_ref+1,v_calc_V_ref+1
	movff v_calc_n_fwd,v_calctmp
	movlw 0x00
	cpfsgt v_calctmp
	goto _f_calc_partie_entiere3
_f_calc_partie_entiere2
	bcf STATUS,0
	rrcf v_calc_V_fwd,f
	rrcf v_calc_V_fwd+1,f
	decfsz v_calctmp,f
	goto _f_calc_partie_entiere2
_f_calc_partie_entiere3
	movff v_calc_n_ref,v_calctmp
	movlw 0x00
	cpfsgt v_calctmp
	goto _f_calc_partie_entiere5
_f_calc_partie_entiere4
	bcf STATUS,0
	rrcf v_calc_V_ref,f
	rrcf v_calc_V_ref+1,f
	decfsz v_calctmp,f
	goto _f_calc_partie_entiere4
_f_calc_partie_entiere5
	return

f_calc_position_virgule
	return

f_calc_partie_decimale
	movf	v_calc_n_fwd,w
	xorlw	D'0'
	btfsc	STATUS,Z
	goto _f_calc_partie_decimale0
	movf	v_calc_n_fwd,w
	xorlw	D'1'
	btfsc	STATUS,Z
	goto _f_calc_partie_decimale1
	movf	v_calc_n_fwd,w
	xorlw	D'2'
	btfsc	STATUS,Z
	goto _f_calc_partie_decimale2
	movf	v_calc_n_fwd,w
	xorlw	D'3'
	btfsc	STATUS,Z
	goto _f_calc_partie_decimale3
	movf	v_calc_n_fwd,w
	xorlw	D'4'
	btfsc	STATUS,Z
	goto _f_calc_partie_decimale4


_f_calc_partie_decimale0
	movlw PAS_0_MSB
	movwf v_calc_pas
	movlw PAS_0_LSB
	movwf v_calc_pas+1
	movf v_adcfwd+1,w
	andlw 0x00
	goto _f_calc_partie_decimale5
_f_calc_partie_decimale1
	movlw PAS_0_5_MSB
	movwf v_calc_pas
	movlw PAS_0_5_LSB
	movwf v_calc_pas+1
	movf v_adcfwd+1,w
	andlw 0x01
	goto _f_calc_partie_decimale5
_f_calc_partie_decimale2
	movlw PAS_0_25_MSB
	movwf v_calc_pas
	movlw PAS_0_25_LSB
	movwf v_calc_pas+1
	movf v_adcfwd+1,w
	andlw 0x03
	goto _f_calc_partie_decimale5
_f_calc_partie_decimale3
	movlw PAS_0_125_MSB
	movwf v_calc_pas
	movlw PAS_0_125_LSB
	movwf v_calc_pas+1
	movf v_adcfwd+1,w
	andlw 0x07
	goto _f_calc_partie_decimale5
_f_calc_partie_decimale4
	movlw PAS_0_0625_MSB
	movwf v_calc_pas
	movlw PAS_0_0625_LSB
	movwf v_calc_pas+1
	movf v_adcfwd+1,w
	andlw 0x0F


_f_calc_partie_decimale5
	movwf v_calc_adc_lsb
	call f_calc_mul
	movff v_calc_pas,v_calc_d_fwd
	movff v_calc_pas+1,v_calc_d_fwd+1
	return


IFDEF TEST
	global f_calc_vadc_fwd_and_ref
	global v_calc_port
	global f_calc_init
	global f_calc_set_n_min_fwd
	global f_calc_set_n_max_fwd
	global f_calc_set_n_min_ref
	global f_calc_set_n_max_ref
	global f_calc_get_eep_value
	global f_calc_partie_entiere
	global f_calc_position_virgule
	global f_calc_partie_decimale
ENDIF
	global v_adcfwd_mV
	global v_adcref_mV
	global v_calc_n_fwd
	global v_calc_n_ref
	global v_calc_V_fwd
	global v_calc_V_ref
	global v_calc_d_fwd
	global v_calc_d_ref


	end
