	include "p18f1320.inc" ;include the defaults for the chip
	include "bp.inc"
	include "log.inc"
	include "calc.inc"

	ERRORLEVEL 0, -302 ;suppress bank selection messages

	config OSC = INTIO2 ; Internal Oscillator with FOSC/4 -RA6 and RA7 = I/O
	config FSCM = OFF ; Fail-Safe Clock Monitor disabled
	config IESO = OFF ; Internal External Switch Over mode disabled
	config PWRT = OFF ; Power up timer disabled
	config BOR = OFF ; Brown out reset disabled
	config WDT = OFF ; Watch dog timer off
	config MCLRE = OFF ; MCLRE off (pin available for input)
	config LVP = OFF ; Low voltage programming disabled
	config DEBUG = OFF ; Background debugger off 	CONFIG  _CONFIG2L, _PWRT_ON_2L & _BOR_OFF_2L & _BORV_27_2L

	extern f_lcd_init
	extern f_i2c_init
	extern f_lcd_affboot
	extern f_lcd_clear
	extern f_lcd_setposcursor
	extern f_adc_init
	extern f_adc_read_fwd
	extern f_adc_read_ref
	extern f_aop_set_rdac_fwd
	extern f_aop_set_rdac_ref
	extern f_bp_init
	extern f_bp_test_bande
	extern f_bp_test_calm
	extern f_bp_test_calp
	extern delay_250ms
	extern v_bp_status
	extern v_log_data
	extern v_log_data_size
	extern v_log_tag
	extern f_log_write
	extern f_eep_readbyte
IFDEF TEST
	extern f_lcd_aff_fwd_and_ref
	extern f_lcd_aff_G_and_rdac
	extern f_lcd_aff_n
	extern f_lcd_aff_adc_hexa
	extern f_calc_calibrated_voltage_fwd_and_ref
	extern f_lcd_aff_adc_mV
	extern f_calc_init
	extern f_lcd_toggle_fwd_port
	extern f_lcd_toggle_ref_port
	extern v_calc_port
	extern v_calc_n_ref
	extern v_calc_n_fwd
	extern f_lcd_toggle_n_ref
	extern f_lcd_toggle_n_fwd
	extern f_calc_set_n_min_fwd
	extern f_calc_set_n_max_fwd
	extern f_calc_set_n_min_ref
	extern f_calc_set_n_max_ref
	extern Del_11us ;pour trace timer 0 uniquement
ENDIF

	udata

IFDEF TEST
v_menu res 1
v_tmp res 1
ENDIF

	code
	goto Init ;

Init
; Initialisation PIC
	movlw   B'01100010'			;4 MHz
	movwf   OSCCON
	clrf    INTCON              ;disable all interrupts part one
	movlw	B'10000000'         ;disable all interrupts part two &
	movwf   INTCON2             ;PORTB pull-up disable
	clrf    INTCON3             ;disable all interrupts part three
	clrf    IPR1                ;clear, no priority is used
	clrf    IPR2                ;clear, no priority is used
	clrf    PIE1                ;Individualy disable interrupts
	clrf    PIE2                ;Individualy disable interrupts
	bcf     RCON,IPEN           ;Disable priority levels
	clrf    EECON1              ;clear EEPROM control register
	bcf		WDTCON,SWDTEN		;stop watchdog
	clrf   CCP1CON
  clrf ADCON0
	movlw B'01111111' 	;digital input on PORTA
	movwf ADCON1
	clrf ADCON2

	movlw b'00011100' ; RA2/3/4 input
	movwf TRISA ;
	clrf PORTA
	movlw b'00000000' ; PortB Outputs
	movwf TRISB ; Change PortB I/O
	clrf PORTB

; Initialize the LCD Display
	call f_lcd_init
; Afficher le message de boot
	call f_lcd_affboot
;; Tempo de 3s
	call f_tempo_boot


IFDEF TEST
	movlw 'T'
	movwf v_log_data
	movlw 'E'
	movwf v_log_data+1
	movlw 'S'
	movwf v_log_data+2
ENDIF

	movlw 0x00
	call f_eep_readbyte
	movwf v_log_data+3
	movlw 0x01
	call f_eep_readbyte
	movwf v_log_data+4
	movlw 0x02
	call f_eep_readbyte
	movwf v_log_data+5
	movlw 0x03
	call f_eep_readbyte
	movwf v_log_data+6

	movlw TAG_FW_VERSION
	movwf v_log_tag
	movlw D'08'
	movwf v_log_data_size
	call f_log_write


;Trace le contenu de RCON au démarrage
	movff RCON,v_log_data
	movff STKPTR,v_log_data+1
	movlw TAG_PIC_REG
	movwf v_log_tag
	movlw D'02'
	movwf v_log_data_size
	call f_log_write

IFDEF TEST
;trace timer 0 pour calibration
	clrf TMR0L
	movlw TIMER0_START
	movwf T0CON
	call Del_11us
	;call delay_250ms
	movlw TIMER0_STOP
	movwf T0CON
	movlw 0x06 ;calibration
	subwf TMR0L,f
	movff TMR0L,v_log_data
	movlw TAG_TIMER
	movwf v_log_tag
	movlw D'01'
	movwf v_log_data_size
	call f_log_write
ENDIF


	;Initialisation des composants logiciels
	call f_i2c_init
 	call f_adc_init		;
	call f_calc_init
	call f_bp_init
