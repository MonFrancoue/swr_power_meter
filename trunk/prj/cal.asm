	include "p16f88.inc" ;include the defaults for the chip


;-----------------------------------------
;Fonctions Table de calibration du détecteur HF
;Nom c_calibration_table		;
;Paramètres entrée
;Paramètres sorties
;Traitements
;Zone de mémoire dédiée au stockage de la calibration du détecteur HF.
;Zone en flash à l'adresse défini dans le makefile
;#Le code ci-dessous est assemblé uniquement dans le firmware de test ;
;	0x0000 0x0005
; 	0x0001 0x0010
;	...    ...
; 	0x3FE 0x137E
; 	0x3FF 0x1383
;-----------------------------------------

	code 
c_hf_detect_cal_table	
#IFDEF TEST
	DE 0x0
	DE 0x5
	DE 0xA
	DE 0xF
	DE 0x14
	DE 0x18
	DE 0x1D
	DE 0x22
	DE 0x27
	DE 0x2C
	DE 0x31
	DE 0x36
	DE 0x3B
	DE 0x3F
	DE 0x44
	DE 0x49
	DE 0x4E
	DE 0x53
	DE 0x58
	DE 0x5D
	DE 0x62
	DE 0x67
	DE 0x6B
	DE 0x70
	DE 0x75
	DE 0x7A
	DE 0x7F
	DE 0x84
	DE 0x89
	DE 0x8E
	DE 0x92
	DE 0x97
	DE 0x9C
	DE 0xA1
	DE 0xA6
	DE 0xAB
	DE 0xB0
	DE 0xB5
	DE 0xBA
	DE 0xBE
	DE 0xC3
	DE 0xC8
	DE 0xCD
	DE 0xD2
	DE 0xD7
	DE 0xDC
	DE 0xE1
	DE 0xE5
	DE 0xEA
	DE 0xEF
	DE 0xF4
	DE 0xF9
	DE 0xFE
	DE 0x103
	DE 0x108
	DE 0x10D
	DE 0x111
	DE 0x116
	DE 0x11B
	DE 0x120
	DE 0x125
	DE 0x12A
	DE 0x12F
	DE 0x134
	DE 0x139
	DE 0x13D
	DE 0x142
	DE 0x147
	DE 0x14C
	DE 0x151
	DE 0x156
	DE 0x15B
	DE 0x160
	DE 0x164
	DE 0x169
	DE 0x16E
	DE 0x173
	DE 0x178
	DE 0x17D
	DE 0x182
	DE 0x187
	DE 0x18C
	DE 0x190
	DE 0x195
	DE 0x19A
	DE 0x19F
	DE 0x1A4
	DE 0x1A9
	DE 0x1AE
	DE 0x1B3
	DE 0x1B7
	DE 0x1BC
	DE 0x1C1
	DE 0x1C6
	DE 0x1CB
	DE 0x1D0
	DE 0x1D5
	DE 0x1DA
	DE 0x1DF
	DE 0x1E3
	DE 0x1E8
	DE 0x1ED
	DE 0x1F2
	DE 0x1F7
	DE 0x1FC
	DE 0x201
	DE 0x206
	DE 0x20A
	DE 0x20F
	DE 0x214
	DE 0x219
	DE 0x21E
	DE 0x223
	DE 0x228
	DE 0x22D
	DE 0x232
	DE 0x236
	DE 0x23B
	DE 0x240
	DE 0x245
	DE 0x24A
	DE 0x24F
	DE 0x254
	DE 0x259
	DE 0x25D
	DE 0x262
	DE 0x267
	DE 0x26C
	DE 0x271
	DE 0x276
	DE 0x27B
	DE 0x280
	DE 0x285
	DE 0x289
	DE 0x28E
	DE 0x293
	DE 0x298
	DE 0x29D
	DE 0x2A2
	DE 0x2A7
	DE 0x2AC
	DE 0x2B0
	DE 0x2B5
	DE 0x2BA
	DE 0x2BF
	DE 0x2C4
	DE 0x2C9
	DE 0x2CE
	DE 0x2D3
	DE 0x2D8
	DE 0x2DC
	DE 0x2E1
	DE 0x2E6
	DE 0x2EB
	DE 0x2F0
	DE 0x2F5
	DE 0x2FA
	DE 0x2FF
	DE 0x303
	DE 0x308
	DE 0x30D
	DE 0x312
	DE 0x317
	DE 0x31C
	DE 0x321
	DE 0x326
	DE 0x32B
	DE 0x32F
	DE 0x334
	DE 0x339
	DE 0x33E
	DE 0x343
	DE 0x348
	DE 0x34D
	DE 0x352
	DE 0x356
	DE 0x35B
	DE 0x360
	DE 0x365
	DE 0x36A
	DE 0x36F
	DE 0x374
	DE 0x379
	DE 0x37E
	DE 0x382
	DE 0x387
	DE 0x38C
	DE 0x391
	DE 0x396
	DE 0x39B
	DE 0x3A0
	DE 0x3A5
	DE 0x3AA
	DE 0x3AE
	DE 0x3B3
	DE 0x3B8
	DE 0x3BD
	DE 0x3C2
	DE 0x3C7
	DE 0x3CC
	DE 0x3D1
	DE 0x3D5
	DE 0x3DA
	DE 0x3DF
	DE 0x3E4
	DE 0x3E9
	DE 0x3EE
	DE 0x3F3
	DE 0x3F8
	DE 0x3FD
	DE 0x401
	DE 0x406
	DE 0x40B
	DE 0x410
	DE 0x415
	DE 0x41A
	DE 0x41F
	DE 0x424
	DE 0x428
	DE 0x42D
	DE 0x432
	DE 0x437
	DE 0x43C
	DE 0x441
	DE 0x446
	DE 0x44B
	DE 0x450
	DE 0x454
	DE 0x459
	DE 0x45E
	DE 0x463
	DE 0x468
	DE 0x46D
	DE 0x472
	DE 0x477
	DE 0x47B
	DE 0x480
	DE 0x485
	DE 0x48A
	DE 0x48F
	DE 0x494
	DE 0x499
	DE 0x49E
	DE 0x4A3
	DE 0x4A7
	DE 0x4AC
	DE 0x4B1
	DE 0x4B6
	DE 0x4BB
	DE 0x4C0
	DE 0x4C5
	DE 0x4CA
	DE 0x4CE
	DE 0x4D3
	DE 0x4D8
	DE 0x4DD
	DE 0x4E2
	DE 0x4E7
	DE 0x4EC
	DE 0x4F1
	DE 0x4F6
	DE 0x4FA
	DE 0x4FF
	DE 0x504
	DE 0x509
	DE 0x50E
	DE 0x513
	DE 0x518
	DE 0x51D
	DE 0x521
	DE 0x526
	DE 0x52B
	DE 0x530
	DE 0x535
	DE 0x53A
	DE 0x53F
	DE 0x544
	DE 0x549
	DE 0x54D
	DE 0x552
	DE 0x557
	DE 0x55C
	DE 0x561
	DE 0x566
	DE 0x56B
	DE 0x570
	DE 0x574
	DE 0x579
	DE 0x57E
	DE 0x583
	DE 0x588
	DE 0x58D
	DE 0x592
	DE 0x597
	DE 0x59C
	DE 0x5A0
	DE 0x5A5
	DE 0x5AA
	DE 0x5AF
	DE 0x5B4
	DE 0x5B9
	DE 0x5BE
	DE 0x5C3
	DE 0x5C7
	DE 0x5CC
	DE 0x5D1
	DE 0x5D6
	DE 0x5DB
	DE 0x5E0
	DE 0x5E5
	DE 0x5EA
	DE 0x5EF
	DE 0x5F3
	DE 0x5F8
	DE 0x5FD
	DE 0x602
	DE 0x607
	DE 0x60C
	DE 0x611
	DE 0x616
	DE 0x61B
	DE 0x61F
	DE 0x624
	DE 0x629
	DE 0x62E
	DE 0x633
	DE 0x638
	DE 0x63D
	DE 0x642
	DE 0x646
	DE 0x64B
	DE 0x650
	DE 0x655
	DE 0x65A
	DE 0x65F
	DE 0x664
	DE 0x669
	DE 0x66E
	DE 0x672
	DE 0x677
	DE 0x67C
	DE 0x681
	DE 0x686
	DE 0x68B
	DE 0x690
	DE 0x695
	DE 0x699
	DE 0x69E
	DE 0x6A3
	DE 0x6A8
	DE 0x6AD
	DE 0x6B2
	DE 0x6B7
	DE 0x6BC
	DE 0x6C1
	DE 0x6C5
	DE 0x6CA
	DE 0x6CF
	DE 0x6D4
	DE 0x6D9
	DE 0x6DE
	DE 0x6E3
	DE 0x6E8
	DE 0x6EC
	DE 0x6F1
	DE 0x6F6
	DE 0x6FB
	DE 0x700
	DE 0x705
	DE 0x70A
	DE 0x70F
	DE 0x714
	DE 0x718
	DE 0x71D
	DE 0x722
	DE 0x727
	DE 0x72C
	DE 0x731
	DE 0x736
	DE 0x73B
	DE 0x73F
	DE 0x744
	DE 0x749
	DE 0x74E
	DE 0x753
	DE 0x758
	DE 0x75D
	DE 0x762
	DE 0x767
	DE 0x76B
	DE 0x770
	DE 0x775
	DE 0x77A
	DE 0x77F
	DE 0x784
	DE 0x789
	DE 0x78E
	DE 0x792
	DE 0x797
	DE 0x79C
	DE 0x7A1
	DE 0x7A6
	DE 0x7AB
	DE 0x7B0
	DE 0x7B5
	DE 0x7BA
	DE 0x7BE
	DE 0x7C3
	DE 0x7C8
	DE 0x7CD
	DE 0x7D2
	DE 0x7D7
	DE 0x7DC
	DE 0x7E1
	DE 0x7E5
	DE 0x7EA
	DE 0x7EF
	DE 0x7F4
	DE 0x7F9
	DE 0x7FE
	DE 0x803
	DE 0x808
	DE 0x80D
	DE 0x811
	DE 0x816
	DE 0x81B
	DE 0x820
	DE 0x825
	DE 0x82A
	DE 0x82F
	DE 0x834
	DE 0x838
	DE 0x83D
	DE 0x842
	DE 0x847
	DE 0x84C
	DE 0x851
	DE 0x856
	DE 0x85B
	DE 0x860
	DE 0x864
	DE 0x869
	DE 0x86E
	DE 0x873
	DE 0x878
	DE 0x87D
	DE 0x882
	DE 0x887
	DE 0x88C
	DE 0x890
	DE 0x895
	DE 0x89A
	DE 0x89F
	DE 0x8A4
	DE 0x8A9
	DE 0x8AE
	DE 0x8B3
	DE 0x8B7
	DE 0x8BC
	DE 0x8C1
	DE 0x8C6
	DE 0x8CB
	DE 0x8D0
	DE 0x8D5
	DE 0x8DA
	DE 0x8DF
	DE 0x8E3
	DE 0x8E8
	DE 0x8ED
	DE 0x8F2
	DE 0x8F7
	DE 0x8FC
	DE 0x901
	DE 0x906
	DE 0x90A
	DE 0x90F
	DE 0x914
	DE 0x919
	DE 0x91E
	DE 0x923
	DE 0x928
	DE 0x92D
	DE 0x932
	DE 0x936
	DE 0x93B
	DE 0x940
	DE 0x945
	DE 0x94A
	DE 0x94F
	DE 0x954
	DE 0x959
	DE 0x95D
	DE 0x962
	DE 0x967
	DE 0x96C
	DE 0x971
	DE 0x976
	DE 0x97B
	DE 0x980
	DE 0x985
	DE 0x989
	DE 0x98E
	DE 0x993
	DE 0x998
	DE 0x99D
	DE 0x9A2
	DE 0x9A7
	DE 0x9AC
	DE 0x9B0
	DE 0x9B5
	DE 0x9BA
	DE 0x9BF
	DE 0x9C4
	DE 0x9C9
	DE 0x9CE
	DE 0x9D3
	DE 0x9D8
	DE 0x9DC
	DE 0x9E1
	DE 0x9E6
	DE 0x9EB
	DE 0x9F0
	DE 0x9F5
	DE 0x9FA
	DE 0x9FF
	DE 0xA03
	DE 0xA08
	DE 0xA0D
	DE 0xA12
	DE 0xA17
	DE 0xA1C
	DE 0xA21
	DE 0xA26
	DE 0xA2B
	DE 0xA2F
	DE 0xA34
	DE 0xA39
	DE 0xA3E
	DE 0xA43
	DE 0xA48
	DE 0xA4D
	DE 0xA52
	DE 0xA56
	DE 0xA5B
	DE 0xA60
	DE 0xA65
	DE 0xA6A
	DE 0xA6F
	DE 0xA74
	DE 0xA79
	DE 0xA7E
	DE 0xA82
	DE 0xA87
	DE 0xA8C
	DE 0xA91
	DE 0xA96
	DE 0xA9B
	DE 0xAA0
	DE 0xAA5
	DE 0xAA9
	DE 0xAAE
	DE 0xAB3
	DE 0xAB8
	DE 0xABD
	DE 0xAC2
	DE 0xAC7
	DE 0xACC
	DE 0xAD1
	DE 0xAD5
	DE 0xADA
	DE 0xADF
	DE 0xAE4
	DE 0xAE9
	DE 0xAEE
	DE 0xAF3
	DE 0xAF8
	DE 0xAFD
	DE 0xB01
	DE 0xB06
	DE 0xB0B
	DE 0xB10
	DE 0xB15
	DE 0xB1A
	DE 0xB1F
	DE 0xB24
	DE 0xB28
	DE 0xB2D
	DE 0xB32
	DE 0xB37
	DE 0xB3C
	DE 0xB41
	DE 0xB46
	DE 0xB4B
	DE 0xB50
	DE 0xB54
	DE 0xB59
	DE 0xB5E
	DE 0xB63
	DE 0xB68
	DE 0xB6D
	DE 0xB72
	DE 0xB77
	DE 0xB7B
	DE 0xB80
	DE 0xB85
	DE 0xB8A
	DE 0xB8F
	DE 0xB94
	DE 0xB99
	DE 0xB9E
	DE 0xBA3
	DE 0xBA7
	DE 0xBAC
	DE 0xBB1
	DE 0xBB6
	DE 0xBBB
	DE 0xBC0
	DE 0xBC5
	DE 0xBCA
	DE 0xBCE
	DE 0xBD3
	DE 0xBD8
	DE 0xBDD
	DE 0xBE2
	DE 0xBE7
	DE 0xBEC
	DE 0xBF1
	DE 0xBF6
	DE 0xBFA
	DE 0xBFF
	DE 0xC04
	DE 0xC09
	DE 0xC0E
	DE 0xC13
	DE 0xC18
	DE 0xC1D
	DE 0xC21
	DE 0xC26
	DE 0xC2B
	DE 0xC30
	DE 0xC35
	DE 0xC3A
	DE 0xC3F
	DE 0xC44
	DE 0xC49
	DE 0xC4D
	DE 0xC52
	DE 0xC57
	DE 0xC5C
	DE 0xC61
	DE 0xC66
	DE 0xC6B
	DE 0xC70
	DE 0xC74
	DE 0xC79
	DE 0xC7E
	DE 0xC83
	DE 0xC88
	DE 0xC8D
	DE 0xC92
	DE 0xC97
	DE 0xC9C
	DE 0xCA0
	DE 0xCA5
	DE 0xCAA
	DE 0xCAF
	DE 0xCB4
	DE 0xCB9
	DE 0xCBE
	DE 0xCC3
	DE 0xCC7
	DE 0xCCC
	DE 0xCD1
	DE 0xCD6
	DE 0xCDB
	DE 0xCE0
	DE 0xCE5
	DE 0xCEA
	DE 0xCEF
	DE 0xCF3
	DE 0xCF8
	DE 0xCFD
	DE 0xD02
	DE 0xD07
	DE 0xD0C
	DE 0xD11
	DE 0xD16
	DE 0xD1A
	DE 0xD1F
	DE 0xD24
	DE 0xD29
	DE 0xD2E
	DE 0xD33
	DE 0xD38
	DE 0xD3D
	DE 0xD42
	DE 0xD46
	DE 0xD4B
	DE 0xD50
	DE 0xD55
	DE 0xD5A
	DE 0xD5F
	DE 0xD64
	DE 0xD69
	DE 0xD6E
	DE 0xD72
	DE 0xD77
	DE 0xD7C
	DE 0xD81
	DE 0xD86
	DE 0xD8B
	DE 0xD90
	DE 0xD95
	DE 0xD99
	DE 0xD9E
	DE 0xDA3
	DE 0xDA8
	DE 0xDAD
	DE 0xDB2
	DE 0xDB7
	DE 0xDBC
	DE 0xDC1
	DE 0xDC5
	DE 0xDCA
	DE 0xDCF
	DE 0xDD4
	DE 0xDD9
	DE 0xDDE
	DE 0xDE3
	DE 0xDE8
	DE 0xDEC
	DE 0xDF1
	DE 0xDF6
	DE 0xDFB
	DE 0xE00
	DE 0xE05
	DE 0xE0A
	DE 0xE0F
	DE 0xE14
	DE 0xE18
	DE 0xE1D
	DE 0xE22
	DE 0xE27
	DE 0xE2C
	DE 0xE31
	DE 0xE36
	DE 0xE3B
	DE 0xE3F
	DE 0xE44
	DE 0xE49
	DE 0xE4E
	DE 0xE53
	DE 0xE58
	DE 0xE5D
	DE 0xE62
	DE 0xE67
	DE 0xE6B
	DE 0xE70
	DE 0xE75
	DE 0xE7A
	DE 0xE7F
	DE 0xE84
	DE 0xE89
	DE 0xE8E
	DE 0xE92
	DE 0xE97
	DE 0xE9C
	DE 0xEA1
	DE 0xEA6
	DE 0xEAB
	DE 0xEB0
	DE 0xEB5
	DE 0xEBA
	DE 0xEBE
	DE 0xEC3
	DE 0xEC8
	DE 0xECD
	DE 0xED2
	DE 0xED7
	DE 0xEDC
	DE 0xEE1
	DE 0xEE5
	DE 0xEEA
	DE 0xEEF
	DE 0xEF4
	DE 0xEF9
	DE 0xEFE
	DE 0xF03
	DE 0xF08
	DE 0xF0D
	DE 0xF11
	DE 0xF16
	DE 0xF1B
	DE 0xF20
	DE 0xF25
	DE 0xF2A
	DE 0xF2F
	DE 0xF34
	DE 0xF38
	DE 0xF3D
	DE 0xF42
	DE 0xF47
	DE 0xF4C
	DE 0xF51
	DE 0xF56
	DE 0xF5B
	DE 0xF60
	DE 0xF64
	DE 0xF69
	DE 0xF6E
	DE 0xF73
	DE 0xF78
	DE 0xF7D
	DE 0xF82
	DE 0xF87
	DE 0xF8B
	DE 0xF90
	DE 0xF95
	DE 0xF9A
	DE 0xF9F
	DE 0xFA4
	DE 0xFA9
	DE 0xFAE
	DE 0xFB3
	DE 0xFB7
	DE 0xFBC
	DE 0xFC1
	DE 0xFC6
	DE 0xFCB
	DE 0xFD0
	DE 0xFD5
	DE 0xFDA
	DE 0xFDF
	DE 0xFE3
	DE 0xFE8
	DE 0xFED
	DE 0xFF2
	DE 0xFF7
	DE 0xFFC
	DE 0x1001
	DE 0x1006
	DE 0x100A
	DE 0x100F
	DE 0x1014
	DE 0x1019
	DE 0x101E
	DE 0x1023
	DE 0x1028
	DE 0x102D
	DE 0x1032
	DE 0x1036
	DE 0x103B
	DE 0x1040
	DE 0x1045
	DE 0x104A
	DE 0x104F
	DE 0x1054
	DE 0x1059
	DE 0x105D
	DE 0x1062
	DE 0x1067
	DE 0x106C
	DE 0x1071
	DE 0x1076
	DE 0x107B
	DE 0x1080
	DE 0x1085
	DE 0x1089
	DE 0x108E
	DE 0x1093
	DE 0x1098
	DE 0x109D
	DE 0x10A2
	DE 0x10A7
	DE 0x10AC
	DE 0x10B0
	DE 0x10B5
	DE 0x10BA
	DE 0x10BF
	DE 0x10C4
	DE 0x10C9
	DE 0x10CE
	DE 0x10D3
	DE 0x10D8
	DE 0x10DC
	DE 0x10E1
	DE 0x10E6
	DE 0x10EB
	DE 0x10F0
	DE 0x10F5
	DE 0x10FA
	DE 0x10FF
	DE 0x1103
	DE 0x1108
	DE 0x110D
	DE 0x1112
	DE 0x1117
	DE 0x111C
	DE 0x1121
	DE 0x1126
	DE 0x112B
	DE 0x112F
	DE 0x1134
	DE 0x1139
	DE 0x113E
	DE 0x1143
	DE 0x1148
	DE 0x114D
	DE 0x1152
	DE 0x1156
	DE 0x115B
	DE 0x1160
	DE 0x1165
	DE 0x116A
	DE 0x116F
	DE 0x1174
	DE 0x1179
	DE 0x117E
	DE 0x1182
	DE 0x1187
	DE 0x118C
	DE 0x1191
	DE 0x1196
	DE 0x119B
	DE 0x11A0
	DE 0x11A5
	DE 0x11A9
	DE 0x11AE
	DE 0x11B3
	DE 0x11B8
	DE 0x11BD
	DE 0x11C2
	DE 0x11C7
	DE 0x11CC
	DE 0x11D1
	DE 0x11D5
	DE 0x11DA
	DE 0x11DF
	DE 0x11E4
	DE 0x11E9
	DE 0x11EE
	DE 0x11F3
	DE 0x11F8
	DE 0x11FC
	DE 0x1201
	DE 0x1206
	DE 0x120B
	DE 0x1210
	DE 0x1215
	DE 0x121A
	DE 0x121F
	DE 0x1224
	DE 0x1228
	DE 0x122D
	DE 0x1232
	DE 0x1237
	DE 0x123C
	DE 0x1241
	DE 0x1246
	DE 0x124B
	DE 0x1250
	DE 0x1254
	DE 0x1259
	DE 0x125E
	DE 0x1263
	DE 0x1268
	DE 0x126D
	DE 0x1272
	DE 0x1277
	DE 0x127B
	DE 0x1280
	DE 0x1285
	DE 0x128A
	DE 0x128F
	DE 0x1294
	DE 0x1299
	DE 0x129E
	DE 0x12A3
	DE 0x12A7
	DE 0x12AC
	DE 0x12B1
	DE 0x12B6
	DE 0x12BB
	DE 0x12C0
	DE 0x12C5
	DE 0x12CA
	DE 0x12CE
	DE 0x12D3
	DE 0x12D8
	DE 0x12DD
	DE 0x12E2
	DE 0x12E7
	DE 0x12EC
	DE 0x12F1
	DE 0x12F6
	DE 0x12FA
	DE 0x12FF
	DE 0x1304
	DE 0x1309
	DE 0x130E
	DE 0x1313
	DE 0x1318
	DE 0x131D
	DE 0x1321
	DE 0x1326
	DE 0x132B
	DE 0x1330
	DE 0x1335
	DE 0x133A
	DE 0x133F
	DE 0x1344
	DE 0x1349
	DE 0x134D
	DE 0x1352
	DE 0x1357
	DE 0x135C
	DE 0x1361
	DE 0x1366
	DE 0x136B
	DE 0x1370
	DE 0x1374
	DE 0x1379
	DE 0x137E
	DE 0x1383
#ENDIF
hf_detect_cal_table_end
	end