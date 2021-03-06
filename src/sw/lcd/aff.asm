	include "p18f1320.inc" ;include the defaults for the chip
	include "lcd.inc"
	include "eep.inc"
	include "bp.inc"
	include "calc.inc"

  	udata
v_lcd_charpos res 1
IFDEF TEST
v_lcd_hexa_to_conv res 2
v_lcd_bcd res 3
v_lcd_tmp res 1
v_lcd_string res 3 ;a priori, la taille max est de 3 : FWD, REF, ADC
v_lcd_string_len res 1
v_lcd_string_pos res 1
v_lcd_p_string res 2
v_lcd_dec res 2
ENDIF

	extern f_lcd_affchar
	extern f_lcd_setposcursor
	extern f_eep_int_readbyte
	extern c_bootmsgL1
	extern c_bootmsgL2
IFDEF TEST
	extern v_adcfwd		;
	extern v_adcref
	extern v_adcfwd_mV		;
	extern v_adcref_mV
	extern v_calc_n_fwd
	extern v_calc_n_ref
	extern c_msg_n_and_rdac
	extern v_menu
	extern v_calc_port
	extern v_calc_n_fwd
	extern v_calc_n_ref
	extern delay_10ms
	extern f_fsm_toggle_state
	extern f_lcd_convtoascii
	extern f_lcd_convtobcd
	extern v_fsm_p_param
	extern v_aop_rdac
	extern f_aop_get_rdac_fwd
	extern f_aop_get_rdac_ref
	extern v_calc_V_fwd
	extern v_calc_V_ref
	extern v_calc_d_fwd
	extern v_calc_d_ref
ENDIF


	code
IFDEF TEST
_f_lcd_aff_hexa
	movwf v_lcd_tmp
	swapf v_lcd_tmp,W
	andlw 0x0F
	call f_lcd_convtoascii
	call f_lcd_affchar
	movf v_lcd_tmp,w
	andlw 0x0F
	call f_lcd_convtoascii
	call f_lcd_affchar
	return

_f_lcd_set_fwd_string
  movlw 'F'
  movwf v_lcd_string
  movlw 'W'
  movwf v_lcd_string+1
  movlw 'D'
  movwf v_lcd_string+2
  movlw v_lcd_string
  movwf v_lcd_p_string
	movlw 0x03
	movwf v_lcd_string_len
  return

_f_lcd_set_ref_string
	movlw 'R'
	movwf v_lcd_string
	movlw 'E'
	movwf v_lcd_string+1
	movlw 'F'
	movwf v_lcd_string+2
	movlw v_lcd_string
	movwf v_lcd_p_string
	movlw 0x03
	movwf v_lcd_string_len
	return

_f_lcd_set_rdac_fwd_string
	;contenu de la chaine
	movf v_calc_n_fwd,W
	;call f_aop_get_rdac_fwd
	movf v_aop_rdac,w
	movwf v_lcd_tmp
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string
	movf v_aop_rdac+1,w
	movwf v_lcd_tmp
	swapf v_lcd_tmp,W
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string+1
	movf v_aop_rdac+1,w
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string+2
	movlw v_lcd_string
	movwf v_lcd_p_string
	;nb de char de la chaine
	movlw 0x03
	movwf v_lcd_string_len
	return

_f_lcd_set_rdac_ref_string
  ;contenu de la chaine
	movf v_calc_n_ref,W
	;call f_aop_get_rdac_ref
	movf v_aop_rdac,w
	movwf v_lcd_tmp
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string
	movf v_aop_rdac+1,w
	movwf v_lcd_tmp
	swapf v_lcd_tmp,W
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string+1
	movf v_aop_rdac+1,w
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string+2
	movlw v_lcd_string
	movwf v_lcd_p_string
	;nb de char de la chaine
	movlw 0x03
	movwf v_lcd_string_len
	return


