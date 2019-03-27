	include "p18f1320.inc" ;include the defaults for the chip


;-----------------------------------------
;Fonctions Table de calibration du détecteur HF
;Nom c_calibration_table		;
;Paramètres entrée
;Paramètres sorties
;Traitements
;Zone de mémoire dédiée au stockage de la calibration du détecteur HF.
;Zone en flash à l'adresse défini dans le makefile
;#Le code ci-dessous est assemblé uniquement dans le firmware de test ;
;cette table est la conversion brute d'une valeur hexa en mV (§3.1)
;	0x0000 0x0000
;	0x0001 0x0005
; 	0x0002 0x000A
;	...    ...
; 	0x3FE 0x137E
; 	0x3FF 0x1383
;-----------------------------------------

	code
c_data_adc_theoric_caltable
#IFDEF TEST
	DW 0x0
	DW 0x5
	DW 0xA
	DW 0xF
	DW 0x14
	DW 0x18
	DW 0x1D
	DW 0x22
	DW 0x27
	DW 0x2C
	DW 0x31
	DW 0x36
	DW 0x3B
	DW 0x3F
	DW 0x44
	DW 0x49
	DW 0x4E
	DW 0x53
	DW 0x58
	DW 0x5D
	DW 0x62
	DW 0x67
	DW 0x6B
	DW 0x70
	DW 0x75
	DW 0x7A
	DW 0x7F
	DW 0x84
	DW 0x89
	DW 0x8E
	DW 0x92
	DW 0x97
	DW 0x9C
	DW 0xA1
	DW 0xA6
	DW 0xAB
	DW 0xB0
	DW 0xB5
	DW 0xBA
	DW 0xBE
	DW 0xC3
	DW 0xC8
	DW 0xCD
	DW 0xD2
	DW 0xD7
	DW 0xDC
	DW 0xE1
	DW 0xE5
	DW 0xEA
	DW 0xEF
	DW 0xF4
	DW 0xF9
	DW 0xFE
	DW 0x103
	DW 0x108
	DW 0x10D
	DW 0x111
	DW 0x116
	DW 0x11B
	DW 0x120
	DW 0x125
	DW 0x12A
	DW 0x12F
	DW 0x134
	DW 0x139
	DW 0x13D
	DW 0x142
	DW 0x147
	DW 0x14C
	DW 0x151
	DW 0x156
	DW 0x15B
	DW 0x160
	DW 0x164
	DW 0x169
	DW 0x16E
	DW 0x173
	DW 0x178
	DW 0x17D
	DW 0x182
	DW 0x187
	DW 0x18C
	DW 0x190
	DW 0x195
	DW 0x19A
	DW 0x19F
	DW 0x1A4
	DW 0x1A9
	DW 0x1AE
	DW 0x1B3
	DW 0x1B7
	DW 0x1BC
	DW 0x1C1
	DW 0x1C6
	DW 0x1CB
	DW 0x1D0
	DW 0x1D5
	DW 0x1DA
	DW 0x1DF
	DW 0x1E3
	DW 0x1E8
	DW 0x1ED
	DW 0x1F2
	DW 0x1F7
	DW 0x1FC
	DW 0x201
	DW 0x206
	DW 0x20A
	DW 0x20F
	DW 0x214
	DW 0x219
	DW 0x21E
	DW 0x223
	DW 0x228
	DW 0x22D
	DW 0x232
	DW 0x236
	DW 0x23B
	DW 0x240
	DW 0x245
	DW 0x24A
	DW 0x24F
	DW 0x254
	DW 0x259
	DW 0x25D
	DW 0x262
	DW 0x267
	DW 0x26C
	DW 0x271
	DW 0x276
	DW 0x27B
	DW 0x280
	DW 0x285
	DW 0x289
	DW 0x28E
	DW 0x293
	DW 0x298
	DW 0x29D
	DW 0x2A2
	DW 0x2A7
	DW 0x2AC
	DW 0x2B0
	DW 0x2B5
	DW 0x2BA
	DW 0x2BF
	DW 0x2C4
	DW 0x2C9
	DW 0x2CE
	DW 0x2D3
	DW 0x2D8
	DW 0x2DC
	DW 0x2E1
	DW 0x2E6
	DW 0x2EB
	DW 0x2F0
	DW 0x2F5
	DW 0x2FA
	DW 0x2FF
	DW 0x303
	DW 0x308
	DW 0x30D
	DW 0x312
	DW 0x317
	DW 0x31C
	DW 0x321
	DW 0x326
	DW 0x32B
	DW 0x32F
	DW 0x334
	DW 0x339
	DW 0x33E
	DW 0x343
	DW 0x348
	DW 0x34D
	DW 0x352
	DW 0x356
	DW 0x35B
	DW 0x360
	DW 0x365
	DW 0x36A
	DW 0x36F
	DW 0x374
	DW 0x379
	DW 0x37E
	DW 0x382
	DW 0x387
	DW 0x38C
	DW 0x391
	DW 0x396
	DW 0x39B
	DW 0x3A0
	DW 0x3A5
	DW 0x3AA
	DW 0x3AE
	DW 0x3B3
	DW 0x3B8
	DW 0x3BD
	DW 0x3C2
	DW 0x3C7
	DW 0x3CC
	DW 0x3D1
	DW 0x3D5
	DW 0x3DA
	DW 0x3DF
	DW 0x3E4
	DW 0x3E9
	DW 0x3EE
	DW 0x3F3
	DW 0x3F8
	DW 0x3FD
	DW 0x401
	DW 0x406
	DW 0x40B
	DW 0x410
	DW 0x415
	DW 0x41A
	DW 0x41F
	DW 0x424
	DW 0x428
	DW 0x42D
	DW 0x432
	DW 0x437
	DW 0x43C
	DW 0x441
	DW 0x446
	DW 0x44B
	DW 0x450
	DW 0x454
	DW 0x459
	DW 0x45E
	DW 0x463
	DW 0x468
	DW 0x46D
	DW 0x472
	DW 0x477
	DW 0x47B
	DW 0x480
	DW 0x485
	DW 0x48A
	DW 0x48F
	DW 0x494
	DW 0x499
	DW 0x49E
	DW 0x4A3
	DW 0x4A7
	DW 0x4AC
	DW 0x4B1
	DW 0x4B6
	DW 0x4BB
	DW 0x4C0
	DW 0x4C5
	DW 0x4CA
	DW 0x4CE
	DW 0x4D3
	DW 0x4D8
	DW 0x4DD
	DW 0x4E2
	DW 0x4E7
	DW 0x4EC
	DW 0x4F1
	DW 0x4F6
	DW 0x4FA
	DW 0x4FF
	DW 0x504
	DW 0x509
	DW 0x50E
	DW 0x513
	DW 0x518
	DW 0x51D
	DW 0x521
	DW 0x526
	DW 0x52B
	DW 0x530
	DW 0x535
	DW 0x53A
	DW 0x53F
	DW 0x544
	DW 0x549
	DW 0x54D
	DW 0x552
	DW 0x557
	DW 0x55C
	DW 0x561
	DW 0x566
	DW 0x56B
	DW 0x570
	DW 0x574
	DW 0x579
	DW 0x57E
	DW 0x583
	DW 0x588
	DW 0x58D
	DW 0x592
	DW 0x597
	DW 0x59C
	DW 0x5A0
	DW 0x5A5
	DW 0x5AA
	DW 0x5AF
	DW 0x5B4
	DW 0x5B9
	DW 0x5BE
	DW 0x5C3
	DW 0x5C7
	DW 0x5CC
	DW 0x5D1
	DW 0x5D6
	DW 0x5DB
	DW 0x5E0
	DW 0x5E5
	DW 0x5EA
	DW 0x5EF
	DW 0x5F3
	DW 0x5F8
	DW 0x5FD
	DW 0x602
	DW 0x607
	DW 0x60C
	DW 0x611
	DW 0x616
	DW 0x61B
	DW 0x61F
	DW 0x624
	DW 0x629
	DW 0x62E
	DW 0x633
	DW 0x638
	DW 0x63D
	DW 0x642
	DW 0x646
	DW 0x64B
	DW 0x650
	DW 0x655
	DW 0x65A
	DW 0x65F
	DW 0x664
	DW 0x669
	DW 0x66E
	DW 0x672
	DW 0x677
	DW 0x67C
	DW 0x681
	DW 0x686
	DW 0x68B
	DW 0x690
	DW 0x695
	DW 0x699
	DW 0x69E
	DW 0x6A3
	DW 0x6A8
	DW 0x6AD
	DW 0x6B2
	DW 0x6B7
	DW 0x6BC
	DW 0x6C1
	DW 0x6C5
	DW 0x6CA
	DW 0x6CF
	DW 0x6D4
	DW 0x6D9
	DW 0x6DE
	DW 0x6E3
	DW 0x6E8
	DW 0x6EC
	DW 0x6F1
	DW 0x6F6
	DW 0x6FB
	DW 0x700
	DW 0x705
	DW 0x70A
	DW 0x70F
	DW 0x714
	DW 0x718
	DW 0x71D
	DW 0x722
	DW 0x727
	DW 0x72C
	DW 0x731
	DW 0x736
	DW 0x73B
	DW 0x73F
	DW 0x744
	DW 0x749
	DW 0x74E
	DW 0x753
	DW 0x758
	DW 0x75D
	DW 0x762
	DW 0x767
	DW 0x76B
	DW 0x770
	DW 0x775
	DW 0x77A
	DW 0x77F
	DW 0x784
	DW 0x789
	DW 0x78E
	DW 0x792
	DW 0x797
	DW 0x79C
	DW 0x7A1
	DW 0x7A6
	DW 0x7AB
	DW 0x7B0
	DW 0x7B5
	DW 0x7BA
	DW 0x7BE
	DW 0x7C3
	DW 0x7C8
	DW 0x7CD
	DW 0x7D2
	DW 0x7D7
	DW 0x7DC
	DW 0x7E1
	DW 0x7E5
	DW 0x7EA
	DW 0x7EF
	DW 0x7F4
	DW 0x7F9
	DW 0x7FE
	DW 0x803
	DW 0x808
	DW 0x80D
	DW 0x811
	DW 0x816
	DW 0x81B
	DW 0x820
	DW 0x825
	DW 0x82A
	DW 0x82F
	DW 0x834
	DW 0x838
	DW 0x83D
	DW 0x842
	DW 0x847
	DW 0x84C
	DW 0x851
	DW 0x856
	DW 0x85B
	DW 0x860
	DW 0x864
	DW 0x869
	DW 0x86E
	DW 0x873
	DW 0x878
	DW 0x87D
	DW 0x882
	DW 0x887
	DW 0x88C
	DW 0x890
	DW 0x895
	DW 0x89A
	DW 0x89F
	DW 0x8A4
	DW 0x8A9
	DW 0x8AE
	DW 0x8B3
	DW 0x8B7
	DW 0x8BC
	DW 0x8C1
	DW 0x8C6
	DW 0x8CB
	DW 0x8D0
	DW 0x8D5
	DW 0x8DA
	DW 0x8DF
	DW 0x8E3
	DW 0x8E8
	DW 0x8ED
	DW 0x8F2
	DW 0x8F7
	DW 0x8FC
	DW 0x901
	DW 0x906
	DW 0x90A
	DW 0x90F
	DW 0x914
	DW 0x919
	DW 0x91E
	DW 0x923
	DW 0x928
	DW 0x92D
	DW 0x932
	DW 0x936
	DW 0x93B
	DW 0x940
	DW 0x945
	DW 0x94A
	DW 0x94F
	DW 0x954
	DW 0x959
	DW 0x95D
	DW 0x962
	DW 0x967
	DW 0x96C
	DW 0x971
	DW 0x976
	DW 0x97B
	DW 0x980
	DW 0x985
	DW 0x989
	DW 0x98E
	DW 0x993
	DW 0x998
	DW 0x99D
	DW 0x9A2
	DW 0x9A7
	DW 0x9AC
	DW 0x9B0
	DW 0x9B5
	DW 0x9BA
	DW 0x9BF
	DW 0x9C4
	DW 0x9C9
	DW 0x9CE
	DW 0x9D3
	DW 0x9D8
	DW 0x9DC
	DW 0x9E1
	DW 0x9E6
	DW 0x9EB
	DW 0x9F0
	DW 0x9F5
	DW 0x9FA
	DW 0x9FF
	DW 0xA03
	DW 0xA08
	DW 0xA0D
	DW 0xA12
	DW 0xA17
	DW 0xA1C
	DW 0xA21
	DW 0xA26
	DW 0xA2B
	DW 0xA2F
	DW 0xA34
	DW 0xA39
	DW 0xA3E
	DW 0xA43
	DW 0xA48
	DW 0xA4D
	DW 0xA52
	DW 0xA56
	DW 0xA5B
	DW 0xA60
	DW 0xA65
	DW 0xA6A
	DW 0xA6F
	DW 0xA74
	DW 0xA79
	DW 0xA7E
	DW 0xA82
	DW 0xA87
	DW 0xA8C
	DW 0xA91
	DW 0xA96
	DW 0xA9B
	DW 0xAA0
	DW 0xAA5
	DW 0xAA9
	DW 0xAAE
	DW 0xAB3
	DW 0xAB8
	DW 0xABD
	DW 0xAC2
	DW 0xAC7
	DW 0xACC
	DW 0xAD1
	DW 0xAD5
	DW 0xADA
	DW 0xADF
	DW 0xAE4
	DW 0xAE9
	DW 0xAEE
	DW 0xAF3
	DW 0xAF8
	DW 0xAFD
	DW 0xB01
	DW 0xB06
	DW 0xB0B
	DW 0xB10
	DW 0xB15
	DW 0xB1A
	DW 0xB1F
	DW 0xB24
	DW 0xB28
	DW 0xB2D
	DW 0xB32
	DW 0xB37
	DW 0xB3C
	DW 0xB41
	DW 0xB46
	DW 0xB4B
	DW 0xB50
	DW 0xB54
	DW 0xB59
	DW 0xB5E
	DW 0xB63
	DW 0xB68
	DW 0xB6D
	DW 0xB72
	DW 0xB77
	DW 0xB7B
	DW 0xB80
	DW 0xB85
	DW 0xB8A
	DW 0xB8F
	DW 0xB94
	DW 0xB99
	DW 0xB9E
	DW 0xBA3
	DW 0xBA7
	DW 0xBAC
	DW 0xBB1
	DW 0xBB6
	DW 0xBBB
	DW 0xBC0
	DW 0xBC5
	DW 0xBCA
	DW 0xBCE
	DW 0xBD3
	DW 0xBD8
	DW 0xBDD
	DW 0xBE2
	DW 0xBE7
	DW 0xBEC
	DW 0xBF1
	DW 0xBF6
	DW 0xBFA
	DW 0xBFF
	DW 0xC04
	DW 0xC09
	DW 0xC0E
	DW 0xC13
	DW 0xC18
	DW 0xC1D
	DW 0xC21
	DW 0xC26
	DW 0xC2B
	DW 0xC30
	DW 0xC35
	DW 0xC3A
	DW 0xC3F
	DW 0xC44
	DW 0xC49
	DW 0xC4D
	DW 0xC52
	DW 0xC57
	DW 0xC5C
	DW 0xC61
	DW 0xC66
	DW 0xC6B
	DW 0xC70
	DW 0xC74
	DW 0xC79
	DW 0xC7E
	DW 0xC83
	DW 0xC88
	DW 0xC8D
	DW 0xC92
	DW 0xC97
	DW 0xC9C
	DW 0xCA0
	DW 0xCA5
	DW 0xCAA
	DW 0xCAF
	DW 0xCB4
	DW 0xCB9
	DW 0xCBE
	DW 0xCC3
	DW 0xCC7
	DW 0xCCC
	DW 0xCD1
	DW 0xCD6
	DW 0xCDB
	DW 0xCE0
	DW 0xCE5
	DW 0xCEA
	DW 0xCEF
	DW 0xCF3
	DW 0xCF8
	DW 0xCFD
	DW 0xD02
	DW 0xD07
	DW 0xD0C
	DW 0xD11
	DW 0xD16
	DW 0xD1A
	DW 0xD1F
	DW 0xD24
	DW 0xD29
	DW 0xD2E
	DW 0xD33
	DW 0xD38
	DW 0xD3D
	DW 0xD42
	DW 0xD46
	DW 0xD4B
	DW 0xD50
	DW 0xD55
	DW 0xD5A
	DW 0xD5F
	DW 0xD64
	DW 0xD69
	DW 0xD6E
	DW 0xD72
	DW 0xD77
	DW 0xD7C
	DW 0xD81
	DW 0xD86
	DW 0xD8B
	DW 0xD90
	DW 0xD95
	DW 0xD99
	DW 0xD9E
	DW 0xDA3
	DW 0xDA8
	DW 0xDAD
	DW 0xDB2
	DW 0xDB7
	DW 0xDBC
	DW 0xDC1
	DW 0xDC5
	DW 0xDCA
	DW 0xDCF
	DW 0xDD4
	DW 0xDD9
	DW 0xDDE
	DW 0xDE3
	DW 0xDE8
	DW 0xDEC
	DW 0xDF1
	DW 0xDF6
	DW 0xDFB
	DW 0xE00
	DW 0xE05
	DW 0xE0A
	DW 0xE0F
	DW 0xE14
	DW 0xE18
	DW 0xE1D
	DW 0xE22
	DW 0xE27
	DW 0xE2C
	DW 0xE31
	DW 0xE36
	DW 0xE3B
	DW 0xE3F
	DW 0xE44
	DW 0xE49
	DW 0xE4E
	DW 0xE53
	DW 0xE58
	DW 0xE5D
	DW 0xE62
	DW 0xE67
	DW 0xE6B
	DW 0xE70
	DW 0xE75
	DW 0xE7A
	DW 0xE7F
	DW 0xE84
	DW 0xE89
	DW 0xE8E
	DW 0xE92
	DW 0xE97
	DW 0xE9C
	DW 0xEA1
	DW 0xEA6
	DW 0xEAB
	DW 0xEB0
	DW 0xEB5
	DW 0xEBA
	DW 0xEBE
	DW 0xEC3
	DW 0xEC8
	DW 0xECD
	DW 0xED2
	DW 0xED7
	DW 0xEDC
	DW 0xEE1
	DW 0xEE5
	DW 0xEEA
	DW 0xEEF
	DW 0xEF4
	DW 0xEF9
	DW 0xEFE
	DW 0xF03
	DW 0xF08
	DW 0xF0D
	DW 0xF11
	DW 0xF16
	DW 0xF1B
	DW 0xF20
	DW 0xF25
	DW 0xF2A
	DW 0xF2F
	DW 0xF34
	DW 0xF38
	DW 0xF3D
	DW 0xF42
	DW 0xF47
	DW 0xF4C
	DW 0xF51
	DW 0xF56
	DW 0xF5B
	DW 0xF60
	DW 0xF64
	DW 0xF69
	DW 0xF6E
	DW 0xF73
	DW 0xF78
	DW 0xF7D
	DW 0xF82
	DW 0xF87
	DW 0xF8B
	DW 0xF90
	DW 0xF95
	DW 0xF9A
	DW 0xF9F
	DW 0xFA4
	DW 0xFA9
	DW 0xFAE
	DW 0xFB3
	DW 0xFB7
	DW 0xFBC
	DW 0xFC1
	DW 0xFC6
	DW 0xFCB
	DW 0xFD0
	DW 0xFD5
	DW 0xFDA
	DW 0xFDF
	DW 0xFE3
	DW 0xFE8
	DW 0xFED
	DW 0xFF2
	DW 0xFF7
	DW 0xFFC
	DW 0x1001
	DW 0x1006
	DW 0x100A
	DW 0x100F
	DW 0x1014
	DW 0x1019
	DW 0x101E
	DW 0x1023
	DW 0x1028
	DW 0x102D
	DW 0x1032
	DW 0x1036
	DW 0x103B
	DW 0x1040
	DW 0x1045
	DW 0x104A
	DW 0x104F
	DW 0x1054
	DW 0x1059
	DW 0x105D
	DW 0x1062
	DW 0x1067
	DW 0x106C
	DW 0x1071
	DW 0x1076
	DW 0x107B
	DW 0x1080
	DW 0x1085
	DW 0x1089
	DW 0x108E
	DW 0x1093
	DW 0x1098
	DW 0x109D
	DW 0x10A2
	DW 0x10A7
	DW 0x10AC
	DW 0x10B0
	DW 0x10B5
	DW 0x10BA
	DW 0x10BF
	DW 0x10C4
	DW 0x10C9
	DW 0x10CE
	DW 0x10D3
	DW 0x10D8
	DW 0x10DC
	DW 0x10E1
	DW 0x10E6
	DW 0x10EB
	DW 0x10F0
	DW 0x10F5
	DW 0x10FA
	DW 0x10FF
	DW 0x1103
	DW 0x1108
	DW 0x110D
	DW 0x1112
	DW 0x1117
	DW 0x111C
	DW 0x1121
	DW 0x1126
	DW 0x112B
	DW 0x112F
	DW 0x1134
	DW 0x1139
	DW 0x113E
	DW 0x1143
	DW 0x1148
	DW 0x114D
	DW 0x1152
	DW 0x1156
	DW 0x115B
	DW 0x1160
	DW 0x1165
	DW 0x116A
	DW 0x116F
	DW 0x1174
	DW 0x1179
	DW 0x117E
	DW 0x1182
	DW 0x1187
	DW 0x118C
	DW 0x1191
	DW 0x1196
	DW 0x119B
	DW 0x11A0
	DW 0x11A5
	DW 0x11A9
	DW 0x11AE
	DW 0x11B3
	DW 0x11B8
	DW 0x11BD
	DW 0x11C2
	DW 0x11C7
	DW 0x11CC
	DW 0x11D1
	DW 0x11D5
	DW 0x11DA
	DW 0x11DF
	DW 0x11E4
	DW 0x11E9
	DW 0x11EE
	DW 0x11F3
	DW 0x11F8
	DW 0x11FC
	DW 0x1201
	DW 0x1206
	DW 0x120B
	DW 0x1210
	DW 0x1215
	DW 0x121A
	DW 0x121F
	DW 0x1224
	DW 0x1228
	DW 0x122D
	DW 0x1232
	DW 0x1237
	DW 0x123C
	DW 0x1241
	DW 0x1246
	DW 0x124B
	DW 0x1250
	DW 0x1254
	DW 0x1259
	DW 0x125E
	DW 0x1263
	DW 0x1268
	DW 0x126D
	DW 0x1272
	DW 0x1277
	DW 0x127B
	DW 0x1280
	DW 0x1285
	DW 0x128A
	DW 0x128F
	DW 0x1294
	DW 0x1299
	DW 0x129E
	DW 0x12A3
	DW 0x12A7
	DW 0x12AC
	DW 0x12B1
	DW 0x12B6
	DW 0x12BB
	DW 0x12C0
	DW 0x12C5
	DW 0x12CA
	DW 0x12CE
	DW 0x12D3
	DW 0x12D8
	DW 0x12DD
	DW 0x12E2
	DW 0x12E7
	DW 0x12EC
	DW 0x12F1
	DW 0x12F6
	DW 0x12FA
	DW 0x12FF
	DW 0x1304
	DW 0x1309
	DW 0x130E
	DW 0x1313
	DW 0x1318
	DW 0x131D
	DW 0x1321
	DW 0x1326
	DW 0x132B
	DW 0x1330
	DW 0x1335
	DW 0x133A
	DW 0x133F
	DW 0x1344
	DW 0x1349
	DW 0x134D
	DW 0x1352
	DW 0x1357
	DW 0x135C
	DW 0x1361
	DW 0x1366
	DW 0x136B
	DW 0x1370
	DW 0x1374
	DW 0x1379
	DW 0x137E
	DW 0x1383
#ENDIF
c_data_adc_theoric_caltable_end

	global c_data_adc_theoric_caltable
	
	end
