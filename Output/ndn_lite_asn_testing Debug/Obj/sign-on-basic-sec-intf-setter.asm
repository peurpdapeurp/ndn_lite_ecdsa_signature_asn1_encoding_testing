	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sign-on-basic-sec-intf-setter.c"
	.text
.Ltext0:
	.section	.text.sign_on_basic_set_sec_intf,"ax",%progbits
	.align	1
	.global	sign_on_basic_set_sec_intf
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sign_on_basic_set_sec_intf, %function
sign_on_basic_set_sec_intf:
.LFB0:
	.file 1 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-sec-intf-setter.c"
	.loc 1 21 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 22 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L6
	.loc 1 25 0
	ldr	r3, [sp]
	ldr	r2, .L7
	str	r2, [r3, #2324]
	.loc 1 26 0
	ldr	r3, [sp]
	ldr	r2, .L7+4
	str	r2, [r3, #2328]
	.loc 1 27 0
	ldr	r3, [sp]
	ldr	r2, .L7+8
	str	r2, [r3, #2332]
	.loc 1 28 0
	ldr	r3, [sp]
	ldr	r2, .L7+12
	str	r2, [r3, #2336]
	.loc 1 29 0
	ldr	r3, [sp]
	ldr	r2, .L7+16
	str	r2, [r3, #2340]
	.loc 1 30 0
	ldr	r3, [sp]
	ldr	r2, .L7+20
	str	r2, [r3, #2344]
	.loc 1 31 0
	ldr	r3, [sp]
	ldr	r2, .L7+24
	str	r2, [r3, #2348]
	.loc 1 32 0
	ldr	r3, [sp]
	ldr	r2, .L7+28
	str	r2, [r3, #2352]
	.loc 1 33 0
	ldr	r3, [sp]
	ldr	r2, .L7+32
	str	r2, [r3, #2356]
	.loc 1 34 0
	ldr	r3, [sp]
	ldr	r2, .L7+36
	str	r2, [r3, #2360]
	.loc 1 35 0
	ldr	r3, [sp]
	ldr	r2, .L7+40
	str	r2, [r3, #2364]
	.loc 1 36 0
	ldr	r3, [sp]
	ldr	r2, .L7+44
	str	r2, [r3, #2368]
	.loc 1 38 0
	nop
	.loc 1 44 0
	movs	r3, #0
	b	.L5
.L6:
	.loc 1 41 0
	mvn	r3, #100
.L5:
	.loc 1 45 0
	mov	r0, r3
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.L8:
	.align	2
.L7:
	.word	sign_on_basic_ecc_256_gen_sha256_hash
	.word	sign_on_basic_ecc_256_gen_n1_keypair
	.word	sign_on_basic_ecc_256_gen_kt
	.word	sign_on_basic_ecc_256_gen_btstrp_rqst_sig
	.word	sign_on_basic_ecc_256_get_btstrp_rqst_sig_len
	.word	sign_on_basic_ecc_256_vrfy_btstrp_rqst_rspns_sig
	.word	sign_on_basic_ecc_256_gen_cert_rqst_sig
	.word	sign_on_basic_ecc_256_get_cert_rqst_sig_len
	.word	sign_on_basic_ecc_256_vrfy_cert_rqst_rspns_sig
	.word	sign_on_basic_ecc_256_decrypt_kd_pri
	.word	sign_on_basic_ecc_256_gen_fin_msg_sig
	.word	sign_on_basic_ecc_256_get_fin_msg_sig_len
.LFE0:
	.size	sign_on_basic_set_sec_intf, .-sign_on_basic_set_sec_intf
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stdint.h"
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/__crossworks.h"
	.file 4 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-client.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stdio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa49
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF957
	.byte	0xc
	.4byte	.LASF958
	.4byte	.LASF959
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF812
	.uleb128 0x3
	.4byte	.LASF816
	.byte	0x2
	.byte	0x30
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF813
	.uleb128 0x4
	.4byte	0x40
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF814
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF815
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF817
	.byte	0x2
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF818
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF819
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF820
	.uleb128 0x6
	.4byte	.LASF871
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF821
	.byte	0x3
	.byte	0x7f
	.4byte	0x5a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF822
	.byte	0x3
	.byte	0x80
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF823
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0xc6
	.uleb128 0x9
	.4byte	0x6c
	.uleb128 0x9
	.4byte	0xd8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF824
	.uleb128 0x4
	.4byte	0xcc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x81
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0xfc
	.uleb128 0x9
	.4byte	0xfc
	.uleb128 0x9
	.4byte	0x102
	.uleb128 0x9
	.4byte	0x6c
	.uleb128 0x9
	.4byte	0xd8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6c
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd3
	.uleb128 0xb
	.byte	0x58
	.byte	0x3
	.byte	0x86
	.4byte	0x291
	.uleb128 0x7
	.4byte	.LASF825
	.byte	0x3
	.byte	0x88
	.4byte	0x102
	.byte	0
	.uleb128 0x7
	.4byte	.LASF826
	.byte	0x3
	.byte	0x89
	.4byte	0x102
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF827
	.byte	0x3
	.byte	0x8a
	.4byte	0x102
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF828
	.byte	0x3
	.byte	0x8c
	.4byte	0x102
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF829
	.byte	0x3
	.byte	0x8d
	.4byte	0x102
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF830
	.byte	0x3
	.byte	0x8e
	.4byte	0x102
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF831
	.byte	0x3
	.byte	0x8f
	.4byte	0x102
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF832
	.byte	0x3
	.byte	0x90
	.4byte	0x102
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF833
	.byte	0x3
	.byte	0x91
	.4byte	0x102
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF834
	.byte	0x3
	.byte	0x92
	.4byte	0x102
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF835
	.byte	0x3
	.byte	0x94
	.4byte	0xcc
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF836
	.byte	0x3
	.byte	0x95
	.4byte	0xcc
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF837
	.byte	0x3
	.byte	0x96
	.4byte	0xcc
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF838
	.byte	0x3
	.byte	0x97
	.4byte	0xcc
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF839
	.byte	0x3
	.byte	0x98
	.4byte	0xcc
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF840
	.byte	0x3
	.byte	0x99
	.4byte	0xcc
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF841
	.byte	0x3
	.byte	0x9a
	.4byte	0xcc
	.byte	0x2e
	.uleb128 0x7
	.4byte	.LASF842
	.byte	0x3
	.byte	0x9b
	.4byte	0xcc
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF843
	.byte	0x3
	.byte	0x9c
	.4byte	0xcc
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF844
	.byte	0x3
	.byte	0x9d
	.4byte	0xcc
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF845
	.byte	0x3
	.byte	0x9e
	.4byte	0xcc
	.byte	0x32
	.uleb128 0x7
	.4byte	.LASF846
	.byte	0x3
	.byte	0x9f
	.4byte	0xcc
	.byte	0x33
	.uleb128 0x7
	.4byte	.LASF847
	.byte	0x3
	.byte	0xa0
	.4byte	0xcc
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF848
	.byte	0x3
	.byte	0xa1
	.4byte	0xcc
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF849
	.byte	0x3
	.byte	0xa6
	.4byte	0x102
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF850
	.byte	0x3
	.byte	0xa7
	.4byte	0x102
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF851
	.byte	0x3
	.byte	0xa8
	.4byte	0x102
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF852
	.byte	0x3
	.byte	0xa9
	.4byte	0x102
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF853
	.byte	0x3
	.byte	0xaa
	.4byte	0x102
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF854
	.byte	0x3
	.byte	0xab
	.4byte	0x102
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF855
	.byte	0x3
	.byte	0xac
	.4byte	0x102
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF856
	.byte	0x3
	.byte	0xad
	.4byte	0x102
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF857
	.byte	0x3
	.byte	0xae
	.4byte	0x108
	.uleb128 0x4
	.4byte	0x291
	.uleb128 0xb
	.byte	0x20
	.byte	0x3
	.byte	0xc4
	.4byte	0x30a
	.uleb128 0x7
	.4byte	.LASF858
	.byte	0x3
	.byte	0xc6
	.4byte	0x31e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF859
	.byte	0x3
	.byte	0xc7
	.4byte	0x333
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF860
	.byte	0x3
	.byte	0xc8
	.4byte	0x333
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF861
	.byte	0x3
	.byte	0xcb
	.4byte	0x34d
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF862
	.byte	0x3
	.byte	0xcc
	.4byte	0x362
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF863
	.byte	0x3
	.byte	0xcd
	.4byte	0x362
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF864
	.byte	0x3
	.byte	0xd0
	.4byte	0x368
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF865
	.byte	0x3
	.byte	0xd1
	.4byte	0x36e
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x31e
	.uleb128 0x9
	.4byte	0x5a
	.uleb128 0x9
	.4byte	0x5a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30a
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x333
	.uleb128 0x9
	.4byte	0x5a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x324
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x34d
	.uleb128 0x9
	.4byte	0xa6
	.uleb128 0x9
	.4byte	0x5a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x339
	.uleb128 0x8
	.4byte	0xa6
	.4byte	0x362
	.uleb128 0x9
	.4byte	0xa6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x353
	.uleb128 0xa
	.byte	0x4
	.4byte	0xad
	.uleb128 0xa
	.byte	0x4
	.4byte	0xde
	.uleb128 0x3
	.4byte	.LASF866
	.byte	0x3
	.byte	0xd2
	.4byte	0x2a1
	.uleb128 0x4
	.4byte	0x374
	.uleb128 0xb
	.byte	0xc
	.byte	0x3
	.byte	0xd4
	.4byte	0x3b1
	.uleb128 0x7
	.4byte	.LASF867
	.byte	0x3
	.byte	0xd5
	.4byte	0x102
	.byte	0
	.uleb128 0x7
	.4byte	.LASF868
	.byte	0x3
	.byte	0xd6
	.4byte	0x3b1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF869
	.byte	0x3
	.byte	0xd7
	.4byte	0x3b7
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x29c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37f
	.uleb128 0x3
	.4byte	.LASF870
	.byte	0x3
	.byte	0xd8
	.4byte	0x384
	.uleb128 0x4
	.4byte	0x3bd
	.uleb128 0x6
	.4byte	.LASF872
	.byte	0x14
	.byte	0x3
	.byte	0xdc
	.4byte	0x3e6
	.uleb128 0x7
	.4byte	.LASF873
	.byte	0x3
	.byte	0xdd
	.4byte	0x3e6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x3f6
	.4byte	0x3f6
	.uleb128 0xd
	.4byte	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0xe
	.4byte	.LASF874
	.byte	0x3
	.2byte	0x106
	.4byte	0x3cd
	.uleb128 0xe
	.4byte	.LASF875
	.byte	0x3
	.2byte	0x10d
	.4byte	0x3c8
	.uleb128 0xe
	.4byte	.LASF876
	.byte	0x3
	.2byte	0x110
	.4byte	0x37f
	.uleb128 0xe
	.4byte	.LASF877
	.byte	0x3
	.2byte	0x111
	.4byte	0x37f
	.uleb128 0xc
	.4byte	0x47
	.4byte	0x43c
	.uleb128 0xd
	.4byte	0x6c
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	0x42c
	.uleb128 0xe
	.4byte	.LASF878
	.byte	0x3
	.2byte	0x113
	.4byte	0x43c
	.uleb128 0xc
	.4byte	0xd3
	.4byte	0x458
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x44d
	.uleb128 0xe
	.4byte	.LASF879
	.byte	0x3
	.2byte	0x115
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF880
	.byte	0x3
	.2byte	0x116
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF881
	.byte	0x3
	.2byte	0x117
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF882
	.byte	0x3
	.2byte	0x118
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF883
	.byte	0x3
	.2byte	0x11a
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF884
	.byte	0x3
	.2byte	0x11b
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF885
	.byte	0x3
	.2byte	0x11c
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF886
	.byte	0x3
	.2byte	0x11d
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF887
	.byte	0x3
	.2byte	0x11e
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF888
	.byte	0x3
	.2byte	0x11f
	.4byte	0x458
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x4e4
	.uleb128 0x9
	.4byte	0x4e4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0x10
	.4byte	.LASF950
	.uleb128 0x4
	.4byte	0x4ea
	.uleb128 0xe
	.4byte	.LASF889
	.byte	0x3
	.2byte	0x135
	.4byte	0x500
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4d5
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x515
	.uleb128 0x9
	.4byte	0x515
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4ea
	.uleb128 0xe
	.4byte	.LASF890
	.byte	0x3
	.2byte	0x136
	.4byte	0x527
	.uleb128 0xa
	.byte	0x4
	.4byte	0x506
	.uleb128 0x11
	.4byte	.LASF891
	.byte	0x3
	.2byte	0x14d
	.4byte	0x539
	.uleb128 0xa
	.byte	0x4
	.4byte	0x53f
	.uleb128 0x8
	.4byte	0x102
	.4byte	0x54e
	.uleb128 0x9
	.4byte	0x5a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF892
	.byte	0x8
	.byte	0x3
	.2byte	0x14f
	.4byte	0x576
	.uleb128 0x13
	.4byte	.LASF893
	.byte	0x3
	.2byte	0x151
	.4byte	0x52d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF894
	.byte	0x3
	.2byte	0x152
	.4byte	0x576
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x11
	.4byte	.LASF895
	.byte	0x3
	.2byte	0x153
	.4byte	0x54e
	.uleb128 0xe
	.4byte	.LASF896
	.byte	0x3
	.2byte	0x157
	.4byte	0x594
	.uleb128 0xa
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x3
	.4byte	.LASF897
	.byte	0x4
	.byte	0x1f
	.4byte	0x5a5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ab
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5ca
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF898
	.byte	0x4
	.byte	0x33
	.4byte	0x5db
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5e1
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x609
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x609
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x609
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF899
	.byte	0x4
	.byte	0x48
	.4byte	0x61a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x620
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x64d
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x609
	.byte	0
	.uleb128 0x3
	.4byte	.LASF900
	.byte	0x4
	.byte	0x61
	.4byte	0x658
	.uleb128 0xa
	.byte	0x4
	.4byte	0x65e
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x686
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x609
	.byte	0
	.uleb128 0x3
	.4byte	.LASF901
	.byte	0x4
	.byte	0x6a
	.4byte	0x691
	.uleb128 0xa
	.byte	0x4
	.4byte	0x697
	.uleb128 0x14
	.4byte	0x61
	.4byte	0x6a2
	.uleb128 0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF902
	.byte	0x4
	.byte	0x80
	.4byte	0x6ad
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6b3
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x6db
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.byte	0
	.uleb128 0x3
	.4byte	.LASF903
	.byte	0x4
	.byte	0x99
	.4byte	0x658
	.uleb128 0x3
	.4byte	.LASF904
	.byte	0x4
	.byte	0xa2
	.4byte	0x691
	.uleb128 0x3
	.4byte	.LASF905
	.byte	0x4
	.byte	0xb7
	.4byte	0x6ad
	.uleb128 0x3
	.4byte	.LASF906
	.byte	0x4
	.byte	0xcb
	.4byte	0x707
	.uleb128 0xa
	.byte	0x4
	.4byte	0x70d
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x73a
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5c4
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5ca
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x609
	.byte	0
	.uleb128 0x3
	.4byte	.LASF907
	.byte	0x4
	.byte	0xe5
	.4byte	0x658
	.uleb128 0x3
	.4byte	.LASF908
	.byte	0x4
	.byte	0xee
	.4byte	0x691
	.uleb128 0x12
	.4byte	.LASF909
	.byte	0x30
	.byte	0x4
	.2byte	0x10e
	.4byte	0x7fa
	.uleb128 0x13
	.4byte	.LASF910
	.byte	0x4
	.2byte	0x10f
	.4byte	0x59a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF911
	.byte	0x4
	.2byte	0x110
	.4byte	0x5d0
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF912
	.byte	0x4
	.2byte	0x111
	.4byte	0x60f
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF913
	.byte	0x4
	.2byte	0x112
	.4byte	0x64d
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF914
	.byte	0x4
	.2byte	0x113
	.4byte	0x686
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF915
	.byte	0x4
	.2byte	0x114
	.4byte	0x6a2
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF916
	.byte	0x4
	.2byte	0x115
	.4byte	0x6db
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF917
	.byte	0x4
	.2byte	0x116
	.4byte	0x6e6
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF918
	.byte	0x4
	.2byte	0x117
	.4byte	0x6f1
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF919
	.byte	0x4
	.2byte	0x118
	.4byte	0x6fc
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF920
	.byte	0x4
	.2byte	0x119
	.4byte	0x73a
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF921
	.byte	0x4
	.2byte	0x11a
	.4byte	0x745
	.byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF922
	.2byte	0x944
	.byte	0x4
	.2byte	0x154
	.4byte	0x974
	.uleb128 0x13
	.4byte	.LASF923
	.byte	0x4
	.2byte	0x156
	.4byte	0x974
	.byte	0
	.uleb128 0x17
	.4byte	.LASF924
	.byte	0x4
	.2byte	0x157
	.4byte	0x61
	.2byte	0x180
	.uleb128 0x17
	.4byte	.LASF925
	.byte	0x4
	.2byte	0x159
	.4byte	0x985
	.2byte	0x184
	.uleb128 0x17
	.4byte	.LASF926
	.byte	0x4
	.2byte	0x15a
	.4byte	0x61
	.2byte	0x230
	.uleb128 0x17
	.4byte	.LASF927
	.byte	0x4
	.2byte	0x15c
	.4byte	0x995
	.2byte	0x234
	.uleb128 0x17
	.4byte	.LASF928
	.byte	0x4
	.2byte	0x15d
	.4byte	0x61
	.2byte	0x240
	.uleb128 0x17
	.4byte	.LASF929
	.byte	0x4
	.2byte	0x15f
	.4byte	0x9a5
	.2byte	0x244
	.uleb128 0x17
	.4byte	.LASF930
	.byte	0x4
	.2byte	0x160
	.4byte	0x61
	.2byte	0x248
	.uleb128 0x17
	.4byte	.LASF931
	.byte	0x4
	.2byte	0x162
	.4byte	0x9b5
	.2byte	0x24c
	.uleb128 0x17
	.4byte	.LASF932
	.byte	0x4
	.2byte	0x163
	.4byte	0x61
	.2byte	0x25c
	.uleb128 0x17
	.4byte	.LASF933
	.byte	0x4
	.2byte	0x165
	.4byte	0x985
	.2byte	0x260
	.uleb128 0x17
	.4byte	.LASF934
	.byte	0x4
	.2byte	0x166
	.4byte	0x61
	.2byte	0x30c
	.uleb128 0x17
	.4byte	.LASF935
	.byte	0x4
	.2byte	0x168
	.4byte	0x974
	.2byte	0x310
	.uleb128 0x17
	.4byte	.LASF936
	.byte	0x4
	.2byte	0x169
	.4byte	0x61
	.2byte	0x490
	.uleb128 0x17
	.4byte	.LASF937
	.byte	0x4
	.2byte	0x16b
	.4byte	0x985
	.2byte	0x494
	.uleb128 0x17
	.4byte	.LASF938
	.byte	0x4
	.2byte	0x16c
	.4byte	0x61
	.2byte	0x540
	.uleb128 0x17
	.4byte	.LASF939
	.byte	0x4
	.2byte	0x16e
	.4byte	0x974
	.2byte	0x544
	.uleb128 0x17
	.4byte	.LASF940
	.byte	0x4
	.2byte	0x16f
	.4byte	0x61
	.2byte	0x6c4
	.uleb128 0x17
	.4byte	.LASF941
	.byte	0x4
	.2byte	0x171
	.4byte	0x9c5
	.2byte	0x6c8
	.uleb128 0x17
	.4byte	.LASF942
	.byte	0x4
	.2byte	0x172
	.4byte	0x61
	.2byte	0x790
	.uleb128 0x17
	.4byte	.LASF943
	.byte	0x4
	.2byte	0x174
	.4byte	0x9c5
	.2byte	0x794
	.uleb128 0x17
	.4byte	.LASF944
	.byte	0x4
	.2byte	0x175
	.4byte	0x61
	.2byte	0x85c
	.uleb128 0x17
	.4byte	.LASF945
	.byte	0x4
	.2byte	0x177
	.4byte	0x985
	.2byte	0x860
	.uleb128 0x17
	.4byte	.LASF946
	.byte	0x4
	.2byte	0x178
	.4byte	0x61
	.2byte	0x90c
	.uleb128 0x17
	.4byte	.LASF947
	.byte	0x4
	.2byte	0x17a
	.4byte	0x30
	.2byte	0x910
	.uleb128 0x17
	.4byte	.LASF948
	.byte	0x4
	.2byte	0x17c
	.4byte	0x750
	.2byte	0x914
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x985
	.uleb128 0x18
	.4byte	0x6c
	.2byte	0x17f
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x995
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xab
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9a5
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9b5
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9c5
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9d5
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xc7
	.byte	0
	.uleb128 0x11
	.4byte	.LASF949
	.byte	0x5
	.2byte	0x317
	.4byte	0x9e1
	.uleb128 0x10
	.4byte	.LASF951
	.uleb128 0xe
	.4byte	.LASF952
	.byte	0x5
	.2byte	0x31b
	.4byte	0x9f2
	.uleb128 0xa
	.byte	0x4
	.4byte	0x9d5
	.uleb128 0xe
	.4byte	.LASF953
	.byte	0x5
	.2byte	0x31c
	.4byte	0x9f2
	.uleb128 0xe
	.4byte	.LASF954
	.byte	0x5
	.2byte	0x31d
	.4byte	0x9f2
	.uleb128 0x19
	.4byte	.LASF960
	.byte	0x1
	.byte	0x15
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa46
	.uleb128 0x1a
	.4byte	.LASF955
	.byte	0x1
	.byte	0x15
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1a
	.4byte	.LASF956
	.byte	0x1
	.byte	0x15
	.4byte	0xa46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7fa
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.uleb128 0x2134
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xa4d
	.4byte	0xa10
	.ascii	"sign_on_basic_set_sec_intf\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x3a8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xa4d
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x40
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x4c
	.ascii	"short int\000"
	.4byte	0x53
	.ascii	"short unsigned int\000"
	.4byte	0x5a
	.ascii	"int\000"
	.4byte	0x6c
	.ascii	"unsigned int\000"
	.4byte	0x61
	.ascii	"uint32_t\000"
	.4byte	0x73
	.ascii	"long long int\000"
	.4byte	0x7a
	.ascii	"long long unsigned int\000"
	.4byte	0xa6
	.ascii	"long int\000"
	.4byte	0x81
	.ascii	"__mbstate_s\000"
	.4byte	0xcc
	.ascii	"char\000"
	.4byte	0x291
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x374
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x3bd
	.ascii	"__RAL_locale_t\000"
	.4byte	0x3cd
	.ascii	"__locale_s\000"
	.4byte	0x52d
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x54e
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x57c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x59a
	.ascii	"sign_on_basic_sec_gen_sha256_hash\000"
	.4byte	0x5d0
	.ascii	"sign_on_basic_sec_gen_n1_keypair\000"
	.4byte	0x60f
	.ascii	"sign_on_basic_sec_gen_kt\000"
	.4byte	0x64d
	.ascii	"sign_on_basic_sec_gen_btstrp_rqst_sig\000"
	.4byte	0x686
	.ascii	"sign_on_basic_sec_get_btstrp_rqst_sig_len\000"
	.4byte	0x6a2
	.ascii	"sign_on_basic_sec_vrfy_btstrp_rqst_rspns_sig\000"
	.4byte	0x6db
	.ascii	"sign_on_basic_sec_gen_cert_rqst_sig\000"
	.4byte	0x6e6
	.ascii	"sign_on_basic_sec_get_cert_rqst_sig_len\000"
	.4byte	0x6f1
	.ascii	"sign_on_basic_sec_vrfy_cert_rqst_rspns_sig\000"
	.4byte	0x6fc
	.ascii	"sign_on_basic_sec_decrypt_kd_pri\000"
	.4byte	0x73a
	.ascii	"sign_on_basic_sec_gen_fin_msg_sig\000"
	.4byte	0x745
	.ascii	"sign_on_basic_sec_get_fin_msg_sig_len\000"
	.4byte	0x750
	.ascii	"sign_on_basic_sec_intf\000"
	.4byte	0x7fa
	.ascii	"sign_on_basic_client_t\000"
	.4byte	0x9d5
	.ascii	"FILE\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 6 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-sec-intf-setter.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x6
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF460
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stddef.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF521
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF547
	.file 8 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-client-consts.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 9 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-consts.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 10 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-error-code.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF570
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/inttypes.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 12 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\variants/ecc_256/sign-on-basic-ecc-256-sec.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF795
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.a72719d8574b485c1bc5a80340e6797b,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0
	.4byte	.LASF417
	.byte	0x6
	.uleb128 0
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF520
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF523
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF542
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.50.aad2f28d9688ad38fd1808e94cc788bf,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF546
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicclientconsts.h.12.c6a18f3868a2fe24987587336dd91d31,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF567
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicconsts.h.12.fb94feeea88e28f62402c208b946d4d0,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF569
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.inttypes.h.45.132474ab363a8a9a463d81310b89b52b,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF724
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ndnerrorcode.h.14.8439de0b929d9daf11428c50f6a41455,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF794
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.45.15a76ce3d80dea25435f233c0919057b,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x302
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x308
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x30a
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x30c
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x30d
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x310
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x313
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x316
	.4byte	.LASF811
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF233:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF808:
	.ascii	"_IOFBF 0\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF362:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF898:
	.ascii	"sign_on_basic_sec_gen_n1_keypair\000"
.LASF252:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF655:
	.ascii	"PRIiPTR \"i\"\000"
.LASF908:
	.ascii	"sign_on_basic_sec_get_fin_msg_sig_len\000"
.LASF217:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF523:
	.ascii	"__THREAD __thread\000"
.LASF646:
	.ascii	"PRIXFAST16 \"X\"\000"
.LASF326:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF318:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF866:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF213:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF239:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF343:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF578:
	.ascii	"PRId32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF221:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF806:
	.ascii	"L_tmpnam 256\000"
.LASF656:
	.ascii	"PRIoPTR \"o\"\000"
.LASF692:
	.ascii	"SCNoFAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF319:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF593:
	.ascii	"PRIiFAST8 \"i\"\000"
.LASF448:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF895:
	.ascii	"__RAL_error_decoder_t\000"
.LASF530:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF205:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF266:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF332:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF495:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF302:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF254:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF339:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF242:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF674:
	.ascii	"SCNi16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF583:
	.ascii	"PRIdFAST64 \"lld\"\000"
.LASF301:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF602:
	.ascii	"PRIo8 \"o\"\000"
.LASF779:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_BUFFER_TOO_SHORT -126\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF744:
	.ascii	"NDN_FRAG_WRONG_IDENTIFIER -33\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF855:
	.ascii	"time_format\000"
.LASF502:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF525:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF883:
	.ascii	"__RAL_data_utf8_period\000"
.LASF474:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF925:
	.ascii	"KS_pri_p\000"
.LASF508:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF777:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_SIG -124\000"
.LASF544:
	.ascii	"NULL 0\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF676:
	.ascii	"SCNi64 \"lli\"\000"
.LASF795:
	.ascii	"SIGN_ON_BASIC_ECC_256_SEC_H \000"
.LASF459:
	.ascii	"NDN_LITE_SEC_BACKEND_NRF_CRYPTO 1\000"
.LASF289:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF809:
	.ascii	"_IOLBF 1\000"
.LASF505:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF433:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF454:
	.ascii	"uECC_ENABLE_VLI_API 0\000"
.LASF946:
	.ascii	"KD_pri_len\000"
.LASF905:
	.ascii	"sign_on_basic_sec_vrfy_cert_rqst_rspns_sig\000"
.LASF828:
	.ascii	"int_curr_symbol\000"
.LASF564:
	.ascii	"SIGN_ON_BASIC_CLIENT_N2_PUB_MAX_LENGTH 384\000"
.LASF529:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF262:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF870:
	.ascii	"__RAL_locale_t\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF580:
	.ascii	"PRIdFAST8 \"d\"\000"
.LASF839:
	.ascii	"n_cs_precedes\000"
.LASF538:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF462:
	.ascii	"UINT8_MAX 255\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF279:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF686:
	.ascii	"SCNo8 \"o\"\000"
.LASF208:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF793:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_INT - 136\000"
.LASF464:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF309:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF258:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF573:
	.ascii	"__RAL_SCN_16_PREFIX \"h\"\000"
.LASF546:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF348:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF835:
	.ascii	"int_frac_digits\000"
.LASF591:
	.ascii	"PRIi32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF849:
	.ascii	"day_names\000"
.LASF338:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF499:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF368:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF613:
	.ascii	"PRIoLEAST64 \"llo\"\000"
.LASF553:
	.ascii	"SIGN_ON_BASIC_CLIENT_PROCESSED_CERTIFICATE_REQUEST_"
	.ascii	"RESPONSE 4\000"
.LASF346:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF665:
	.ascii	"SCNdFAST16 __RAL_SCN_16_PREFIX \"d\"\000"
.LASF207:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF442:
	.ascii	"BOARD_PCA10056 1\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF228:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF238:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF440:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF315:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF699:
	.ascii	"SCNu8 \"u\"\000"
.LASF415:
	.ascii	"__VFP_FP__ 1\000"
.LASF286:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF737:
	.ascii	"NDN_SEC_WRONG_AES_SIZE -27\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF237:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF467:
	.ascii	"INT16_MAX 32767\000"
.LASF581:
	.ascii	"PRIdFAST16 \"d\"\000"
.LASF231:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF854:
	.ascii	"date_format\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF606:
	.ascii	"PRIoFAST8 \"o\"\000"
.LASF830:
	.ascii	"mon_decimal_point\000"
.LASF710:
	.ascii	"SCNuLEAST64 \"llu\"\000"
.LASF304:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF310:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF823:
	.ascii	"long int\000"
.LASF758:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"N1_KEYPAIR -105\000"
.LASF227:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF225:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF528:
	.ascii	"__CODE \000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF232:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF892:
	.ascii	"__RAL_error_decoder_s\000"
.LASF248:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF897:
	.ascii	"sign_on_basic_sec_gen_sha256_hash\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF746:
	.ascii	"NDN_FWD_PIT_FULL -41\000"
.LASF366:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF874:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF891:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF643:
	.ascii	"PRIX32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF423:
	.ascii	"__ARM_NEON__\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF426:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF292:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF211:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF452:
	.ascii	"MBEDTLS_CONFIG_FILE \"nrf_crypto_mbedtls_config.h\""
	.ascii	"\000"
.LASF706:
	.ascii	"SCNuFAST64 \"llu\"\000"
.LASF222:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF625:
	.ascii	"PRIuLEAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF494:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF473:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF587:
	.ascii	"PRIdLEAST64 \"lld\"\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF958:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\"
	.ascii	"app-support\\bootstrapping\\secure-sign-on\\sign-on"
	.ascii	"-basic-sec-intf-setter.c\000"
.LASF916:
	.ascii	"gen_cert_rqst_sig\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF645:
	.ascii	"PRIXFAST8 \"X\"\000"
.LASF800:
	.ascii	"SEEK_SET 0\000"
.LASF561:
	.ascii	"SIGN_ON_BASIC_CLIENT_KS_PRI_MAX_LENGTH 172\000"
.LASF801:
	.ascii	"SEEK_CUR 1\000"
.LASF764:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_TRUST_ANCHOR_CERT -111\000"
.LASF851:
	.ascii	"month_names\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF794:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_SEQUENCE -13"
	.ascii	"7\000"
.LASF679:
	.ascii	"SCNiFAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF487:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF667:
	.ascii	"SCNdFAST64 \"lld\"\000"
.LASF549:
	.ascii	"SIGN_ON_BASIC_CLIENT_NOT_STARTED 0\000"
.LASF597:
	.ascii	"PRIiLEAST8 \"i\"\000"
.LASF244:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF865:
	.ascii	"__mbtowc\000"
.LASF498:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF748:
	.ascii	"NDN_FWD_FIB_FULL -43\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF896:
	.ascii	"__RAL_error_decoder_head\000"
.LASF515:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF812:
	.ascii	"signed char\000"
.LASF816:
	.ascii	"uint8_t\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF372:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF864:
	.ascii	"__wctomb\000"
.LASF264:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF328:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF555:
	.ascii	"SIGN_ON_BASIC_CLIENT_DEVICE_IDENTIFIER_MAX_LENGTH 1"
	.ascii	"2\000"
.LASF713:
	.ascii	"SCNx16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF740:
	.ascii	"NDN_SEC_SIGNED_INTEREST_INVALID_DIGEST -30\000"
.LASF666:
	.ascii	"SCNdFAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF721:
	.ascii	"SCNxLEAST16 __RAL_SCN_LEAST16_PREFIX \"x\"\000"
.LASF210:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF215:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF517:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF295:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF251:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF267:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF624:
	.ascii	"PRIuLEAST16 \"u\"\000"
.LASF840:
	.ascii	"n_sep_by_space\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF723:
	.ascii	"SCNxLEAST64 \"llx\"\000"
.LASF518:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF471:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF445:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF457:
	.ascii	"uECC_SUPPORT_COMPRESSED_POINT 0\000"
.LASF513:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF885:
	.ascii	"__RAL_data_utf8_space\000"
.LASF661:
	.ascii	"SCNd16 __RAL_SCN_16_PREFIX \"d\"\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF751:
	.ascii	"NDN_FWD_APP_FACE_CB_TABLE_FULL -50\000"
.LASF466:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF329:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF842:
	.ascii	"n_sign_posn\000"
.LASF922:
	.ascii	"sign_on_basic_client_t\000"
.LASF734:
	.ascii	"NDN_SEC_CRYPTO_ALGO_FAILURE -25\000"
.LASF647:
	.ascii	"PRIXFAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF955:
	.ascii	"variant\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF389:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF556:
	.ascii	"SIGN_ON_BASIC_CLIENT_DEVICE_CAPABILITIES_MAX_LENGTH"
	.ascii	" 1\000"
.LASF942:
	.ascii	"trust_anchor_cert_len\000"
.LASF824:
	.ascii	"char\000"
.LASF365:
	.ascii	"__USA_IBIT__ 16\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF778:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_DECRYPT_"
	.ascii	"KD_PRI -125\000"
.LASF736:
	.ascii	"NDN_SEC_UNSUPPORT_SIGN_TYPE -26\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF354:
	.ascii	"__HA_FBIT__ 7\000"
.LASF480:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF771:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G_PAYLOAD_HASH -118\000"
.LASF229:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF756:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_BUFFER_TOO_SHORT -1"
	.ascii	"03\000"
.LASF763:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_SIG -110\000"
.LASF260:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF261:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF917:
	.ascii	"get_cert_rqst_sig_len\000"
.LASF436:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF424:
	.ascii	"__ARM_NEON\000"
.LASF620:
	.ascii	"PRIuFAST16 \"u\"\000"
.LASF950:
	.ascii	"timeval\000"
.LASF680:
	.ascii	"SCNiFAST64 \"lli\"\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF510:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF621:
	.ascii	"PRIuFAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF773:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_VERIFY_S"
	.ascii	"IGNATURE -120\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF731:
	.ascii	"NDN_SEC_WRONG_KEY_SIZE -22\000"
.LASF585:
	.ascii	"PRIdLEAST16 \"d\"\000"
.LASF598:
	.ascii	"PRIiLEAST16 \"i\"\000"
.LASF929:
	.ascii	"device_capabilities_p\000"
.LASF533:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF882:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF574:
	.ascii	"__RAL_SCN_32_PREFIX \"\"\000"
.LASF550:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_BOOTSTRAPPING_REQUES"
	.ascii	"T 1\000"
.LASF447:
	.ascii	"NRF52840_XXAA 1\000"
.LASF789:
	.ascii	"NDN_ASN1_ECDSA_SIG_INVALID_SIZE -132\000"
.LASF320:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF720:
	.ascii	"SCNxLEAST8 \"hhx\"\000"
.LASF342:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF799:
	.ascii	"putchar(x) __putchar(x, 0)\000"
.LASF831:
	.ascii	"mon_thousands_sep\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF566:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PRI_MAX_LENGTH 172\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF565:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PUB_MAX_LENGTH 384\000"
.LASF605:
	.ascii	"PRIo64 \"llo\"\000"
.LASF727:
	.ascii	"NDN_NAME_INVALID_FORMAT -11\000"
.LASF311:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF863:
	.ascii	"__towlower\000"
.LASF952:
	.ascii	"stdin\000"
.LASF640:
	.ascii	"PRIxMAX \"llx\"\000"
.LASF305:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF741:
	.ascii	"NDN_FRAG_NO_MORE_FRAGS -30\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF843:
	.ascii	"int_p_cs_precedes\000"
.LASF826:
	.ascii	"thousands_sep\000"
.LASF668:
	.ascii	"SCNdLEAST8 \"hhd\"\000"
.LASF893:
	.ascii	"decode\000"
.LASF612:
	.ascii	"PRIoLEAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF755:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_TO_SET_SEC_INT"
	.ascii	"F -102\000"
.LASF938:
	.ascii	"N1_pri_len\000"
.LASF924:
	.ascii	"KS_pub_len\000"
.LASF299:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF493:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF704:
	.ascii	"SCNuFAST16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF314:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF754:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_UNRECOGNIZED_V"
	.ascii	"ARIANT -101\000"
.LASF833:
	.ascii	"positive_sign\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF540:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF648:
	.ascii	"PRIXFAST64 \"llX\"\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF726:
	.ascii	"NDN_OVERSIZE -10\000"
.LASF360:
	.ascii	"__TA_FBIT__ 63\000"
.LASF224:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF601:
	.ascii	"PRIiMAX \"lli\"\000"
.LASF787:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_CERTIFICATE"
	.ascii	"_REQUEST -130\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF906:
	.ascii	"sign_on_basic_sec_decrypt_kd_pri\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF501:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF769:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_N2"
	.ascii	"_PUB_HASH -116\000"
.LASF876:
	.ascii	"__RAL_codeset_ascii\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF747:
	.ascii	"NDN_FWD_PIT_ENTRY_FACE_LIST_FULL -42\000"
.LASF701:
	.ascii	"SCNu32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF639:
	.ascii	"PRIxLEAST64 \"llx\"\000"
.LASF562:
	.ascii	"SIGN_ON_BASIC_CLIENT_N1_PUB_MAX_LENGTH 384\000"
.LASF834:
	.ascii	"negative_sign\000"
.LASF765:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_N2_PUB -112\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF715:
	.ascii	"SCNx64 \"llx\"\000"
.LASF439:
	.ascii	"__SES_VERSION 41000\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF542:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF658:
	.ascii	"PRIxPTR \"x\"\000"
.LASF504:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF957:
	.ascii	"GNU C99 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -fmessage-length=0 -mcpu=cort"
	.ascii	"ex-m4 -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-s"
	.ascii	"p-d16 -mthumb -mtp=soft -munaligned-access -std=gnu"
	.ascii	"99 -g3 -gpubnames -fomit-frame-pointer -fno-dwarf2-"
	.ascii	"cfi-asm -fno-builtin -ffunction-sections -fdata-sec"
	.ascii	"tions -fshort-enums -fno-common\000"
.LASF246:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF263:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF683:
	.ascii	"SCNiLEAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF478:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF712:
	.ascii	"SCNx8 \"x\"\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF937:
	.ascii	"N1_pri_p\000"
.LASF259:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF852:
	.ascii	"abbrev_month_names\000"
.LASF327:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF907:
	.ascii	"sign_on_basic_sec_gen_fin_msg_sig\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF371:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF548:
	.ascii	"SIGN_ON_BASIC_CLIENT_CONSTS_H \000"
.LASF869:
	.ascii	"codeset\000"
.LASF616:
	.ascii	"PRIu16 \"u\"\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF767:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_BUFFER_TOO_SHORT -114"
	.ascii	"\000"
.LASF722:
	.ascii	"SCNxLEAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF687:
	.ascii	"SCNo16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF394:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF422:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF926:
	.ascii	"KS_pri_len\000"
.LASF934:
	.ascii	"KT_len\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF689:
	.ascii	"SCNo64 \"llo\"\000"
.LASF729:
	.ascii	"NDN_WRONG_TLV_LENGTH -13\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF223:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF592:
	.ascii	"PRIi64 \"lli\"\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF768:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_ENCODING_FAILED -115\000"
.LASF276:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF437:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF516:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF590:
	.ascii	"PRIi16 \"i\"\000"
.LASF307:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF709:
	.ascii	"SCNuLEAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF822:
	.ascii	"__wchar\000"
.LASF738:
	.ascii	"NDN_SEC_INIT_FAILURE -28\000"
.LASF256:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF357:
	.ascii	"__SA_IBIT__ 16\000"
.LASF249:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF5:
	.ascii	"__GNUC__ 7\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF857:
	.ascii	"__RAL_locale_data_t\000"
.LASF543:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF468:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF623:
	.ascii	"PRIuLEAST8 \"u\"\000"
.LASF947:
	.ascii	"status\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF235:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF770:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_TR"
	.ascii	"UST_ANCHOR_CERT_HASH -117\000"
.LASF881:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF766:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_GENERA"
	.ascii	"TE_KT -113\000"
.LASF783:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_SUCCESS -130\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF325:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF268:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF714:
	.ascii	"SCNx32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF352:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF671:
	.ascii	"SCNdLEAST64 \"lld\"\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF775:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PUB_CERT -122\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF520:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF853:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF230:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF351:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF718:
	.ascii	"SCNxFAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF604:
	.ascii	"PRIo32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF568:
	.ascii	"SIGN_ON_BASIC_CONSTS_H \000"
.LASF614:
	.ascii	"PRIoMAX \"llo\"\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF451:
	.ascii	"SWI_DISABLE0 1\000"
.LASF910:
	.ascii	"gen_sha256_hash\000"
.LASF730:
	.ascii	"NDN_OVERSIZE_VAR -14\000"
.LASF557:
	.ascii	"SIGN_ON_BASIC_CLIENT_SECURE_SIGN_ON_CODE_MAX_LENGTH"
	.ascii	" 16\000"
.LASF759:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG_PAYLOAD_HASH -106\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF395:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF774:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_CERT_RQST_RSPNS -121\000"
.LASF290:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF846:
	.ascii	"int_n_sep_by_space\000"
.LASF644:
	.ascii	"PRIX64 \"llX\"\000"
.LASF660:
	.ascii	"SCNd8 \"d\"\000"
.LASF739:
	.ascii	"NDN_SEC_FAIL_VERIFY_SIG -29\000"
.LASF889:
	.ascii	"__user_set_time_of_day\000"
.LASF785:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_NRF_SDK_BLE_CONSTRUCT_FAIL"
	.ascii	"ED_TO_INITIALIZE_SIGN_ON_BASIC_CLIENT -132\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF935:
	.ascii	"N1_pub_p\000"
.LASF273:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF450:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF345:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF743:
	.ascii	"NDN_FRAG_NO_MEM -32\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF711:
	.ascii	"SCNuMAX \"llu\"\000"
.LASF514:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF321:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF408:
	.ascii	"__ARM_ARCH 7\000"
.LASF632:
	.ascii	"PRIxFAST8 \"x\"\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF819:
	.ascii	"long long int\000"
.LASF871:
	.ascii	"__mbstate_s\000"
.LASF653:
	.ascii	"PRIXMAX \"llX\"\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF872:
	.ascii	"__locale_s\000"
.LASF355:
	.ascii	"__HA_IBIT__ 8\000"
.LASF772:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G -119\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF650:
	.ascii	"PRIXLEAST16 \"X\"\000"
.LASF708:
	.ascii	"SCNuLEAST16 __RAL_SCN_LEAST16_PREFIX \"u\"\000"
.LASF519:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF496:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF209:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF703:
	.ascii	"SCNuFAST8 \"hhu\"\000"
.LASF900:
	.ascii	"sign_on_basic_sec_gen_btstrp_rqst_sig\000"
.LASF586:
	.ascii	"PRIdLEAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF579:
	.ascii	"PRId64 \"lld\"\000"
.LASF390:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF873:
	.ascii	"__category\000"
.LASF932:
	.ascii	"secure_sign_on_code_len\000"
.LASF811:
	.ascii	"__RAL_FILE_DEFINED \000"
.LASF272:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF939:
	.ascii	"N2_pub_p\000"
.LASF567:
	.ascii	"SIGN_ON_BASIC_CLIENT_KT_MAX_LENGTH 172\000"
.LASF255:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF856:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF425:
	.ascii	"__ARM_NEON_FP\000"
.LASF458:
	.ascii	"uECC_VLI_NATIVE_LITTLE_ENDIAN 1\000"
.LASF628:
	.ascii	"PRIx8 \"x\"\000"
.LASF797:
	.ascii	"EOF (-1)\000"
.LASF757:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_ENCODING_FAILED -10"
	.ascii	"4\000"
.LASF269:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF841:
	.ascii	"p_sign_posn\000"
.LASF350:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF274:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF690:
	.ascii	"SCNoFAST8 \"hho\"\000"
.LASF570:
	.ascii	"NDN_ERROR_CODE_H \000"
.LASF673:
	.ascii	"SCNi8 \"i\"\000"
.LASF470:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF226:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF818:
	.ascii	"unsigned int\000"
.LASF914:
	.ascii	"get_btstrp_rqst_sig_len\000"
.LASF477:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF489:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF218:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF807:
	.ascii	"BUFSIZ 256\000"
.LASF300:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF695:
	.ascii	"SCNoLEAST16 __RAL_SCN_LEAST16_PREFIX \"o\"\000"
.LASF427:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF607:
	.ascii	"PRIoFAST16 \"o\"\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF552:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_CERTIFICATE_REQUEST "
	.ascii	"3\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF915:
	.ascii	"vrfy_btstrp_rqst_rspns_sig\000"
.LASF662:
	.ascii	"SCNd32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF490:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF455:
	.ascii	"uECC_OPTIMIZATION_LEVEL 3\000"
.LASF901:
	.ascii	"sign_on_basic_sec_get_btstrp_rqst_sig_len\000"
.LASF344:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF931:
	.ascii	"secure_sign_on_code_p\000"
.LASF927:
	.ascii	"device_identifier_p\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF241:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF657:
	.ascii	"PRIuPTR \"u\"\000"
.LASF912:
	.ascii	"gen_kt\000"
.LASF554:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_FINISH_MESSAGE 5\000"
.LASF277:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF392:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF890:
	.ascii	"__user_get_time_of_day\000"
.LASF936:
	.ascii	"N1_pub_len\000"
.LASF615:
	.ascii	"PRIu8 \"u\"\000"
.LASF584:
	.ascii	"PRIdLEAST8 \"d\"\000"
.LASF438:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF431:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF705:
	.ascii	"SCNuFAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF923:
	.ascii	"KS_pub_p\000"
.LASF943:
	.ascii	"KD_pub_cert_p\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF247:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF449:
	.ascii	"S140 1\000"
.LASF216:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF877:
	.ascii	"__RAL_codeset_utf8\000"
.LASF364:
	.ascii	"__USA_FBIT__ 16\000"
.LASF600:
	.ascii	"PRIiLEAST64 \"lli\"\000"
.LASF875:
	.ascii	"__RAL_c_locale\000"
.LASF588:
	.ascii	"PRIdMAX \"lld\"\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF635:
	.ascii	"PRIxFAST64 \"llx\"\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF278:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF626:
	.ascii	"PRIuLEAST64 \"llu\"\000"
.LASF476:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF825:
	.ascii	"decimal_point\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF813:
	.ascii	"unsigned char\000"
.LASF792:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_WRITE_ASN1_INT -135\000"
.LASF407:
	.ascii	"__arm__ 1\000"
.LASF749:
	.ascii	"NDN_FWD_INTEREST_REJECTED -44\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF790:
	.ascii	"NDN_ASN1_ECDSA_SIG_BUFFER_TOO_SMALL -133\000"
.LASF547:
	.ascii	"SIGN_ON_BASIC_CLIENT_H \000"
.LASF784:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_FAILURE -131\000"
.LASF418:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF531:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF469:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF899:
	.ascii	"sign_on_basic_sec_gen_kt\000"
.LASF358:
	.ascii	"__DA_FBIT__ 31\000"
.LASF951:
	.ascii	"__RAL_FILE\000"
.LASF886:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF361:
	.ascii	"__TA_IBIT__ 64\000"
.LASF663:
	.ascii	"SCNd64 \"lld\"\000"
.LASF919:
	.ascii	"decrypt_kd_pri\000"
.LASF398:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF697:
	.ascii	"SCNoLEAST64 \"llo\"\000"
.LASF413:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF782:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG "
	.ascii	"-129\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF798:
	.ascii	"__PRINTF_TAG_PTR_DEFINED \000"
.LASF693:
	.ascii	"SCNoFAST64 \"llo\"\000"
.LASF918:
	.ascii	"vrfy_cert_rqst_rspns_sig\000"
.LASF903:
	.ascii	"sign_on_basic_sec_gen_cert_rqst_sig\000"
.LASF270:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF399:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF275:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF444:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF622:
	.ascii	"PRIuFAST64 \"llu\"\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF675:
	.ascii	"SCNi32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF949:
	.ascii	"FILE\000"
.LASF577:
	.ascii	"PRId16 \"d\"\000"
.LASF486:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF240:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF637:
	.ascii	"PRIxLEAST16 \"x\"\000"
.LASF608:
	.ascii	"PRIoFAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF491:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF642:
	.ascii	"PRIX16 \"X\"\000"
.LASF500:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF803:
	.ascii	"FILENAME_MAX 256\000"
.LASF788:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_FINISH_MESS"
	.ascii	"AGE -131\000"
.LASF630:
	.ascii	"PRIx32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF465:
	.ascii	"UINT16_MAX 65535\000"
.LASF933:
	.ascii	"KT_p\000"
.LASF948:
	.ascii	"sec_intf\000"
.LASF306:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF719:
	.ascii	"SCNxFAST64 \"llx\"\000"
.LASF396:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF959:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite-"
	.ascii	"asn-testing\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF265:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF558:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PUB_CERT_MAX_LENGTH 200\000"
.LASF460:
	.ascii	"SIGN_ON_BASIC_SEC_INTF_SETTER_H \000"
.LASF521:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF858:
	.ascii	"__isctype\000"
.LASF526:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF820:
	.ascii	"long long unsigned int\000"
.LASF481:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF920:
	.ascii	"gen_fin_msg_sig\000"
.LASF483:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF333:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF845:
	.ascii	"int_p_sep_by_space\000"
.LASF409:
	.ascii	"__APCS_32__ 1\000"
.LASF340:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF944:
	.ascii	"KD_pub_cert_len\000"
.LASF649:
	.ascii	"PRIXLEAST8 \"X\"\000"
.LASF672:
	.ascii	"SCNdMAX \"lld\"\000"
.LASF610:
	.ascii	"PRIoLEAST8 \"o\"\000"
.LASF535:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF347:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF443:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF541:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF595:
	.ascii	"PRIiFAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF296:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF282:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF317:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF453:
	.ascii	"NRF_CRYPTO_MAX_INSTANCE_COUNT 1\000"
.LASF220:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF904:
	.ascii	"sign_on_basic_sec_get_cert_rqst_sig_len\000"
.LASF838:
	.ascii	"p_sep_by_space\000"
.LASF804:
	.ascii	"FOPEN_MAX 8\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF284:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF802:
	.ascii	"SEEK_END 2\000"
.LASF563:
	.ascii	"SIGN_ON_BASIC_CLIENT_N1_PRI_MAX_LENGTH 172\000"
.LASF724:
	.ascii	"SCNxMAX \"llx\"\000"
.LASF322:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF281:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF560:
	.ascii	"SIGN_ON_BASIC_CLIENT_KS_PUB_MAX_LENGTH 384\000"
.LASF446:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF341:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF463:
	.ascii	"INT8_MAX 127\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF930:
	.ascii	"device_capabilities_len\000"
.LASF725:
	.ascii	"NDN_SUCCESS 0\000"
.LASF700:
	.ascii	"SCNu16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF945:
	.ascii	"KD_pri_p\000"
.LASF441:
	.ascii	"DEBUG_NRF 1\000"
.LASF678:
	.ascii	"SCNiFAST16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF488:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF522:
	.ascii	"__crossworks_H \000"
.LASF761:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_VERIFY"
	.ascii	"_SIGNATURE -108\000"
.LASF353:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF356:
	.ascii	"__SA_FBIT__ 15\000"
.LASF288:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF827:
	.ascii	"grouping\000"
.LASF698:
	.ascii	"SCNoMAX \"llo\"\000"
.LASF429:
	.ascii	"__ARM_EABI__ 1\000"
.LASF482:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF960:
	.ascii	"sign_on_basic_set_sec_intf\000"
.LASF435:
	.ascii	"__ELF__ 1\000"
.LASF412:
	.ascii	"__THUMBEL__ 1\000"
.LASF393:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF791:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_PROBE_ASN1_INT_SIZE -1"
	.ascii	"34\000"
.LASF732:
	.ascii	"NDN_SEC_WRONG_SIG_SIZE -23\000"
.LASF335:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF810:
	.ascii	"_IONBF 2\000"
.LASF611:
	.ascii	"PRIoLEAST16 \"o\"\000"
.LASF324:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF461:
	.ascii	"__stdint_H \000"
.LASF349:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF850:
	.ascii	"abbrev_day_names\000"
.LASF534:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF537:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF878:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF636:
	.ascii	"PRIxLEAST8 \"x\"\000"
.LASF303:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF691:
	.ascii	"SCNoFAST16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF287:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF297:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF859:
	.ascii	"__toupper\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF370:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF253:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF283:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF867:
	.ascii	"name\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF250:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF8:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF669:
	.ascii	"SCNdLEAST16 __RAL_SCN_LEAST16_PREFIX \"d\"\000"
.LASF913:
	.ascii	"gen_btstrp_rqst_sig\000"
.LASF940:
	.ascii	"N2_pub_len\000"
.LASF836:
	.ascii	"frac_digits\000"
.LASF575:
	.ascii	"__RAL_SCN_LEAST16_PREFIX \"h\"\000"
.LASF829:
	.ascii	"currency_symbol\000"
.LASF617:
	.ascii	"PRIu32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF492:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF954:
	.ascii	"stderr\000"
.LASF814:
	.ascii	"short int\000"
.LASF911:
	.ascii	"gen_n1_keypair\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF631:
	.ascii	"PRIx64 \"llx\"\000"
.LASF367:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF805:
	.ascii	"TMP_MAX 256\000"
.LASF373:
	.ascii	"__NO_INLINE__ 1\000"
.LASF781:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG_"
	.ascii	"PAYLOAD_HASH -128\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF821:
	.ascii	"__state\000"
.LASF696:
	.ascii	"SCNoLEAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF589:
	.ascii	"PRIi8 \"i\"\000"
.LASF475:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF559:
	.ascii	"SIGN_ON_BASIC_CLIENT_TRUST_ANCHOR_CERT_MAX_LENGTH 2"
	.ascii	"00\000"
.LASF760:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG -107\000"
.LASF430:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF243:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF832:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF618:
	.ascii	"PRIu64 \"llu\"\000"
.LASF503:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF652:
	.ascii	"PRIXLEAST64 \"llX\"\000"
.LASF688:
	.ascii	"SCNo32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF484:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF313:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF594:
	.ascii	"PRIiFAST16 \"i\"\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF862:
	.ascii	"__towupper\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF582:
	.ascii	"PRIdFAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF532:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF334:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF654:
	.ascii	"PRIdPTR \"d\"\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF844:
	.ascii	"int_n_cs_precedes\000"
.LASF887:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF369:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF330:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF236:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF847:
	.ascii	"int_p_sign_posn\000"
.LASF293:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF641:
	.ascii	"PRIX8 \"X\"\000"
.LASF391:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF941:
	.ascii	"trust_anchor_cert_p\000"
.LASF753:
	.ascii	"NDN_AC_UNRECOGNIZED_KEY_REQUEST -52\000"
.LASF397:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF434:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF735:
	.ascii	"NDN_SEC_UNSUPPORT_CRYPTO_ALGO -26\000"
.LASF316:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF861:
	.ascii	"__iswctype\000"
.LASF234:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF750:
	.ascii	"NDN_FWD_NO_MATCHED_CALLBACK -45\000"
.LASF331:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF902:
	.ascii	"sign_on_basic_sec_vrfy_btstrp_rqst_rspns_sig\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF921:
	.ascii	"get_fin_msg_sig_len\000"
.LASF609:
	.ascii	"PRIoFAST64 \"llo\"\000"
.LASF536:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF432:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF879:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF780:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_ENCODING_FAILED -127\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF411:
	.ascii	"__thumb2__ 1\000"
.LASF545:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF603:
	.ascii	"PRIo16 \"o\"\000"
.LASF497:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF428:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF638:
	.ascii	"PRIxLEAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF291:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF419:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF312:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF285:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF524:
	.ascii	"__RAL_SIZE_T\000"
.LASF817:
	.ascii	"uint32_t\000"
.LASF472:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF848:
	.ascii	"int_n_sign_posn\000"
.LASF733:
	.ascii	"NDN_SEC_DISABLED_FEATURE -24\000"
.LASF512:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF298:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF664:
	.ascii	"SCNdFAST8 \"hhd\"\000"
.LASF928:
	.ascii	"device_identifier_len\000"
.LASF677:
	.ascii	"SCNiFAST8 \"hhi\"\000"
.LASF681:
	.ascii	"SCNiLEAST8 \"hhi\"\000"
.LASF416:
	.ascii	"__ARM_FP 4\000"
.LASF694:
	.ascii	"SCNoLEAST8 \"hho\"\000"
.LASF716:
	.ascii	"SCNxFAST8 \"hhx\"\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF670:
	.ascii	"SCNdLEAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF363:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF888:
	.ascii	"__RAL_data_empty_string\000"
.LASF308:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF323:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF633:
	.ascii	"PRIxFAST16 \"x\"\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF702:
	.ascii	"SCNu64 \"llu\"\000"
.LASF206:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF245:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF509:
	.ascii	"INT16_C(x) (x)\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF837:
	.ascii	"p_cs_precedes\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF815:
	.ascii	"short unsigned int\000"
.LASF953:
	.ascii	"stdout\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF410:
	.ascii	"__thumb__ 1\000"
.LASF752:
	.ascii	"NDN_SD_NO_MATCH_SERVCE -51\000"
.LASF539:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF414:
	.ascii	"__ARMEL__ 1\000"
.LASF707:
	.ascii	"SCNuLEAST8 \"hhu\"\000"
.LASF634:
	.ascii	"PRIxFAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF619:
	.ascii	"PRIuFAST8 \"u\"\000"
.LASF336:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF776:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PRI_ENC -123\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF576:
	.ascii	"PRId8 \"d\"\000"
.LASF599:
	.ascii	"PRIiLEAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF956:
	.ascii	"sign_on_basic_client\000"
.LASF569:
	.ascii	"SIGN_ON_BASIC_VARIANT_ECC_256 1\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF909:
	.ascii	"sign_on_basic_sec_intf\000"
.LASF596:
	.ascii	"PRIiFAST64 \"lli\"\000"
.LASF728:
	.ascii	"NDN_WRONG_TLV_TYPE -12\000"
.LASF627:
	.ascii	"PRIuMAX \"llu\"\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF629:
	.ascii	"PRIx16 \"x\"\000"
.LASF742:
	.ascii	"NDN_FRAG_OUT_OF_ORDER -31\000"
.LASF572:
	.ascii	"__RAL_PRI_32_PREFIX \"\"\000"
.LASF685:
	.ascii	"SCNiMAX \"lli\"\000"
.LASF257:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF219:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF507:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF684:
	.ascii	"SCNiLEAST64 \"lli\"\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF884:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF359:
	.ascii	"__DA_IBIT__ 32\000"
.LASF860:
	.ascii	"__tolower\000"
.LASF212:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF337:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF717:
	.ascii	"SCNxFAST16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF894:
	.ascii	"next\000"
.LASF786:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_BOOTSTRAPPI"
	.ascii	"NG_REQUEST -129\000"
.LASF868:
	.ascii	"data\000"
.LASF796:
	.ascii	"__stdio_h \000"
.LASF651:
	.ascii	"PRIXLEAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF511:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF551:
	.ascii	"SIGN_ON_BASIC_CLIENT_PROCESSED_BOOTSTRAPPING_REQUES"
	.ascii	"T_RESPONSE 2\000"
.LASF762:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_BTSTRP_RQST_RSPNS -109\000"
.LASF214:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF456:
	.ascii	"uECC_SQUARE_FUNC 0\000"
.LASF659:
	.ascii	"PRIXPTR \"X\"\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF527:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF280:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF479:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF506:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF745:
	.ascii	"NDN_FWD_NO_MEM -40\000"
.LASF571:
	.ascii	"__inttypes_H \000"
.LASF294:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF880:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF682:
	.ascii	"SCNiLEAST16 __RAL_SCN_LEAST16_PREFIX \"i\"\000"
.LASF485:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"