_f_lcd_set_n_fwd_string
  ;contenu de la chaine
	movlw 0x00
	movwf v_lcd_hexa_to_conv
	movf v_calc_n_fwd,w
	movwf v_lcd_hexa_to_conv+1
	call f_lcd_convtobcd
	movf v_lcd_bcd+2,W
	movwf v_lcd_tmp
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string
	movlw v_lcd_string
	movwf v_lcd_p_string
	;nb de char de la chaine
	movlw 0x01
	movwf v_lcd_string_len
	return

_f_lcd_set_n_ref_string
	;contenu de la chaine
	movlw 0x00
	movwf v_lcd_hexa_to_conv
	movf v_calc_n_ref,w
	movwf v_lcd_hexa_to_conv+1
	call f_lcd_convtobcd
	movf v_lcd_bcd+2,W
	movwf v_lcd_tmp
	andlw 0x0F
	call f_lcd_convtoascii
	movwf v_lcd_string
	movlw v_lcd_string
	movwf v_lcd_p_string
	;nb de char de la chaine
	movlw 0x01
	movwf v_lcd_string_len
	return

_f_lcd_aff_decimal
	movff v_lcd_dec,v_lcd_hexa_to_conv
	movff v_lcd_dec+1,v_lcd_hexa_to_conv+1
	call f_lcd_convtobcd
	movf v_lcd_bcd+1,W
	call _f_lcd_aff_hexa
	movf v_lcd_bcd+2,W
	call _f_lcd_aff_hexa
	return

ENDIF

f_lcd_affboot
	movlw 0x00
	movwf v_lcd_charpos
_lcd_affboot_2
	movf v_lcd_charpos, w ; put counter value in W
	call c_bootmsgL1 ; get a character from the text table
	xorlw 0x00 ; is it a zero?
	btfsc STATUS, Z
	goto _lcd_affboot_3 ; display next message if finished
	call f_lcd_affchar
	incf v_lcd_charpos, f
	incf v_lcd_charpos, f
	goto _lcd_affboot_2
_lcd_affboot_3
	movlw 0x10
	call f_lcd_setposcursor
_lcd_affboot_4
	movlw 0x00
	movwf v_lcd_charpos
_lcd_affboot_5
	movf v_lcd_charpos, w ; put counter value in W
	call c_bootmsgL2 ; get a character from the text table
	xorlw 0x00 ; is it a zero?
	btfsc STATUS, Z
	goto _lcd_affboot_6 ; display next message if finished
	call f_lcd_affchar
	incf v_lcd_charpos, f
	incf v_lcd_charpos, f
	goto _lcd_affboot_5
_lcd_affboot_6
	movlw 0x1C
	call f_lcd_setposcursor
_lcd_affboot_7
	movlw 0x00
	movwf v_lcd_charpos
_lcd_affboot_8
	movf v_lcd_charpos,w
	call f_eep_int_readbyte
	xorlw 0x00 ; is it a zero?
	btfsc STATUS, Z
	goto _lcd_affboot_9 ; finished
	call f_lcd_affchar
	incf v_lcd_charpos, f
	goto _lcd_affboot_8
_lcd_affboot_9
	return

IFDEF TEST
f_lcd_calibrated_voltage
	movlw D'5'
	call f_lcd_setposcursor
	movff v_calc_V_fwd,v_lcd_dec
	movff v_calc_V_fwd+1,v_lcd_dec+1
	call _f_lcd_aff_decimal
	movlw '.'
	call f_lcd_affchar
	movff v_calc_d_fwd,v_lcd_hexa_to_conv
	movff v_calc_d_fwd+1,v_lcd_hexa_to_conv+1
	call f_lcd_convtobcd

	movf	v_calc_n_fwd,w
	xorlw	D'4'
	btfsc	STATUS,Z
	goto _f_lcd_calibrated_voltage3

	movlw 0x04
	movwf v_lcd_tmp

_f_lcd_calibrated_voltage2
	bcf STATUS,C
	rlcf v_lcd_bcd+2,f
	rlcf v_lcd_bcd+1,f
	decfsz v_lcd_tmp,f
	goto _f_lcd_calibrated_voltage2