;; Effacer le LCD (lcd_clear)
	call f_lcd_clear

IFDEF DEBUG_ISSUE_134
	;Fiche #121 #157 #134
	;appelle l'init des composants branchés sur le bus i2c
	;pour contourner le NACK reçu uniquement lors de la 1ère trame sous GPSIM
	call f_aop_set_rdac_fwd
	call f_aop_set_rdac_ref
	call f_adc_read_fwd
ENDIF


IFDEF TEST
	clrf v_menu ; menu mesure par défaut au démarrage

test_loop

	;;Appui sur le bouton bande ?

	clrf v_bp_status
	call f_bp_test_bande
	btfss v_bp_status,BIT_BANDE
	goto choix_menu

	incf v_menu,f
	;; Effacer le LCD (lcd_clear)
	call f_lcd_clear


choix_menu
	btfss v_menu,0
	goto menu_mesure
	goto menu_calibration

menu_mesure
	clrf v_menu

		;;lire les registres ADCfwd et ADCref
	call f_adc_read_fwd
	call f_adc_read_ref

	;; Convertir la mesure des ADC en hexa (rien à faire) et en mV
	call f_calc_calibrated_voltage_fwd_and_ref

	;Affiche "FWD et REF" sur les 1ères et 2èmes lignes
	call f_lcd_aff_fwd_and_ref

	;; afficher la mesure des ADC en hexadécimal
	call f_lcd_aff_adc_hexa
	;; afficher la mesure des ADC en mV
	call f_lcd_aff_adc_mV

	goto test_loop


menu_calibration
	clrf v_menu
	bsf v_menu,0

_menu_cal_toggle_port
	;Affiche "FWD et REF" sur les 1ères et 2èmes lignes
	call f_lcd_aff_fwd_and_ref
	movlw 0x04
	call f_lcd_setposcursor
	call f_lcd_aff_G_and_rdac
	movlw 0x14
	call f_lcd_setposcursor
	call f_lcd_aff_G_and_rdac
	call f_lcd_aff_n


	btfsc v_calc_port,PORT_BIT
	goto _menu_cal_toggle_fwd_port
	call f_lcd_toggle_ref_port
	btfss v_calc_port,PORT_BIT
	goto _menu_cal_toggle_n_value;1=>valeur non modifié. On est sortie de la FSM par un appui sur BP_BANDE
	goto _menu_cal_toggle_port;0=>valeur modifié. Il faut recommencer le même clignotement !!!
_menu_cal_toggle_fwd_port
	call f_lcd_toggle_fwd_port
	btfsc v_calc_port,PORT_BIT
	goto _menu_cal_toggle_n_value;1=>valeur non modifié. On est sortie de la FSM par un appui sur BP_BANDE
	goto _menu_cal_toggle_port;0=>valeur modifié. Il faut recommencer le même clignotement !!!

_menu_cal_toggle_n_value ;faire clignoter la valeur de n
	movff v_calc_n_fwd,v_tmp
	btfsc v_calc_port,PORT_BIT
	goto _menu_cal_toggle_n_fwd
	call f_lcd_toggle_n_ref
	movf v_calc_n_ref,w
  cpfseq v_tmp
	goto _menu_cal_toggle_n_value;valeur "!=". Il faut recommencer le même clignotement !!!
	goto _menu_cal_toggle_adc;valeurs "="= =>valeur non modifié. On est sortie de la FSM par un appui sur BP_BANDE
_menu_cal_toggle_n_fwd
	call f_lcd_toggle_n_fwd
	movlw N_MIN
	cpfsgt v_calc_n_fwd
	call _set_n_max_fwd
	movlw N_MAX+1
	cpfslt v_calc_n_fwd
	call _set_n_min_fwd
	movf v_calc_n_fwd,w
	cpfseq v_tmp
	goto _menu_cal_toggle_n_value;valeur "!=". Il faut recommencer le même clignotement !!!
	goto _menu_cal_toggle_adc;valeurs "="= =>valeur non modifié. On est sortie de la FSM par un appui sur BP_BANDE


_menu_cal_toggle_adc

_menu_cal_end
	;on est sorti de la FSM toggle
	;du coup, on veut revenir au menu mesure
	incf v_menu,f
	call f_lcd_clear
	goto choix_menu
ENDIF


;-----------------------------------------
;Fonction : temporisation de 3s
;Nom : tempo_boot
;Entrée :
;Sortie :
;Traitement :
;		1.	appeler 12x une temporisation de 250ms
;-----------------------------------------

f_tempo_boot
	call delay_250ms
	call delay_250ms
	call delay_250ms
	call delay_250ms
	call delay_250ms
	call delay_250ms
	call delay_250ms
	call delay_250ms
	return

IFDEF TEST
_set_n_max_fwd
	call f_calc_set_n_max_fwd
	movlw N_MAX-1
	movwf v_tmp
	return

_set_n_min_fwd
	call f_calc_set_n_min_fwd
	movlw N_MIN+1
	movwf v_tmp
	return

_set_n_max_ref
	call f_calc_set_n_max_ref
	movlw N_MAX-1
	movwf v_tmp
	return

_set_n_min_ref
	call f_calc_set_n_min_ref
	movlw N_MIN+1
	movwf v_tmp
	return
ENDIF

IFDEF TEST
	global v_menu
ENDIF


	end