_f_lcd_calibrated_voltage3
	movf v_lcd_bcd+1,W
	call _f_lcd_aff_hexa
	movf v_lcd_bcd+2,W
	call _f_lcd_aff_hexa

	movlw 'm'
	call f_lcd_affchar
	movlw 'V'
	call f_lcd_affchar

	movlw D'21'
	call f_lcd_setposcursor
	movff v_calc_V_ref,v_lcd_dec
	movff v_calc_V_ref+1,v_lcd_dec+1
	call _f_lcd_aff_decimal
	movlw '.'
	call f_lcd_affchar
	movff v_calc_d_ref,v_lcd_hexa_to_conv
	movff v_calc_d_ref+1,v_lcd_hexa_to_conv+1
	call f_lcd_convtobcd

	movf	v_calc_n_ref,w
	xorlw	D'4'
	btfsc	STATUS,Z
	goto _f_lcd_calibrated_voltage5

	movlw 0x04
	movwf v_lcd_tmp

_f_lcd_calibrated_voltage4
	bcf STATUS,C
	rlcf v_lcd_bcd+2,f
	rlcf v_lcd_bcd+1,f
	decfsz v_lcd_tmp,f
	goto _f_lcd_calibrated_voltage4


_f_lcd_calibrated_voltage5
	movf v_lcd_bcd+1,W
	call _f_lcd_aff_hexa
	movf v_lcd_bcd+2,W
	call _f_lcd_aff_hexa

	movlw 'm'
	call f_lcd_affchar
	movlw 'V'
	call f_lcd_affchar
	return


f_lcd_aff_adc_mV
	movlw 0x0B
	call f_lcd_setposcursor
	movff v_adcfwd_mV,v_lcd_dec
	movff v_adcfwd_mV+1,v_lcd_dec+1
	call _f_lcd_aff_decimal
	movlw 'm'
	call f_lcd_affchar
	movlw 'V'
	call f_lcd_affchar
_f_lcd_aff_adc_mV_12
	movlw 0x1B
	call f_lcd_setposcursor
	movff v_adcref_mV,v_lcd_dec
	movff v_adcref_mV+1,v_lcd_dec+1
	call _f_lcd_aff_decimal
	movlw 'm'
	call f_lcd_affchar
	movlw 'V'
	call f_lcd_affchar
	return

f_lcd_aff
	movf v_lcd_p_string +1,W
	movwf FSR0H
	movf v_lcd_p_string ,W
	movwf FSR0L
	movff v_lcd_string_len,v_lcd_charpos
_f_lcd_aff_2
	movf v_lcd_charpos, w ; put counter value in W
	movf POSTINC0,W
	call f_lcd_affchar
	decfsz v_lcd_charpos, f
	goto _f_lcd_aff_2
	return


f_lcd_aff_not
	movff v_lcd_string_len, v_lcd_tmp
	movlw ' '
_f_lcd_aff_not_2
	call f_lcd_affchar
	decfsz v_lcd_tmp,f
	goto _f_lcd_aff_not_2
	return


f_lcd_aff_fwd_and_ref
	movlw 0x00
	call f_lcd_setposcursor
	call _f_lcd_set_fwd_string
	call f_lcd_aff
	movlw 0x10
	call f_lcd_setposcursor
	call _f_lcd_set_ref_string
	call f_lcd_aff
	return

f_lcd_aff_n
  movlw 0x06
  call f_lcd_setposcursor
  call _f_lcd_set_n_fwd_string
  call f_lcd_aff
	movlw 0x16
	call f_lcd_setposcursor
	call _f_lcd_set_n_ref_string
	call f_lcd_aff
	return

f_lcd_aff_rdac
	  movlw D'12'
	  call f_lcd_setposcursor
		call f_aop_get_rdac_fwd
	  call _f_lcd_set_rdac_fwd_string
	  call f_lcd_aff
		movlw D'28'
		call f_lcd_setposcursor
		call f_aop_get_rdac_ref
		call _f_lcd_set_rdac_ref_string
		call f_lcd_aff
		return

f_lcd_toggle_fwd_port
	;mettre les paramètres de la fsm :
	;position de la chaine
	movlw 0x00
	movwf v_lcd_string_pos
	call _f_lcd_set_fwd_string
	;paramètre à modifier
	movlw v_calc_port
	movwf v_fsm_p_param
	call f_fsm_toggle_state
	return

f_lcd_toggle_ref_port
	;mettre les paramètres de la fsm :
	;position de la chaine
	movlw 0x10
	movwf v_lcd_string_pos
	call _f_lcd_set_ref_string
	;paramètre à modifier
	movlw v_calc_port
	movwf v_fsm_p_param
	call f_fsm_toggle_state
	return

f_lcd_toggle_n_fwd
	;mettre les paramètres de la fsm :
	;position de la chaine
	movlw 0x06
	movwf v_lcd_string_pos
	call _f_lcd_set_n_fwd_string
	;paramètre à modifier
	movlw v_calc_n_fwd
	movwf v_fsm_p_param
	call f_fsm_toggle_state
	return

f_lcd_toggle_n_ref
;mettre les paramètres de la fsm :
;position de la chaine
	movlw 0x16
	movwf v_lcd_string_pos
	call _f_lcd_set_n_ref_string
 ;paramètre à modifier
	movlw v_calc_n_ref
	movwf v_fsm_p_param
	call f_fsm_toggle_state
	return

f_lcd_toggle_rdac_fwd
		;mettre les paramètres de la fsm :
		;position de la chaine
		movlw D'12'
		movwf v_lcd_string_pos
		call _f_lcd_set_rdac_fwd_string
		;paramètre à modifier
		movlw v_aop_rdac+1
		movwf v_fsm_p_param
		call f_fsm_toggle_state
		return

f_lcd_toggle_rdac_ref
	;mettre les paramètres de la fsm :
	;position de la chaine
  movlw D'28'
  movwf v_lcd_string_pos
  call _f_lcd_set_rdac_ref_string
  ;paramètre à modifier
  movlw v_aop_rdac+1
  movwf v_fsm_p_param
	call f_fsm_toggle_state
		return

f_lcd_aff_G_and_rdac
	movlw 0x00
	movwf v_lcd_charpos
_f_lcd_aff_G_and_rdac_2
	movf v_lcd_charpos, w ; put counter value in W
	call c_msg_n_and_rdac ; get a character from the text table
	xorlw 0x00 ; is it a zero?
	btfsc STATUS, Z
	goto _f_lcd_aff_G_and_rdac_3 ; display next message if finished
	call f_lcd_affchar
	incf v_lcd_charpos, f
	incf v_lcd_charpos, f
	goto _f_lcd_aff_G_and_rdac_2
_f_lcd_aff_G_and_rdac_3
	return

f_lcd_aff_adc_hexa
	movlw 0x05
	call f_lcd_setposcursor
	movf v_adcfwd,w
	call _f_lcd_aff_hexa
	movf v_adcfwd+1,w
	call _f_lcd_aff_hexa
	movlw 'h'
	call f_lcd_affchar
	movlw '-'
	call f_lcd_affchar
	movlw 0x15
	call f_lcd_setposcursor
	movf v_adcref,w
	call _f_lcd_aff_hexa
	movf v_adcref+1,w
	call _f_lcd_aff_hexa
	movlw 'h'
	call f_lcd_affchar
	movlw '-'
	call f_lcd_affchar
	return
ENDIF

	global f_lcd_affboot
IFDEF TEST
	global v_lcd_hexa_to_conv
	global v_lcd_bcd
	global f_lcd_aff
	global f_lcd_aff_not
	global f_lcd_aff_adc_hexa
	global f_lcd_aff_fwd_and_ref
	global f_lcd_aff_G_and_rdac
	global f_lcd_aff_n
	global f_lcd_aff_rdac
	global f_lcd_toggle_fwd_port
	global f_lcd_toggle_ref_port
	global f_lcd_aff_adc_mV
	global v_lcd_string
	global v_lcd_string_len
	global v_lcd_string_pos
	global v_lcd_p_string
	global f_lcd_toggle_n_fwd
	global f_lcd_toggle_n_ref
	global f_lcd_toggle_rdac_fwd
	global f_lcd_toggle_rdac_ref
	global f_lcd_calibrated_voltage
ENDIF

	end
