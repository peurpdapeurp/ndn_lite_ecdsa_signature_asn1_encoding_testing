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
	.file	"sign-on-basic-client.c"
	.text
.Ltext0:
	.section	.text.encoder_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_init, %function
encoder_init:
.LFB0:
	.file 1 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\encoder.h"
	.loc 1 54 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 55 0
	ldr	r2, [sp, #4]
	movs	r1, #0
	ldr	r0, [sp, #8]
	bl	memset
	.loc 1 56 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 57 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 58 0
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 59 0
	nop
	add	sp, sp, #20
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE0:
	.size	encoder_init, .-encoder_init
	.section	.text.encoder_get_var_size,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_get_var_size, %function
encoder_get_var_size:
.LFB1:
	.loc 1 68 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI3:
	str	r0, [sp, #4]
	.loc 1 69 0
	ldr	r3, [sp, #4]
	cmp	r3, #252
	bhi	.L3
	.loc 1 69 0 is_stmt 0 discriminator 1
	movs	r3, #1
	b	.L4
.L3:
	.loc 1 70 0 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #65536
	bcs	.L5
	.loc 1 70 0 is_stmt 0 discriminator 1
	movs	r3, #3
	b	.L4
.L5:
	.loc 1 71 0 is_stmt 1
	movs	r3, #5
.L4:
	.loc 1 72 0
	mov	r0, r3
	add	sp, sp, #8
.LCFI4:
	@ sp needed
	bx	lr
.LFE1:
	.size	encoder_get_var_size, .-encoder_get_var_size
	.section	.text.encoder_probe_block_size,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_probe_block_size, %function
encoder_probe_block_size:
.LFB2:
	.loc 1 83 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #20
.LCFI6:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 84 0
	ldr	r0, [sp, #4]
	bl	encoder_get_var_size
	str	r0, [sp, #12]
	.loc 1 85 0
	ldr	r0, [sp]
	bl	encoder_get_var_size
	str	r0, [sp, #8]
	.loc 1 86 0
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 1 87 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI7:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	encoder_probe_block_size, .-encoder_probe_block_size
	.section	.text.encoder_append_var,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_append_var, %function
encoder_append_var:
.LFB3:
	.loc 1 97 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI8:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 98 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [sp, #12]
	.loc 1 99 0
	ldr	r3, [sp]
	cmp	r3, #252
	bhi	.L9
	.loc 1 99 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L9
	.loc 1 100 0 is_stmt 1
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldr	r2, [sp]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 101 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L10
.L9:
	.loc 1 103 0
	ldr	r3, [sp]
	cmp	r3, #65536
	bcs	.L11
	.loc 1 103 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #2
	bls	.L11
	.loc 1 104 0 is_stmt 1
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	movs	r2, #253
	strb	r2, [r3]
	.loc 1 105 0
	ldr	r3, [sp]
	lsrs	r1, r3, #8
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 106 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [sp]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 107 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #3
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L10
.L11:
	.loc 1 109 0
	ldr	r3, [sp, #12]
	cmp	r3, #4
	bls	.L12
	.loc 1 110 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	movs	r2, #254
	strb	r2, [r3]
	.loc 1 111 0
	ldr	r3, [sp]
	lsrs	r1, r3, #24
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 112 0
	ldr	r3, [sp]
	lsrs	r1, r3, #16
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #2
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 113 0
	ldr	r3, [sp]
	lsrs	r1, r3, #8
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #3
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	.loc 1 114 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [sp]
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 115 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #5
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L10
.L12:
	.loc 1 118 0
	mvn	r3, #13
	b	.L13
.L10:
	.loc 1 120 0
	movs	r3, #0
.L13:
	.loc 1 121 0
	mov	r0, r3
	add	sp, sp, #16
.LCFI9:
	@ sp needed
	bx	lr
.LFE3:
	.size	encoder_append_var, .-encoder_append_var
	.section	.text.encoder_append_type,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_append_type, %function
encoder_append_type:
.LFB4:
	.loc 1 131 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #12
.LCFI11:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 132 0
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	encoder_append_var
	mov	r3, r0
	.loc 1 133 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI12:
	@ sp needed
	ldr	pc, [sp], #4
.LFE4:
	.size	encoder_append_type, .-encoder_append_type
	.section	.text.encoder_append_length,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_append_length, %function
encoder_append_length:
.LFB5:
	.loc 1 143 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #12
.LCFI14:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 144 0
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	encoder_append_var
	mov	r3, r0
	.loc 1 145 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI15:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	encoder_append_length, .-encoder_append_length
	.section	.text.encoder_append_raw_buffer_value,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_append_raw_buffer_value, %function
encoder_append_raw_buffer_value:
.LFB6:
	.loc 1 156 0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #28
.LCFI17:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 157 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [sp, #20]
	.loc 1 158 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bge	.L19
	.loc 1 159 0
	mvn	r3, #9
	b	.L20
.L19:
	.loc 1 161 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 1 162 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #8]
	.loc 1 163 0
	movs	r3, #0
.L20:
	.loc 1 164 0
	mov	r0, r3
	add	sp, sp, #28
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE6:
	.size	encoder_append_raw_buffer_value, .-encoder_append_raw_buffer_value
	.section	.text.decoder_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_init, %function
decoder_init:
.LFB16:
	.file 2 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\decoder.h"
	.loc 2 44 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI19:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 2 45 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 2 46 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	.loc 2 47 0
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 48 0
	nop
	add	sp, sp, #16
.LCFI20:
	@ sp needed
	bx	lr
.LFE16:
	.size	decoder_init, .-decoder_init
	.section	.text.decoder_get_var,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_get_var, %function
decoder_get_var:
.LFB17:
	.loc 2 58 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI21:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 59 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [sp, #15]
	.loc 2 60 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [sp, #8]
	.loc 2 61 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #252
	bhi	.L23
	.loc 2 62 0
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 2 63 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L24
.L23:
	.loc 2 65 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #253
	bne	.L25
	.loc 2 65 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #2
	bls	.L25
	.loc 2 66 0 is_stmt 1
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	.loc 2 67 0
	ldr	r2, [sp, #4]
	ldr	r1, [r2]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #8]
	adds	r2, r2, #2
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	.loc 2 66 0
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 2 68 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #3
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L24
.L25:
	.loc 2 70 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #254
	bne	.L26
	.loc 2 70 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #4
	bls	.L26
	.loc 2 71 0 is_stmt 1
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	.loc 2 72 0
	ldr	r3, [sp, #4]
	ldr	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #2
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r2, r2, r3
	.loc 2 73 0
	ldr	r3, [sp, #4]
	ldr	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #3
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	add	r3, r3, r2
	.loc 2 74 0
	ldr	r2, [sp, #4]
	ldr	r1, [r2]
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #8]
	adds	r2, r2, #4
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	.loc 2 71 0
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 2 75 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #5
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	b	.L24
.L26:
	.loc 2 78 0
	mvn	r3, #13
	b	.L27
.L24:
	.loc 2 80 0
	movs	r3, #0
.L27:
	.loc 2 81 0
	mov	r0, r3
	add	sp, sp, #16
.LCFI22:
	@ sp needed
	bx	lr
.LFE17:
	.size	decoder_get_var, .-decoder_get_var
	.section	.text.decoder_get_type,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_get_type, %function
decoder_get_type:
.LFB18:
	.loc 2 91 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #12
.LCFI24:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 92 0
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	decoder_get_var
	mov	r3, r0
	.loc 2 93 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.LFE18:
	.size	decoder_get_type, .-decoder_get_type
	.section	.text.decoder_get_length,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_get_length, %function
decoder_get_length:
.LFB19:
	.loc 2 104 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI26:
	sub	sp, sp, #12
.LCFI27:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 105 0
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	decoder_get_var
	mov	r3, r0
	.loc 2 106 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI28:
	@ sp needed
	ldr	pc, [sp], #4
.LFE19:
	.size	decoder_get_length, .-decoder_get_length
	.section	.text.decoder_move_forward,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_move_forward, %function
decoder_move_forward:
.LFB26:
	.loc 2 250 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI29:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 251 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [sp]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L33
	.loc 2 252 0
	mvn	r3, #9
	b	.L34
.L33:
	.loc 2 253 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [sp]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	.loc 2 254 0
	movs	r3, #0
.L34:
	.loc 2 255 0
	mov	r0, r3
	add	sp, sp, #8
.LCFI30:
	@ sp needed
	bx	lr
.LFE26:
	.size	decoder_move_forward, .-decoder_move_forward
	.section	.text.sign_on_basic_client_init,"ax",%progbits
	.align	1
	.global	sign_on_basic_client_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sign_on_basic_client_init, %function
sign_on_basic_client_init:
.LFB29:
	.file 3 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-client.c"
	.loc 3 33 0
	@ args = 28, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI31:
	sub	sp, sp, #28
.LCFI32:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 3 34 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L41
	.loc 3 36 0
	ldr	r3, [sp, #8]
	movs	r2, #16
	str	r2, [r3, #604]
	.loc 3 37 0
	nop
	.loc 3 43 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	sign_on_basic_set_sec_intf
	str	r0, [sp, #20]
	.loc 3 44 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L40
	b	.L42
.L41:
	.loc 3 39 0
	mvn	r3, #100
	b	.L39
.L42:
	.loc 3 45 0
	mvn	r3, #101
	b	.L39
.L40:
	.loc 3 47 0
	ldr	r3, [sp, #8]
	add	r3, r3, #564
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	memcpy
	.loc 3 48 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp]
	str	r2, [r3, #576]
	.loc 3 50 0
	ldr	r3, [sp, #8]
	add	r3, r3, #580
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #32]
	mov	r0, r3
	bl	memcpy
	.loc 3 51 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #36]
	str	r2, [r3, #584]
	.loc 3 53 0
	ldr	r3, [sp, #8]
	add	r0, r3, #588
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #604]
	mov	r2, r3
	ldr	r1, [sp, #40]
	bl	memcpy
	.loc 3 56 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #48]
	ldr	r1, [sp, #44]
	mov	r0, r3
	bl	memcpy
	.loc 3 57 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #48]
	str	r2, [r3, #384]
	.loc 3 59 0
	ldr	r3, [sp, #8]
	add	r3, r3, #388
	ldr	r2, [sp, #56]
	ldr	r1, [sp, #52]
	mov	r0, r3
	bl	memcpy
	.loc 3 60 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #56]
	str	r2, [r3, #560]
	.loc 3 62 0
	ldr	r3, [sp, #8]
	movs	r2, #0
	strb	r2, [r3, #2320]
	.loc 3 64 0
	movs	r3, #0
.L39:
	.loc 3 65 0
	mov	r0, r3
	add	sp, sp, #28
.LCFI33:
	@ sp needed
	ldr	pc, [sp], #4
.LFE29:
	.size	sign_on_basic_client_init, .-sign_on_basic_client_init
	.section	.text.cnstrct_btstrp_rqst,"ax",%progbits
	.align	1
	.global	cnstrct_btstrp_rqst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	cnstrct_btstrp_rqst, %function
cnstrct_btstrp_rqst:
.LFB30:
	.loc 3 69 0
	@ args = 0, pretend = 0, frame = 608
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI34:
	sub	sp, sp, #616
.LCFI35:
	add	r4, sp, #20
	str	r0, [r4]
	add	r0, sp, #16
	str	r1, [r0]
	add	r1, sp, #12
	str	r2, [r1]
	add	r2, sp, #8
	str	r3, [r2]
	.loc 3 72 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #2328]
	.loc 3 73 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r0, r3, #784
	.loc 3 72 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r2, r3, #1168
	.loc 3 75 0
	add	r3, sp, #8
	ldr	r3, [r3]
	addw	r1, r3, #1172
	.loc 3 72 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r3, r3, #1344
	str	r3, [sp, #4]
	movs	r3, #172
	str	r3, [sp]
	mov	r3, r1
	mov	r1, #384
	blx	r4
.LVL0:
	mov	r3, r0
	cmp	r3, #0
	bne	.L44
	.loc 3 77 0
	mvn	r3, #104
	b	.L60
.L44:
	.loc 3 82 0
	movs	r3, #0
	str	r3, [sp, #612]
	.loc 3 83 0
	movs	r3, #0
	str	r3, [sp, #608]
	.loc 3 84 0
	movs	r3, #0
	str	r3, [sp, #604]
	.loc 3 86 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #576]
	mov	r1, r3
	movs	r0, #142
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 88 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #584]
	mov	r1, r3
	movs	r0, #143
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 90 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #1168]
	mov	r1, r3
	movs	r0, #144
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 92 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #2340]
	blx	r3
.LVL1:
	str	r0, [sp, #604]
	.loc 3 93 0
	ldr	r0, [sp, #604]
	bl	encoder_get_var_size
	str	r0, [sp, #600]
	.loc 3 94 0
	movs	r0, #145
	bl	encoder_get_var_size
	str	r0, [sp, #596]
	.loc 3 95 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #596]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 96 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #600]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 97 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #604]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 99 0
	movs	r0, #140
	bl	encoder_get_var_size
	str	r0, [sp, #592]
	.loc 3 100 0
	ldr	r0, [sp, #608]
	bl	encoder_get_var_size
	str	r0, [sp, #588]
	.loc 3 102 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #592]
	add	r3, r3, r2
	ldr	r2, [sp, #588]
	add	r3, r3, r2
	str	r3, [sp, #584]
	.loc 3 104 0
	add	r3, sp, #16
	ldr	r2, [r3]
	ldr	r3, [sp, #584]
	cmp	r2, r3
	bcs	.L46
	.loc 3 105 0
	mvn	r3, #102
	b	.L60
.L46:
	.loc 3 109 0
	add	r2, sp, #16
	add	r3, sp, #20
	add	r0, sp, #532
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	encoder_init
	.loc 3 112 0
	add	r3, sp, #532
	movs	r1, #140
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L47
	.loc 3 113 0
	mvn	r3, #103
	b	.L60
.L47:
	.loc 3 115 0
	add	r3, sp, #532
	ldr	r1, [sp, #608]
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L48
	.loc 3 116 0
	mvn	r3, #103
	b	.L60
.L48:
	.loc 3 120 0
	add	r3, sp, #532
	movs	r1, #142
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L49
	.loc 3 121 0
	mvn	r3, #103
	b	.L60
.L49:
	.loc 3 123 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L50
	.loc 3 124 0
	mvn	r3, #103
	b	.L60
.L50:
	.loc 3 126 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #564
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L51
	.loc 3 128 0
	mvn	r3, #103
	b	.L60
.L51:
	.loc 3 132 0
	add	r3, sp, #532
	movs	r1, #143
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L52
	.loc 3 133 0
	mvn	r3, #103
	b	.L60
.L52:
	.loc 3 135 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #584]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L53
	.loc 3 136 0
	mvn	r3, #103
	b	.L60
.L53:
	.loc 3 138 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #580
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #584]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L54
	.loc 3 140 0
	mvn	r3, #103
	b	.L60
.L54:
	.loc 3 144 0
	add	r3, sp, #532
	movs	r1, #144
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L55
	.loc 3 145 0
	mvn	r3, #103
	b	.L60
.L55:
	.loc 3 147 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #1168]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L56
	.loc 3 148 0
	mvn	r3, #103
	b	.L60
.L56:
	.loc 3 150 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #784
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #1168]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L57
	.loc 3 152 0
	mvn	r3, #103
	b	.L60
.L57:
	.loc 3 155 0
	ldr	r2, [sp, #592]
	ldr	r3, [sp, #588]
	add	r3, r3, r2
	add	r2, sp, #20
	ldr	r2, [r2]
	add	r3, r3, r2
	str	r3, [sp, #580]
	.loc 3 156 0
	ldr	r2, [sp, #540]
	ldr	r3, [sp, #592]
	subs	r2, r2, r3
	ldr	r3, [sp, #588]
	subs	r3, r2, r3
	str	r3, [sp, #576]
	.loc 3 160 0
	add	r3, sp, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 3 161 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #2336]
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r0, r3, #388
	add	r2, sp, #32
	add	r3, sp, #28
	str	r3, [sp, #4]
	mov	r3, #500
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #576]
	ldr	r1, [sp, #580]
	blx	r4
.LVL2:
	mov	r3, r0
	cmp	r3, #0
	bne	.L58
	.loc 3 165 0
	mvn	r3, #106
	b	.L60
.L58:
	.loc 3 168 0
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r2, [sp, #604]
	cmp	r2, r3
	beq	.L59
	.loc 3 169 0
	mvn	r3, #103
	b	.L60
.L59:
	.loc 3 172 0
	add	r3, sp, #532
	movs	r1, #145
	mov	r0, r3
	bl	encoder_append_type
	.loc 3 173 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	.loc 3 174 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r1, sp, #32
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	.loc 3 176 0
	ldr	r2, [sp, #540]
	add	r3, sp, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 3 178 0
	movs	r3, #0
.L60:
	.loc 3 180 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #616
.LCFI36:
	@ sp needed
	pop	{r4, pc}
.LFE30:
	.size	cnstrct_btstrp_rqst, .-cnstrct_btstrp_rqst
	.section	.text.prcs_btstrp_rqst_rspns,"ax",%progbits
	.align	1
	.global	prcs_btstrp_rqst_rspns
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prcs_btstrp_rqst_rspns, %function
prcs_btstrp_rqst_rspns:
.LFB31:
	.loc 3 184 0
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI37:
	sub	sp, sp, #104
.LCFI38:
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	.loc 3 194 0
	movs	r3, #0
	str	r3, [sp, #100]
	.loc 3 196 0
	add	r3, sp, #44
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #28]
	mov	r0, r3
	bl	decoder_init
	.loc 3 204 0
	add	r2, sp, #40
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L62
	.loc 3 205 0
	mvn	r3, #108
	b	.L79
.L62:
	.loc 3 207 0
	ldr	r3, [sp, #40]
	cmp	r3, #138
	beq	.L64
	.loc 3 208 0
	mvn	r3, #108
	b	.L79
.L64:
	.loc 3 210 0
	add	r2, sp, #36
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L65
	.loc 3 211 0
	mvn	r3, #108
	b	.L79
.L65:
	.loc 3 214 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #96]
	.loc 3 215 0
	ldr	r3, [sp, #36]
	str	r3, [sp, #92]
	.loc 3 218 0
	add	r2, sp, #40
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L66
	.loc 3 219 0
	mvn	r3, #111
	b	.L79
.L66:
	.loc 3 221 0
	ldr	r3, [sp, #40]
	cmp	r3, #146
	beq	.L67
	.loc 3 222 0
	mvn	r3, #111
	b	.L79
.L67:
	.loc 3 224 0
	add	r2, sp, #36
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L68
	.loc 3 225 0
	mvn	r3, #111
	b	.L79
.L68:
	.loc 3 227 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #88]
	.loc 3 228 0
	ldr	r3, [sp, #36]
	str	r3, [sp, #84]
	.loc 3 229 0
	ldr	r2, [sp, #36]
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_move_forward
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L69
	.loc 3 230 0
	mvn	r3, #111
	b	.L79
.L69:
	.loc 3 234 0
	add	r2, sp, #40
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L70
	.loc 3 235 0
	mvn	r3, #110
	b	.L79
.L70:
	.loc 3 237 0
	ldr	r3, [sp, #40]
	cmp	r3, #147
	beq	.L71
	.loc 3 238 0
	mvn	r3, #110
	b	.L79
.L71:
	.loc 3 240 0
	add	r2, sp, #36
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L72
	.loc 3 241 0
	mvn	r3, #110
	b	.L79
.L72:
	.loc 3 243 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #80]
	.loc 3 244 0
	ldr	r3, [sp, #36]
	str	r3, [sp, #76]
	.loc 3 245 0
	ldr	r2, [sp, #36]
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_move_forward
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L73
	.loc 3 246 0
	mvn	r3, #110
	b	.L79
.L73:
	.loc 3 251 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #72]
	.loc 3 253 0
	add	r2, sp, #40
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L74
	.loc 3 254 0
	mvn	r3, #109
	b	.L79
.L74:
	.loc 3 256 0
	ldr	r3, [sp, #40]
	cmp	r3, #145
	beq	.L75
	.loc 3 257 0
	mvn	r3, #109
	b	.L79
.L75:
	.loc 3 259 0
	add	r2, sp, #36
	add	r3, sp, #44
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #100]
	cmp	r3, r2
	beq	.L76
	.loc 3 260 0
	mvn	r3, #109
	b	.L79
.L76:
	.loc 3 263 0
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #68]
	.loc 3 264 0
	ldr	r3, [sp, #36]
	str	r3, [sp, #64]
	.loc 3 265 0
	ldr	r3, [sp, #96]
	str	r3, [sp, #60]
	.loc 3 266 0
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #96]
	subs	r3, r2, r3
	str	r3, [sp, #56]
	.loc 3 268 0
	ldr	r3, [sp, #20]
	ldr	r4, [r3, #2344]
	.loc 3 271 0
	ldr	r3, [sp, #20]
	add	r3, r3, #588
	.loc 3 268 0
	ldr	r2, [sp, #20]
	ldr	r2, [r2, #604]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #64]
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #56]
	ldr	r0, [sp, #60]
	blx	r4
.LVL3:
	mov	r3, r0
	cmp	r3, #0
	bne	.L77
	.loc 3 273 0
	mvn	r3, #107
	b	.L79
.L77:
	.loc 3 278 0
	ldr	r3, [sp, #20]
	ldr	r4, [r3, #2332]
	.loc 3 279 0
	ldr	r3, [sp, #20]
	addw	r1, r3, #1172
	.loc 3 278 0
	ldr	r3, [sp, #20]
	ldr	r0, [r3, #1344]
	.loc 3 280 0
	ldr	r3, [sp, #20]
	add	r3, r3, #608
	.loc 3 278 0
	ldr	r2, [sp, #20]
	add	r2, r2, #780
	str	r2, [sp, #8]
	movs	r2, #172
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	mov	r2, r1
	ldr	r1, [sp, #84]
	ldr	r0, [sp, #88]
	blx	r4
.LVL4:
	mov	r3, r0
	cmp	r3, #0
	bne	.L78
	.loc 3 283 0
	mvn	r3, #112
	b	.L79
.L78:
	.loc 3 290 0
	ldr	r3, [sp, #20]
	addw	r3, r3, #1348
	ldr	r2, [sp, #84]
	ldr	r1, [sp, #88]
	mov	r0, r3
	bl	memcpy
	.loc 3 291 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #84]
	str	r2, [r3, #1732]
	.loc 3 292 0
	ldr	r3, [sp, #20]
	add	r3, r3, #1736
	ldr	r2, [sp, #76]
	ldr	r1, [sp, #80]
	mov	r0, r3
	bl	memcpy
	.loc 3 293 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #76]
	str	r2, [r3, #1936]
	.loc 3 295 0
	ldr	r3, [sp, #20]
	movs	r2, #2
	strb	r2, [r3, #2320]
	.loc 3 296 0
	movs	r3, #0
.L79:
	.loc 3 297 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #104
.LCFI39:
	@ sp needed
	pop	{r4, pc}
.LFE31:
	.size	prcs_btstrp_rqst_rspns, .-prcs_btstrp_rqst_rspns
	.section	.text.cnstrct_cert_rqst,"ax",%progbits
	.align	1
	.global	cnstrct_cert_rqst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	cnstrct_cert_rqst, %function
cnstrct_cert_rqst:
.LFB32:
	.loc 3 300 0
	@ args = 0, pretend = 0, frame = 608
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI40:
	sub	sp, sp, #616
.LCFI41:
	add	r4, sp, #20
	str	r0, [r4]
	add	r0, sp, #16
	str	r1, [r0]
	add	r1, sp, #12
	str	r2, [r1]
	add	r2, sp, #8
	str	r3, [r2]
	.loc 3 304 0
	movs	r3, #0
	str	r3, [sp, #612]
	.loc 3 305 0
	movs	r3, #0
	str	r3, [sp, #608]
	.loc 3 306 0
	movs	r3, #0
	str	r3, [sp, #604]
	.loc 3 308 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #576]
	mov	r1, r3
	movs	r0, #142
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 310 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #1168]
	mov	r1, r3
	movs	r0, #144
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 312 0
	movs	r1, #32
	movs	r0, #149
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 314 0
	movs	r1, #32
	movs	r0, #148
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #608]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 316 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #2352]
	blx	r3
.LVL5:
	str	r0, [sp, #604]
	.loc 3 317 0
	ldr	r0, [sp, #604]
	bl	encoder_get_var_size
	str	r0, [sp, #600]
	.loc 3 318 0
	movs	r0, #145
	bl	encoder_get_var_size
	str	r0, [sp, #596]
	.loc 3 319 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #596]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 320 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #600]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 321 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #604]
	add	r3, r3, r2
	str	r3, [sp, #608]
	.loc 3 323 0
	movs	r0, #141
	bl	encoder_get_var_size
	str	r0, [sp, #592]
	.loc 3 324 0
	ldr	r0, [sp, #608]
	bl	encoder_get_var_size
	str	r0, [sp, #588]
	.loc 3 326 0
	ldr	r2, [sp, #608]
	ldr	r3, [sp, #592]
	add	r3, r3, r2
	ldr	r2, [sp, #588]
	add	r3, r3, r2
	str	r3, [sp, #584]
	.loc 3 328 0
	add	r3, sp, #16
	ldr	r2, [r3]
	ldr	r3, [sp, #584]
	cmp	r2, r3
	bcs	.L81
	.loc 3 329 0
	mvn	r3, #113
	b	.L101
.L81:
	.loc 3 333 0
	add	r2, sp, #16
	add	r3, sp, #20
	add	r0, sp, #532
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	encoder_init
	.loc 3 336 0
	add	r3, sp, #532
	movs	r1, #141
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L83
	.loc 3 337 0
	mvn	r3, #114
	b	.L101
.L83:
	.loc 3 339 0
	add	r3, sp, #532
	ldr	r1, [sp, #608]
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L84
	.loc 3 340 0
	mvn	r3, #114
	b	.L101
.L84:
	.loc 3 344 0
	add	r3, sp, #532
	movs	r1, #142
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L85
	.loc 3 345 0
	mvn	r3, #114
	b	.L101
.L85:
	.loc 3 347 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L86
	.loc 3 348 0
	mvn	r3, #114
	b	.L101
.L86:
	.loc 3 350 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #564
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L87
	.loc 3 352 0
	mvn	r3, #114
	b	.L101
.L87:
	.loc 3 356 0
	add	r3, sp, #532
	movs	r1, #144
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L88
	.loc 3 357 0
	mvn	r3, #114
	b	.L101
.L88:
	.loc 3 359 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #1168]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L89
	.loc 3 360 0
	mvn	r3, #114
	b	.L101
.L89:
	.loc 3 362 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #784
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #1168]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L90
	.loc 3 364 0
	mvn	r3, #114
	b	.L101
.L90:
	.loc 3 368 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #2324]
	add	r2, sp, #8
	ldr	r2, [r2]
	addw	r0, r2, #1348
	add	r2, sp, #8
	ldr	r2, [r2]
	ldr	r1, [r2, #1732]
	add	r2, sp, #544
	blx	r3
.LVL6:
	mov	r3, r0
	cmp	r3, #0
	bne	.L91
	.loc 3 370 0
	mvn	r3, #115
	b	.L101
.L91:
	.loc 3 374 0
	add	r3, sp, #532
	movs	r1, #149
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L92
	.loc 3 375 0
	mvn	r3, #114
	b	.L101
.L92:
	.loc 3 377 0
	add	r3, sp, #532
	movs	r1, #32
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L93
	.loc 3 378 0
	mvn	r3, #114
	b	.L101
.L93:
	.loc 3 380 0
	add	r1, sp, #544
	add	r3, sp, #532
	movs	r2, #32
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L94
	.loc 3 382 0
	mvn	r3, #114
	b	.L101
.L94:
	.loc 3 386 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #2324]
	add	r2, sp, #8
	ldr	r2, [r2]
	add	r0, r2, #1736
	add	r2, sp, #8
	ldr	r2, [r2]
	ldr	r1, [r2, #1936]
	add	r2, sp, #544
	blx	r3
.LVL7:
	mov	r3, r0
	cmp	r3, #0
	bne	.L95
	.loc 3 388 0
	mvn	r3, #116
	b	.L101
.L95:
	.loc 3 392 0
	add	r3, sp, #532
	movs	r1, #148
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L96
	.loc 3 393 0
	mvn	r3, #114
	b	.L101
.L96:
	.loc 3 395 0
	add	r3, sp, #532
	movs	r1, #32
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L97
	.loc 3 396 0
	mvn	r3, #114
	b	.L101
.L97:
	.loc 3 398 0
	add	r1, sp, #544
	add	r3, sp, #532
	movs	r2, #32
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #612]
	cmp	r3, r2
	beq	.L98
	.loc 3 400 0
	mvn	r3, #114
	b	.L101
.L98:
	.loc 3 403 0
	ldr	r2, [sp, #592]
	ldr	r3, [sp, #588]
	add	r3, r3, r2
	add	r2, sp, #20
	ldr	r2, [r2]
	add	r3, r3, r2
	str	r3, [sp, #580]
	.loc 3 404 0
	ldr	r2, [sp, #540]
	ldr	r3, [sp, #592]
	subs	r2, r2, r3
	ldr	r3, [sp, #588]
	subs	r3, r2, r3
	str	r3, [sp, #576]
	.loc 3 408 0
	add	r3, sp, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 3 409 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #2348]
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r0, r3, #388
	add	r2, sp, #32
	add	r3, sp, #28
	str	r3, [sp, #4]
	mov	r3, #500
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #576]
	ldr	r1, [sp, #580]
	blx	r4
.LVL8:
	mov	r3, r0
	cmp	r3, #0
	bne	.L99
	.loc 3 413 0
	mvn	r3, #118
	b	.L101
.L99:
	.loc 3 416 0
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r2, [sp, #604]
	cmp	r2, r3
	beq	.L100
	.loc 3 417 0
	mvn	r3, #114
	b	.L101
.L100:
	.loc 3 420 0
	add	r3, sp, #532
	movs	r1, #145
	mov	r0, r3
	bl	encoder_append_type
	.loc 3 421 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	.loc 3 422 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r1, sp, #32
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	.loc 3 424 0
	ldr	r2, [sp, #540]
	add	r3, sp, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 3 426 0
	movs	r3, #0
.L101:
	.loc 3 427 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #616
.LCFI42:
	@ sp needed
	pop	{r4, pc}
.LFE32:
	.size	cnstrct_cert_rqst, .-cnstrct_cert_rqst
	.section	.text.prcs_cert_rqst_rspns,"ax",%progbits
	.align	1
	.global	prcs_cert_rqst_rspns
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prcs_cert_rqst_rspns, %function
prcs_cert_rqst_rspns:
.LFB33:
	.loc 3 431 0
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI43:
	sub	sp, sp, #280
.LCFI44:
	str	r0, [sp, #28]
	add	r3, sp, #24
	str	r1, [r3]
	add	r3, sp, #20
	str	r2, [r3]
	.loc 3 443 0
	movs	r3, #0
	str	r3, [sp, #276]
	.loc 3 445 0
	add	r3, sp, #24
	add	r0, sp, #212
	ldr	r2, [r3]
	ldr	r1, [sp, #28]
	bl	decoder_init
	.loc 3 453 0
	add	r2, sp, #208
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L103
	.loc 3 454 0
	mvn	r3, #120
	b	.L120
.L103:
	.loc 3 456 0
	ldr	r3, [sp, #208]
	cmp	r3, #139
	beq	.L105
	.loc 3 457 0
	mvn	r3, #120
	b	.L120
.L105:
	.loc 3 459 0
	add	r2, sp, #204
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L106
	.loc 3 460 0
	mvn	r3, #120
	b	.L120
.L106:
	.loc 3 463 0
	ldr	r3, [sp, #220]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #272]
	.loc 3 464 0
	ldr	r3, [sp, #204]
	str	r3, [sp, #268]
	.loc 3 467 0
	add	r2, sp, #208
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L107
	.loc 3 468 0
	mvn	r3, #122
	b	.L120
.L107:
	.loc 3 470 0
	ldr	r3, [sp, #208]
	cmp	r3, #150
	beq	.L108
	.loc 3 471 0
	mvn	r3, #122
	b	.L120
.L108:
	.loc 3 473 0
	add	r2, sp, #204
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L109
	.loc 3 474 0
	mvn	r3, #122
	b	.L120
.L109:
	.loc 3 476 0
	ldr	r3, [sp, #220]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #264]
	.loc 3 477 0
	ldr	r3, [sp, #204]
	str	r3, [sp, #260]
	.loc 3 478 0
	ldr	r2, [sp, #204]
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_move_forward
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L110
	.loc 3 479 0
	mvn	r3, #122
	b	.L120
.L110:
	.loc 3 483 0
	add	r2, sp, #208
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L111
	.loc 3 484 0
	mvn	r3, #121
	b	.L120
.L111:
	.loc 3 486 0
	ldr	r3, [sp, #208]
	cmp	r3, #151
	beq	.L112
	.loc 3 487 0
	mvn	r3, #121
	b	.L120
.L112:
	.loc 3 489 0
	add	r2, sp, #204
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L113
	.loc 3 490 0
	mvn	r3, #121
	b	.L120
.L113:
	.loc 3 492 0
	ldr	r3, [sp, #220]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #256]
	.loc 3 493 0
	ldr	r3, [sp, #204]
	str	r3, [sp, #252]
	.loc 3 494 0
	ldr	r2, [sp, #204]
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_move_forward
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L114
	.loc 3 495 0
	mvn	r3, #121
	b	.L120
.L114:
	.loc 3 500 0
	ldr	r3, [sp, #220]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #248]
	.loc 3 502 0
	add	r2, sp, #208
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L115
	.loc 3 503 0
	mvn	r3, #123
	b	.L120
.L115:
	.loc 3 505 0
	ldr	r3, [sp, #208]
	cmp	r3, #145
	beq	.L116
	.loc 3 506 0
	mvn	r3, #123
	b	.L120
.L116:
	.loc 3 508 0
	add	r2, sp, #204
	add	r3, sp, #212
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	mov	r2, r0
	ldr	r3, [sp, #276]
	cmp	r3, r2
	beq	.L117
	.loc 3 509 0
	mvn	r3, #123
	b	.L120
.L117:
	.loc 3 512 0
	ldr	r3, [sp, #220]
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #244]
	.loc 3 513 0
	ldr	r3, [sp, #204]
	str	r3, [sp, #240]
	.loc 3 514 0
	ldr	r3, [sp, #272]
	str	r3, [sp, #236]
	.loc 3 515 0
	ldr	r2, [sp, #248]
	ldr	r3, [sp, #272]
	subs	r3, r2, r3
	str	r3, [sp, #232]
	.loc 3 517 0
	add	r3, sp, #20
	ldr	r3, [r3]
	ldr	r4, [r3, #2356]
	.loc 3 520 0
	add	r3, sp, #20
	ldr	r3, [r3]
	add	r3, r3, #608
	.loc 3 517 0
	add	r2, sp, #20
	ldr	r2, [r2]
	ldr	r2, [r2, #780]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #240]
	ldr	r2, [sp, #244]
	ldr	r1, [sp, #232]
	ldr	r0, [sp, #236]
	blx	r4
.LVL9:
	mov	r3, r0
	cmp	r3, #0
	bne	.L118
	.loc 3 522 0
	mvn	r3, #119
	b	.L120
.L118:
	.loc 3 529 0
	add	r3, sp, #20
	ldr	r3, [r3]
	ldr	r4, [r3, #2360]
	.loc 3 530 0
	add	r3, sp, #20
	ldr	r3, [r3]
	add	r0, r3, #608
	.loc 3 529 0
	add	r3, sp, #20
	ldr	r3, [r3]
	ldr	r1, [r3, #780]
	add	r3, sp, #224
	str	r3, [sp, #8]
	movs	r3, #172
	str	r3, [sp, #4]
	add	r3, sp, #32
	str	r3, [sp]
	ldr	r3, [sp, #260]
	ldr	r2, [sp, #264]
	blx	r4
.LVL10:
	mov	r3, r0
	cmp	r3, #0
	bne	.L119
	.loc 3 536 0
	mvn	r3, #124
	b	.L120
.L119:
	.loc 3 539 0
	add	r3, sp, #32
	str	r3, [sp, #228]
	.loc 3 544 0
	add	r3, sp, #20
	ldr	r3, [r3]
	add	r3, r3, #2144
	ldr	r2, [sp, #224]
	ldr	r1, [sp, #228]
	mov	r0, r3
	bl	memcpy
	.loc 3 545 0
	ldr	r2, [sp, #224]
	add	r3, sp, #20
	ldr	r3, [r3]
	str	r2, [r3, #2316]
	.loc 3 546 0
	add	r3, sp, #20
	ldr	r3, [r3]
	addw	r3, r3, #1940
	ldr	r2, [sp, #252]
	ldr	r1, [sp, #256]
	mov	r0, r3
	bl	memcpy
	.loc 3 547 0
	add	r3, sp, #20
	ldr	r3, [r3]
	ldr	r2, [sp, #252]
	str	r2, [r3, #2140]
	.loc 3 549 0
	add	r3, sp, #20
	ldr	r3, [r3]
	movs	r2, #4
	strb	r2, [r3, #2320]
	.loc 3 550 0
	movs	r3, #0
.L120:
	.loc 3 551 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #280
.LCFI45:
	@ sp needed
	pop	{r4, pc}
.LFE33:
	.size	prcs_cert_rqst_rspns, .-prcs_cert_rqst_rspns
	.section	.text.cnstrct_fin_msg,"ax",%progbits
	.align	1
	.global	cnstrct_fin_msg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	cnstrct_fin_msg, %function
cnstrct_fin_msg:
.LFB34:
	.loc 3 554 0
	@ args = 0, pretend = 0, frame = 576
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI46:
	sub	sp, sp, #584
.LCFI47:
	add	r4, sp, #20
	str	r0, [r4]
	add	r0, sp, #16
	str	r1, [r0]
	add	r1, sp, #12
	str	r2, [r1]
	add	r2, sp, #8
	str	r3, [r2]
	.loc 3 556 0
	movs	r3, #0
	str	r3, [sp, #580]
	.loc 3 557 0
	movs	r3, #0
	str	r3, [sp, #576]
	.loc 3 558 0
	movs	r3, #0
	str	r3, [sp, #572]
	.loc 3 560 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #576]
	mov	r1, r3
	movs	r0, #142
	bl	encoder_probe_block_size
	mov	r2, r0
	ldr	r3, [sp, #576]
	add	r3, r3, r2
	str	r3, [sp, #576]
	.loc 3 562 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #2368]
	blx	r3
.LVL11:
	str	r0, [sp, #572]
	.loc 3 563 0
	ldr	r0, [sp, #572]
	bl	encoder_get_var_size
	str	r0, [sp, #568]
	.loc 3 564 0
	movs	r0, #145
	bl	encoder_get_var_size
	str	r0, [sp, #564]
	.loc 3 565 0
	ldr	r2, [sp, #576]
	ldr	r3, [sp, #564]
	add	r3, r3, r2
	str	r3, [sp, #576]
	.loc 3 566 0
	ldr	r2, [sp, #576]
	ldr	r3, [sp, #568]
	add	r3, r3, r2
	str	r3, [sp, #576]
	.loc 3 567 0
	ldr	r2, [sp, #576]
	ldr	r3, [sp, #572]
	add	r3, r3, r2
	str	r3, [sp, #576]
	.loc 3 569 0
	movs	r0, #140
	bl	encoder_get_var_size
	str	r0, [sp, #560]
	.loc 3 570 0
	ldr	r0, [sp, #576]
	bl	encoder_get_var_size
	str	r0, [sp, #556]
	.loc 3 572 0
	ldr	r2, [sp, #576]
	ldr	r3, [sp, #560]
	add	r3, r3, r2
	ldr	r2, [sp, #556]
	add	r3, r3, r2
	str	r3, [sp, #552]
	.loc 3 574 0
	add	r3, sp, #16
	ldr	r2, [r3]
	ldr	r3, [sp, #552]
	cmp	r2, r3
	bcs	.L122
	.loc 3 575 0
	mvn	r3, #125
	b	.L131
.L122:
	.loc 3 579 0
	add	r2, sp, #16
	add	r3, sp, #20
	add	r0, sp, #532
	ldr	r2, [r2]
	ldr	r1, [r3]
	bl	encoder_init
	.loc 3 582 0
	add	r3, sp, #532
	movs	r1, #152
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #580]
	cmp	r3, r2
	beq	.L124
	.loc 3 583 0
	mvn	r3, #126
	b	.L131
.L124:
	.loc 3 585 0
	add	r3, sp, #532
	ldr	r1, [sp, #576]
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #580]
	cmp	r3, r2
	beq	.L125
	.loc 3 586 0
	mvn	r3, #126
	b	.L131
.L125:
	.loc 3 590 0
	add	r3, sp, #532
	movs	r1, #142
	mov	r0, r3
	bl	encoder_append_type
	mov	r2, r0
	ldr	r3, [sp, #580]
	cmp	r3, r2
	beq	.L126
	.loc 3 591 0
	mvn	r3, #126
	b	.L131
.L126:
	.loc 3 593 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	mov	r2, r0
	ldr	r3, [sp, #580]
	cmp	r3, r2
	beq	.L127
	.loc 3 594 0
	mvn	r3, #126
	b	.L131
.L127:
	.loc 3 596 0
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r1, r3, #564
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #576]
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	mov	r2, r0
	ldr	r3, [sp, #580]
	cmp	r3, r2
	beq	.L128
	.loc 3 598 0
	mvn	r3, #126
	b	.L131
.L128:
	.loc 3 601 0
	ldr	r2, [sp, #560]
	ldr	r3, [sp, #556]
	add	r3, r3, r2
	add	r2, sp, #20
	ldr	r2, [r2]
	add	r3, r3, r2
	str	r3, [sp, #548]
	.loc 3 602 0
	ldr	r2, [sp, #540]
	ldr	r3, [sp, #560]
	subs	r2, r2, r3
	ldr	r3, [sp, #556]
	subs	r3, r2, r3
	str	r3, [sp, #544]
	.loc 3 606 0
	add	r3, sp, #28
	movs	r2, #0
	str	r2, [r3]
	.loc 3 607 0
	add	r3, sp, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #2364]
	add	r3, sp, #8
	ldr	r3, [r3]
	add	r0, r3, #388
	add	r2, sp, #32
	add	r3, sp, #28
	str	r3, [sp, #4]
	mov	r3, #500
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [sp, #544]
	ldr	r1, [sp, #548]
	blx	r4
.LVL12:
	mov	r3, r0
	cmp	r3, #0
	bne	.L129
	.loc 3 611 0
	mvn	r3, #128
	b	.L131
.L129:
	.loc 3 614 0
	add	r3, sp, #28
	ldr	r3, [r3]
	ldr	r2, [sp, #572]
	cmp	r2, r3
	beq	.L130
	.loc 3 615 0
	mvn	r3, #126
	b	.L131
.L130:
	.loc 3 618 0
	add	r3, sp, #532
	movs	r1, #145
	mov	r0, r3
	bl	encoder_append_type
	.loc 3 619 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r3, sp, #532
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_length
	.loc 3 620 0
	add	r3, sp, #28
	ldr	r2, [r3]
	add	r1, sp, #32
	add	r3, sp, #532
	mov	r0, r3
	bl	encoder_append_raw_buffer_value
	.loc 3 622 0
	ldr	r2, [sp, #540]
	add	r3, sp, #12
	ldr	r3, [r3]
	str	r2, [r3]
	.loc 3 624 0
	movs	r3, #0
.L131:
	.loc 3 625 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #584
.LCFI48:
	@ sp needed
	pop	{r4, pc}
.LFE34:
	.size	cnstrct_fin_msg, .-cnstrct_fin_msg
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI10-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI13-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI16-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI19-.LFB16
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI21-.LFB17
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI23-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI26-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI29-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI31-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI34-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x270
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI37-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI40-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x270
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI43-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x120
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI46-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x250
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE34:
	.text
.Letext0:
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stdint.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/__crossworks.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stddef.h"
	.file 7 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-client.h"
	.file 8 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\tlv.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x14c6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1134
	.byte	0xc
	.4byte	.LASF1135
	.4byte	.LASF1136
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF874
	.uleb128 0x3
	.4byte	.LASF878
	.byte	0x4
	.byte	0x30
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF875
	.uleb128 0x4
	.4byte	0x40
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF876
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF877
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF879
	.byte	0x4
	.byte	0x38
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF880
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF881
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF882
	.uleb128 0x6
	.4byte	.LASF933
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF883
	.byte	0x5
	.byte	0x7f
	.4byte	0x5a
	.byte	0
	.uleb128 0x7
	.4byte	.LASF884
	.byte	0x5
	.byte	0x80
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF885
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
	.4byte	.LASF886
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
	.byte	0x5
	.byte	0x86
	.4byte	0x291
	.uleb128 0x7
	.4byte	.LASF887
	.byte	0x5
	.byte	0x88
	.4byte	0x102
	.byte	0
	.uleb128 0x7
	.4byte	.LASF888
	.byte	0x5
	.byte	0x89
	.4byte	0x102
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF889
	.byte	0x5
	.byte	0x8a
	.4byte	0x102
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF890
	.byte	0x5
	.byte	0x8c
	.4byte	0x102
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF891
	.byte	0x5
	.byte	0x8d
	.4byte	0x102
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF892
	.byte	0x5
	.byte	0x8e
	.4byte	0x102
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF893
	.byte	0x5
	.byte	0x8f
	.4byte	0x102
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF894
	.byte	0x5
	.byte	0x90
	.4byte	0x102
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF895
	.byte	0x5
	.byte	0x91
	.4byte	0x102
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF896
	.byte	0x5
	.byte	0x92
	.4byte	0x102
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF897
	.byte	0x5
	.byte	0x94
	.4byte	0xcc
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF898
	.byte	0x5
	.byte	0x95
	.4byte	0xcc
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF899
	.byte	0x5
	.byte	0x96
	.4byte	0xcc
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF900
	.byte	0x5
	.byte	0x97
	.4byte	0xcc
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF901
	.byte	0x5
	.byte	0x98
	.4byte	0xcc
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF902
	.byte	0x5
	.byte	0x99
	.4byte	0xcc
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF903
	.byte	0x5
	.byte	0x9a
	.4byte	0xcc
	.byte	0x2e
	.uleb128 0x7
	.4byte	.LASF904
	.byte	0x5
	.byte	0x9b
	.4byte	0xcc
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF905
	.byte	0x5
	.byte	0x9c
	.4byte	0xcc
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF906
	.byte	0x5
	.byte	0x9d
	.4byte	0xcc
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF907
	.byte	0x5
	.byte	0x9e
	.4byte	0xcc
	.byte	0x32
	.uleb128 0x7
	.4byte	.LASF908
	.byte	0x5
	.byte	0x9f
	.4byte	0xcc
	.byte	0x33
	.uleb128 0x7
	.4byte	.LASF909
	.byte	0x5
	.byte	0xa0
	.4byte	0xcc
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF910
	.byte	0x5
	.byte	0xa1
	.4byte	0xcc
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF911
	.byte	0x5
	.byte	0xa6
	.4byte	0x102
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF912
	.byte	0x5
	.byte	0xa7
	.4byte	0x102
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF913
	.byte	0x5
	.byte	0xa8
	.4byte	0x102
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF914
	.byte	0x5
	.byte	0xa9
	.4byte	0x102
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF915
	.byte	0x5
	.byte	0xaa
	.4byte	0x102
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF916
	.byte	0x5
	.byte	0xab
	.4byte	0x102
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF917
	.byte	0x5
	.byte	0xac
	.4byte	0x102
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF918
	.byte	0x5
	.byte	0xad
	.4byte	0x102
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF919
	.byte	0x5
	.byte	0xae
	.4byte	0x108
	.uleb128 0x4
	.4byte	0x291
	.uleb128 0xb
	.byte	0x20
	.byte	0x5
	.byte	0xc4
	.4byte	0x30a
	.uleb128 0x7
	.4byte	.LASF920
	.byte	0x5
	.byte	0xc6
	.4byte	0x31e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF921
	.byte	0x5
	.byte	0xc7
	.4byte	0x333
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF922
	.byte	0x5
	.byte	0xc8
	.4byte	0x333
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF923
	.byte	0x5
	.byte	0xcb
	.4byte	0x34d
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF924
	.byte	0x5
	.byte	0xcc
	.4byte	0x362
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF925
	.byte	0x5
	.byte	0xcd
	.4byte	0x362
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF926
	.byte	0x5
	.byte	0xd0
	.4byte	0x368
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF927
	.byte	0x5
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
	.4byte	.LASF928
	.byte	0x5
	.byte	0xd2
	.4byte	0x2a1
	.uleb128 0x4
	.4byte	0x374
	.uleb128 0xb
	.byte	0xc
	.byte	0x5
	.byte	0xd4
	.4byte	0x3b1
	.uleb128 0x7
	.4byte	.LASF929
	.byte	0x5
	.byte	0xd5
	.4byte	0x102
	.byte	0
	.uleb128 0x7
	.4byte	.LASF930
	.byte	0x5
	.byte	0xd6
	.4byte	0x3b1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF931
	.byte	0x5
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
	.4byte	.LASF932
	.byte	0x5
	.byte	0xd8
	.4byte	0x384
	.uleb128 0x4
	.4byte	0x3bd
	.uleb128 0x6
	.4byte	.LASF934
	.byte	0x14
	.byte	0x5
	.byte	0xdc
	.4byte	0x3e6
	.uleb128 0x7
	.4byte	.LASF935
	.byte	0x5
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
	.4byte	.LASF936
	.byte	0x5
	.2byte	0x106
	.4byte	0x3cd
	.uleb128 0xe
	.4byte	.LASF937
	.byte	0x5
	.2byte	0x10d
	.4byte	0x3c8
	.uleb128 0xe
	.4byte	.LASF938
	.byte	0x5
	.2byte	0x110
	.4byte	0x37f
	.uleb128 0xe
	.4byte	.LASF939
	.byte	0x5
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
	.4byte	.LASF940
	.byte	0x5
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
	.4byte	.LASF941
	.byte	0x5
	.2byte	0x115
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF942
	.byte	0x5
	.2byte	0x116
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF943
	.byte	0x5
	.2byte	0x117
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF944
	.byte	0x5
	.2byte	0x118
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF945
	.byte	0x5
	.2byte	0x11a
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF946
	.byte	0x5
	.2byte	0x11b
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF947
	.byte	0x5
	.2byte	0x11c
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF948
	.byte	0x5
	.2byte	0x11d
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF949
	.byte	0x5
	.2byte	0x11e
	.4byte	0x458
	.uleb128 0xe
	.4byte	.LASF950
	.byte	0x5
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
	.4byte	.LASF1137
	.uleb128 0x4
	.4byte	0x4ea
	.uleb128 0xe
	.4byte	.LASF951
	.byte	0x5
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
	.4byte	.LASF952
	.byte	0x5
	.2byte	0x136
	.4byte	0x527
	.uleb128 0xa
	.byte	0x4
	.4byte	0x506
	.uleb128 0x11
	.4byte	.LASF953
	.byte	0x5
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
	.4byte	.LASF954
	.byte	0x8
	.byte	0x5
	.2byte	0x14f
	.4byte	0x576
	.uleb128 0x13
	.4byte	.LASF955
	.byte	0x5
	.2byte	0x151
	.4byte	0x52d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF956
	.byte	0x5
	.2byte	0x152
	.4byte	0x576
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x11
	.4byte	.LASF957
	.byte	0x5
	.2byte	0x153
	.4byte	0x54e
	.uleb128 0xe
	.4byte	.LASF958
	.byte	0x5
	.2byte	0x157
	.4byte	0x594
	.uleb128 0xa
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x3
	.4byte	.LASF959
	.byte	0x6
	.byte	0x37
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF960
	.byte	0x7
	.byte	0x1f
	.4byte	0x5b0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5b6
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5d5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF961
	.byte	0x7
	.byte	0x33
	.4byte	0x5e6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ec
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x614
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x614
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x614
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF962
	.byte	0x7
	.byte	0x48
	.4byte	0x625
	.uleb128 0xa
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x658
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x614
	.byte	0
	.uleb128 0x3
	.4byte	.LASF963
	.byte	0x7
	.byte	0x61
	.4byte	0x663
	.uleb128 0xa
	.byte	0x4
	.4byte	0x669
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x691
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x614
	.byte	0
	.uleb128 0x3
	.4byte	.LASF964
	.byte	0x7
	.byte	0x6a
	.4byte	0x69c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6a2
	.uleb128 0x14
	.4byte	0x61
	.4byte	0x6ad
	.uleb128 0x15
	.byte	0
	.uleb128 0x3
	.4byte	.LASF965
	.byte	0x7
	.byte	0x80
	.4byte	0x6b8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6be
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x6e6
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.byte	0
	.uleb128 0x3
	.4byte	.LASF966
	.byte	0x7
	.byte	0x99
	.4byte	0x663
	.uleb128 0x3
	.4byte	.LASF967
	.byte	0x7
	.byte	0xa2
	.4byte	0x69c
	.uleb128 0x3
	.4byte	.LASF968
	.byte	0x7
	.byte	0xb7
	.4byte	0x6b8
	.uleb128 0x3
	.4byte	.LASF969
	.byte	0x7
	.byte	0xcb
	.4byte	0x712
	.uleb128 0xa
	.byte	0x4
	.4byte	0x718
	.uleb128 0x8
	.4byte	0x5a
	.4byte	0x745
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5cf
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x5d5
	.uleb128 0x9
	.4byte	0x61
	.uleb128 0x9
	.4byte	0x614
	.byte	0
	.uleb128 0x3
	.4byte	.LASF970
	.byte	0x7
	.byte	0xe5
	.4byte	0x663
	.uleb128 0x3
	.4byte	.LASF971
	.byte	0x7
	.byte	0xee
	.4byte	0x69c
	.uleb128 0x12
	.4byte	.LASF972
	.byte	0x30
	.byte	0x7
	.2byte	0x10e
	.4byte	0x805
	.uleb128 0x13
	.4byte	.LASF973
	.byte	0x7
	.2byte	0x10f
	.4byte	0x5a5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF974
	.byte	0x7
	.2byte	0x110
	.4byte	0x5db
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF975
	.byte	0x7
	.2byte	0x111
	.4byte	0x61a
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF976
	.byte	0x7
	.2byte	0x112
	.4byte	0x658
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF977
	.byte	0x7
	.2byte	0x113
	.4byte	0x691
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF978
	.byte	0x7
	.2byte	0x114
	.4byte	0x6ad
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF979
	.byte	0x7
	.2byte	0x115
	.4byte	0x6e6
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF980
	.byte	0x7
	.2byte	0x116
	.4byte	0x6f1
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF981
	.byte	0x7
	.2byte	0x117
	.4byte	0x6fc
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF982
	.byte	0x7
	.2byte	0x118
	.4byte	0x707
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF983
	.byte	0x7
	.2byte	0x119
	.4byte	0x745
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF984
	.byte	0x7
	.2byte	0x11a
	.4byte	0x750
	.byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF985
	.2byte	0x944
	.byte	0x7
	.2byte	0x154
	.4byte	0x97f
	.uleb128 0x13
	.4byte	.LASF986
	.byte	0x7
	.2byte	0x156
	.4byte	0x97f
	.byte	0
	.uleb128 0x17
	.4byte	.LASF987
	.byte	0x7
	.2byte	0x157
	.4byte	0x61
	.2byte	0x180
	.uleb128 0x17
	.4byte	.LASF988
	.byte	0x7
	.2byte	0x159
	.4byte	0x990
	.2byte	0x184
	.uleb128 0x17
	.4byte	.LASF989
	.byte	0x7
	.2byte	0x15a
	.4byte	0x61
	.2byte	0x230
	.uleb128 0x17
	.4byte	.LASF990
	.byte	0x7
	.2byte	0x15c
	.4byte	0x9a0
	.2byte	0x234
	.uleb128 0x17
	.4byte	.LASF991
	.byte	0x7
	.2byte	0x15d
	.4byte	0x61
	.2byte	0x240
	.uleb128 0x17
	.4byte	.LASF992
	.byte	0x7
	.2byte	0x15f
	.4byte	0x9b0
	.2byte	0x244
	.uleb128 0x17
	.4byte	.LASF993
	.byte	0x7
	.2byte	0x160
	.4byte	0x61
	.2byte	0x248
	.uleb128 0x17
	.4byte	.LASF994
	.byte	0x7
	.2byte	0x162
	.4byte	0x9c0
	.2byte	0x24c
	.uleb128 0x17
	.4byte	.LASF995
	.byte	0x7
	.2byte	0x163
	.4byte	0x61
	.2byte	0x25c
	.uleb128 0x17
	.4byte	.LASF996
	.byte	0x7
	.2byte	0x165
	.4byte	0x990
	.2byte	0x260
	.uleb128 0x17
	.4byte	.LASF997
	.byte	0x7
	.2byte	0x166
	.4byte	0x61
	.2byte	0x30c
	.uleb128 0x17
	.4byte	.LASF998
	.byte	0x7
	.2byte	0x168
	.4byte	0x97f
	.2byte	0x310
	.uleb128 0x17
	.4byte	.LASF999
	.byte	0x7
	.2byte	0x169
	.4byte	0x61
	.2byte	0x490
	.uleb128 0x17
	.4byte	.LASF1000
	.byte	0x7
	.2byte	0x16b
	.4byte	0x990
	.2byte	0x494
	.uleb128 0x17
	.4byte	.LASF1001
	.byte	0x7
	.2byte	0x16c
	.4byte	0x61
	.2byte	0x540
	.uleb128 0x17
	.4byte	.LASF1002
	.byte	0x7
	.2byte	0x16e
	.4byte	0x97f
	.2byte	0x544
	.uleb128 0x17
	.4byte	.LASF1003
	.byte	0x7
	.2byte	0x16f
	.4byte	0x61
	.2byte	0x6c4
	.uleb128 0x17
	.4byte	.LASF1004
	.byte	0x7
	.2byte	0x171
	.4byte	0x9d0
	.2byte	0x6c8
	.uleb128 0x17
	.4byte	.LASF1005
	.byte	0x7
	.2byte	0x172
	.4byte	0x61
	.2byte	0x790
	.uleb128 0x17
	.4byte	.LASF1006
	.byte	0x7
	.2byte	0x174
	.4byte	0x9d0
	.2byte	0x794
	.uleb128 0x17
	.4byte	.LASF1007
	.byte	0x7
	.2byte	0x175
	.4byte	0x61
	.2byte	0x85c
	.uleb128 0x17
	.4byte	.LASF1008
	.byte	0x7
	.2byte	0x177
	.4byte	0x990
	.2byte	0x860
	.uleb128 0x17
	.4byte	.LASF1009
	.byte	0x7
	.2byte	0x178
	.4byte	0x61
	.2byte	0x90c
	.uleb128 0x17
	.4byte	.LASF1010
	.byte	0x7
	.2byte	0x17a
	.4byte	0x30
	.2byte	0x910
	.uleb128 0x17
	.4byte	.LASF1011
	.byte	0x7
	.2byte	0x17c
	.4byte	0x75b
	.2byte	0x914
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x990
	.uleb128 0x18
	.4byte	0x6c
	.2byte	0x17f
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9a0
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xab
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9b0
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9c0
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9d0
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0x9e0
	.uleb128 0xd
	.4byte	0x6c
	.byte	0xc7
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x40
	.byte	0x8
	.byte	0x45
	.4byte	0xa84
	.uleb128 0x1a
	.4byte	.LASF1012
	.byte	0x80
	.uleb128 0x1a
	.4byte	.LASF1013
	.byte	0x80
	.uleb128 0x1a
	.4byte	.LASF1014
	.byte	0x82
	.uleb128 0x1a
	.4byte	.LASF1015
	.byte	0x83
	.uleb128 0x1a
	.4byte	.LASF1016
	.byte	0x84
	.uleb128 0x1a
	.4byte	.LASF1017
	.byte	0x85
	.uleb128 0x1a
	.4byte	.LASF1018
	.byte	0x86
	.uleb128 0x1a
	.4byte	.LASF1019
	.byte	0x87
	.uleb128 0x1a
	.4byte	.LASF1020
	.byte	0x88
	.uleb128 0x1a
	.4byte	.LASF1021
	.byte	0x89
	.uleb128 0x1a
	.4byte	.LASF1022
	.byte	0x8a
	.uleb128 0x1a
	.4byte	.LASF1023
	.byte	0x8b
	.uleb128 0x1a
	.4byte	.LASF1024
	.byte	0x8c
	.uleb128 0x1a
	.4byte	.LASF1025
	.byte	0x8d
	.uleb128 0x1a
	.4byte	.LASF1026
	.byte	0x8e
	.uleb128 0x1a
	.4byte	.LASF1027
	.byte	0x8f
	.uleb128 0x1a
	.4byte	.LASF1028
	.byte	0x90
	.uleb128 0x1a
	.4byte	.LASF1029
	.byte	0x91
	.uleb128 0x1a
	.4byte	.LASF1030
	.byte	0x92
	.uleb128 0x1a
	.4byte	.LASF1031
	.byte	0x93
	.uleb128 0x1a
	.4byte	.LASF1032
	.byte	0x94
	.uleb128 0x1a
	.4byte	.LASF1033
	.byte	0x95
	.uleb128 0x1a
	.4byte	.LASF1034
	.byte	0x96
	.uleb128 0x1a
	.4byte	.LASF1035
	.byte	0x97
	.uleb128 0x1a
	.4byte	.LASF1036
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1037
	.byte	0xc
	.byte	0x1
	.byte	0x1f
	.4byte	0xab5
	.uleb128 0x7
	.4byte	.LASF1038
	.byte	0x1
	.byte	0x23
	.4byte	0x5d5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1039
	.byte	0x1
	.byte	0x27
	.4byte	0x61
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF1040
	.byte	0x1
	.byte	0x2b
	.4byte	0x61
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1041
	.byte	0x1
	.byte	0x2c
	.4byte	0xa84
	.uleb128 0x6
	.4byte	.LASF1042
	.byte	0xc
	.byte	0x2
	.byte	0x15
	.4byte	0xaf1
	.uleb128 0x7
	.4byte	.LASF1043
	.byte	0x2
	.byte	0x19
	.4byte	0x5cf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF1044
	.byte	0x2
	.byte	0x1d
	.4byte	0x61
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF1040
	.byte	0x2
	.byte	0x21
	.4byte	0x61
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1045
	.byte	0x2
	.byte	0x22
	.4byte	0xac0
	.uleb128 0x1b
	.4byte	.LASF1063
	.byte	0x3
	.2byte	0x229
	.4byte	0x5a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1c
	.uleb128 0x1c
	.4byte	.LASF1046
	.byte	0x3
	.2byte	0x229
	.4byte	0x5d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x1c
	.4byte	.LASF1047
	.byte	0x3
	.2byte	0x229
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1c
	.4byte	.LASF1048
	.byte	0x3
	.2byte	0x229
	.4byte	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x1c
	.4byte	.LASF1049
	.byte	0x3
	.2byte	0x22a
	.4byte	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x1d
	.4byte	.LASF1050
	.byte	0x3
	.2byte	0x22c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF1051
	.byte	0x3
	.2byte	0x22d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.LASF1052
	.byte	0x3
	.2byte	0x22e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF1053
	.byte	0x3
	.2byte	0x233
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF1054
	.byte	0x3
	.2byte	0x234
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF1055
	.byte	0x3
	.2byte	0x239
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF1056
	.byte	0x3
	.2byte	0x23a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF1057
	.byte	0x3
	.2byte	0x23c
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF1058
	.byte	0x3
	.2byte	0x242
	.4byte	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF1059
	.byte	0x3
	.2byte	0x259
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF1060
	.byte	0x3
	.2byte	0x25a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF1061
	.byte	0x3
	.2byte	0x25d
	.4byte	0xc22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1d
	.4byte	.LASF1062
	.byte	0x3
	.2byte	0x25e
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x805
	.uleb128 0xc
	.4byte	0x30
	.4byte	0xc33
	.uleb128 0x18
	.4byte	0x6c
	.2byte	0x1f3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF1064
	.byte	0x3
	.2byte	0x1ad
	.4byte	0x5a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd90
	.uleb128 0x1c
	.4byte	.LASF1065
	.byte	0x3
	.2byte	0x1ad
	.4byte	0x5cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1c
	.4byte	.LASF1066
	.byte	0x3
	.2byte	0x1ae
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1c
	.4byte	.LASF1049
	.byte	0x3
	.2byte	0x1af
	.4byte	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1d
	.4byte	.LASF1067
	.byte	0x3
	.2byte	0x1b4
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF1068
	.byte	0x3
	.2byte	0x1b5
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF1069
	.byte	0x3
	.2byte	0x1b6
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.4byte	.LASF1070
	.byte	0x3
	.2byte	0x1b7
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LASF1006
	.byte	0x3
	.2byte	0x1b8
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF1007
	.byte	0x3
	.2byte	0x1b9
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF1071
	.byte	0x3
	.2byte	0x1bb
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF1072
	.byte	0x3
	.2byte	0x1bc
	.4byte	0xaf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.4byte	.LASF1073
	.byte	0x3
	.2byte	0x1bf
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.4byte	.LASF1074
	.byte	0x3
	.2byte	0x1c0
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.4byte	.LASF1075
	.byte	0x3
	.2byte	0x1c1
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.LASF1076
	.byte	0x3
	.2byte	0x1c2
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF1077
	.byte	0x3
	.2byte	0x1c3
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF1078
	.byte	0x3
	.2byte	0x200
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF1079
	.byte	0x3
	.2byte	0x201
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF1059
	.byte	0x3
	.2byte	0x202
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF1080
	.byte	0x3
	.2byte	0x203
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.4byte	.LASF1081
	.byte	0x3
	.2byte	0x20f
	.4byte	0x990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF1082
	.byte	0x3
	.2byte	0x12b
	.4byte	0x5a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec1
	.uleb128 0x1c
	.4byte	.LASF1046
	.byte	0x3
	.2byte	0x12b
	.4byte	0x5d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x1c
	.4byte	.LASF1047
	.byte	0x3
	.2byte	0x12b
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x1c
	.4byte	.LASF1048
	.byte	0x3
	.2byte	0x12b
	.4byte	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x1c
	.4byte	.LASF1049
	.byte	0x3
	.2byte	0x12c
	.4byte	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x1d
	.4byte	.LASF1083
	.byte	0x3
	.2byte	0x12e
	.4byte	0xec1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.4byte	.LASF1050
	.byte	0x3
	.2byte	0x130
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF1084
	.byte	0x3
	.2byte	0x131
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.LASF1085
	.byte	0x3
	.2byte	0x132
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF1086
	.byte	0x3
	.2byte	0x13d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LASF1087
	.byte	0x3
	.2byte	0x13e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF1088
	.byte	0x3
	.2byte	0x143
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF1089
	.byte	0x3
	.2byte	0x144
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF1090
	.byte	0x3
	.2byte	0x146
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF1058
	.byte	0x3
	.2byte	0x14c
	.4byte	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.4byte	.LASF1059
	.byte	0x3
	.2byte	0x193
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF1060
	.byte	0x3
	.2byte	0x194
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF1061
	.byte	0x3
	.2byte	0x197
	.4byte	0xc22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x1d
	.4byte	.LASF1062
	.byte	0x3
	.2byte	0x198
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.byte	0
	.uleb128 0xc
	.4byte	0x30
	.4byte	0xed1
	.uleb128 0xd
	.4byte	0x6c
	.byte	0x1f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1091
	.byte	0x3
	.byte	0xb6
	.4byte	0x5a
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff1
	.uleb128 0x1f
	.4byte	.LASF1092
	.byte	0x3
	.byte	0xb6
	.4byte	0x5cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.4byte	.LASF1093
	.byte	0x3
	.byte	0xb7
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x3
	.byte	0xb8
	.4byte	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.4byte	.LASF1002
	.byte	0x3
	.byte	0xbd
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF1003
	.byte	0x3
	.byte	0xbe
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF1094
	.byte	0x3
	.byte	0xbf
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF1095
	.byte	0x3
	.byte	0xc0
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF1071
	.byte	0x3
	.byte	0xc2
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF1072
	.byte	0x3
	.byte	0xc3
	.4byte	0xaf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.4byte	.LASF1073
	.byte	0x3
	.byte	0xc6
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.4byte	.LASF1074
	.byte	0x3
	.byte	0xc7
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x20
	.4byte	.LASF1096
	.byte	0x3
	.byte	0xc8
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LASF1097
	.byte	0x3
	.byte	0xc9
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF1098
	.byte	0x3
	.byte	0xca
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF1078
	.byte	0x3
	.2byte	0x107
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF1079
	.byte	0x3
	.2byte	0x108
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LASF1059
	.byte	0x3
	.2byte	0x109
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.4byte	.LASF1080
	.byte	0x3
	.2byte	0x10a
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1099
	.byte	0x3
	.byte	0x43
	.4byte	0x5a
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110f
	.uleb128 0x1f
	.4byte	.LASF1046
	.byte	0x3
	.byte	0x43
	.4byte	0x5d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x1f
	.4byte	.LASF1047
	.byte	0x3
	.byte	0x43
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x1f
	.4byte	.LASF1048
	.byte	0x3
	.byte	0x44
	.4byte	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x3
	.byte	0x45
	.4byte	0xc1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x20
	.4byte	.LASF1083
	.byte	0x3
	.byte	0x50
	.4byte	0xec1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.4byte	.LASF1050
	.byte	0x3
	.byte	0x52
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF1100
	.byte	0x3
	.byte	0x53
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LASF1101
	.byte	0x3
	.byte	0x54
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LASF1102
	.byte	0x3
	.byte	0x5d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF1103
	.byte	0x3
	.byte	0x5e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF1104
	.byte	0x3
	.byte	0x63
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF1105
	.byte	0x3
	.byte	0x64
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF1106
	.byte	0x3
	.byte	0x66
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	.LASF1058
	.byte	0x3
	.byte	0x6c
	.4byte	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.4byte	.LASF1059
	.byte	0x3
	.byte	0x9b
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LASF1060
	.byte	0x3
	.byte	0x9c
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LASF1061
	.byte	0x3
	.byte	0x9f
	.4byte	0xc22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x20
	.4byte	.LASF1062
	.byte	0x3
	.byte	0xa0
	.4byte	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1107
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11d1
	.uleb128 0x1f
	.4byte	.LASF1108
	.byte	0x3
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x3
	.byte	0x1c
	.4byte	0xc1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF990
	.byte	0x3
	.byte	0x1d
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF991
	.byte	0x3
	.byte	0x1d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.4byte	.LASF992
	.byte	0x3
	.byte	0x1e
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF993
	.byte	0x3
	.byte	0x1e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.4byte	.LASF994
	.byte	0x3
	.byte	0x1f
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.4byte	.LASF986
	.byte	0x3
	.byte	0x20
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.4byte	.LASF987
	.byte	0x3
	.byte	0x20
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1f
	.4byte	.LASF988
	.byte	0x3
	.byte	0x21
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1f
	.4byte	.LASF989
	.byte	0x3
	.byte	0x21
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.4byte	.LASF1109
	.byte	0x3
	.byte	0x2b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1111
	.byte	0x2
	.byte	0xf9
	.4byte	0x5a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1207
	.uleb128 0x1f
	.4byte	.LASF1072
	.byte	0x2
	.byte	0xf9
	.4byte	0x1207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.4byte	.LASF1110
	.byte	0x2
	.byte	0xf9
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xaf1
	.uleb128 0x22
	.4byte	.LASF1112
	.byte	0x2
	.byte	0x67
	.4byte	0x5a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1243
	.uleb128 0x1f
	.4byte	.LASF1072
	.byte	0x2
	.byte	0x67
	.4byte	0x1207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x2
	.byte	0x67
	.4byte	0x614
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1114
	.byte	0x2
	.byte	0x5a
	.4byte	0x5a
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1279
	.uleb128 0x1f
	.4byte	.LASF1072
	.byte	0x2
	.byte	0x5a
	.4byte	0x1207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1115
	.byte	0x2
	.byte	0x5a
	.4byte	0x614
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1116
	.byte	0x2
	.byte	0x39
	.4byte	0x5a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cb
	.uleb128 0x1f
	.4byte	.LASF1072
	.byte	0x2
	.byte	0x39
	.4byte	0x1207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.ascii	"var\000"
	.byte	0x2
	.byte	0x39
	.4byte	0x614
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LASF1117
	.byte	0x2
	.byte	0x3b
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x20
	.4byte	.LASF1118
	.byte	0x2
	.byte	0x3c
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1138
	.byte	0x2
	.byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x130b
	.uleb128 0x1f
	.4byte	.LASF1072
	.byte	0x2
	.byte	0x2b
	.4byte	0x1207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.4byte	.LASF1119
	.byte	0x2
	.byte	0x2b
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1f
	.4byte	.LASF1120
	.byte	0x2
	.byte	0x2b
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1121
	.byte	0x1
	.byte	0x9b
	.4byte	0x5a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135d
	.uleb128 0x1f
	.4byte	.LASF1058
	.byte	0x1
	.byte	0x9b
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1122
	.byte	0x1
	.byte	0x9b
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF1123
	.byte	0x1
	.byte	0x9b
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.4byte	.LASF1124
	.byte	0x1
	.byte	0x9d
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xab5
	.uleb128 0x22
	.4byte	.LASF1125
	.byte	0x1
	.byte	0x8e
	.4byte	0x5a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1399
	.uleb128 0x1f
	.4byte	.LASF1058
	.byte	0x1
	.byte	0x8e
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x1
	.byte	0x8e
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1126
	.byte	0x1
	.byte	0x82
	.4byte	0x5a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13cf
	.uleb128 0x1f
	.4byte	.LASF1058
	.byte	0x1
	.byte	0x82
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1115
	.byte	0x1
	.byte	0x82
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1127
	.byte	0x1
	.byte	0x60
	.4byte	0x5a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1413
	.uleb128 0x1f
	.4byte	.LASF1058
	.byte	0x1
	.byte	0x60
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.ascii	"var\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x20
	.4byte	.LASF1118
	.byte	0x1
	.byte	0x62
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1128
	.byte	0x1
	.byte	0x52
	.4byte	0x61
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1465
	.uleb128 0x1f
	.4byte	.LASF1115
	.byte	0x1
	.byte	0x52
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x1
	.byte	0x52
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF1130
	.byte	0x1
	.byte	0x54
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.4byte	.LASF1131
	.byte	0x1
	.byte	0x55
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1132
	.byte	0x1
	.byte	0x43
	.4byte	0x61
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x148d
	.uleb128 0x23
	.ascii	"var\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1139
	.byte	0x1
	.byte	0x35
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF1058
	.byte	0x1
	.byte	0x35
	.4byte	0x135d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1119
	.byte	0x1
	.byte	0x35
	.4byte	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1133
	.byte	0x1
	.byte	0x35
	.4byte	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x461
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14ca
	.4byte	0x9ed
	.ascii	"TLV_AC_KEY_TYPE\000"
	.4byte	0x9f3
	.ascii	"TLV_AC_KEY_ID\000"
	.4byte	0x9f9
	.ascii	"TLV_AC_ECDH_PUB\000"
	.4byte	0x9ff
	.ascii	"TLV_AC_SALT\000"
	.4byte	0xa05
	.ascii	"TLV_AC_KEY_LIFETIME\000"
	.4byte	0xa0b
	.ascii	"TLV_AC_CIPHER_DK\000"
	.4byte	0xa11
	.ascii	"TLV_AC_ENCRYPTED_CONTENT\000"
	.4byte	0xa17
	.ascii	"TLV_AC_AES_IV\000"
	.4byte	0xa1d
	.ascii	"TLV_AC_ENCRYPTED_PAYLOAD\000"
	.4byte	0xa23
	.ascii	"TLV_SD_STATUS\000"
	.4byte	0xa29
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST_RESPONSE\000"
	.4byte	0xa2f
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST_RESPONSE\000"
	.4byte	0xa35
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST\000"
	.4byte	0xa3b
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST\000"
	.4byte	0xa41
	.ascii	"TLV_SSP_DEVICE_IDENTIFIER\000"
	.4byte	0xa47
	.ascii	"TLV_SSP_DEVICE_CAPABILITIES\000"
	.4byte	0xa4d
	.ascii	"TLV_SSP_N1_PUB\000"
	.4byte	0xa53
	.ascii	"TLV_SSP_SIGNATURE\000"
	.4byte	0xa59
	.ascii	"TLV_SSP_N2_PUB\000"
	.4byte	0xa5f
	.ascii	"TLV_SSP_ANCHOR_CERTIFICATE\000"
	.4byte	0xa65
	.ascii	"TLV_SSP_TRUST_ANCHOR_CERTIFICATE_DIGEST\000"
	.4byte	0xa6b
	.ascii	"TLV_SSP_N2_PUB_DIGEST\000"
	.4byte	0xa71
	.ascii	"TLV_SSP_KD_PRI_ENCRYPTED\000"
	.4byte	0xa77
	.ascii	"TLV_SSP_KD_PUB_CERTIFICATE\000"
	.4byte	0xa7d
	.ascii	"TLV_SSP_FINISH_MESSAGE\000"
	.4byte	0xafc
	.ascii	"cnstrct_fin_msg\000"
	.4byte	0xc33
	.ascii	"prcs_cert_rqst_rspns\000"
	.4byte	0xd90
	.ascii	"cnstrct_cert_rqst\000"
	.4byte	0xed1
	.ascii	"prcs_btstrp_rqst_rspns\000"
	.4byte	0xff1
	.ascii	"cnstrct_btstrp_rqst\000"
	.4byte	0x110f
	.ascii	"sign_on_basic_client_init\000"
	.4byte	0x11d1
	.ascii	"decoder_move_forward\000"
	.4byte	0x120d
	.ascii	"decoder_get_length\000"
	.4byte	0x1243
	.ascii	"decoder_get_type\000"
	.4byte	0x1279
	.ascii	"decoder_get_var\000"
	.4byte	0x12cb
	.ascii	"decoder_init\000"
	.4byte	0x130b
	.ascii	"encoder_append_raw_buffer_value\000"
	.4byte	0x1363
	.ascii	"encoder_append_length\000"
	.4byte	0x1399
	.ascii	"encoder_append_type\000"
	.4byte	0x13cf
	.ascii	"encoder_append_var\000"
	.4byte	0x1413
	.ascii	"encoder_probe_block_size\000"
	.4byte	0x1465
	.ascii	"encoder_get_var_size\000"
	.4byte	0x148d
	.ascii	"encoder_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x3ee
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14ca
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
	.ascii	"size_t\000"
	.4byte	0x5a5
	.ascii	"sign_on_basic_sec_gen_sha256_hash\000"
	.4byte	0x5db
	.ascii	"sign_on_basic_sec_gen_n1_keypair\000"
	.4byte	0x61a
	.ascii	"sign_on_basic_sec_gen_kt\000"
	.4byte	0x658
	.ascii	"sign_on_basic_sec_gen_btstrp_rqst_sig\000"
	.4byte	0x691
	.ascii	"sign_on_basic_sec_get_btstrp_rqst_sig_len\000"
	.4byte	0x6ad
	.ascii	"sign_on_basic_sec_vrfy_btstrp_rqst_rspns_sig\000"
	.4byte	0x6e6
	.ascii	"sign_on_basic_sec_gen_cert_rqst_sig\000"
	.4byte	0x6f1
	.ascii	"sign_on_basic_sec_get_cert_rqst_sig_len\000"
	.4byte	0x6fc
	.ascii	"sign_on_basic_sec_vrfy_cert_rqst_rspns_sig\000"
	.4byte	0x707
	.ascii	"sign_on_basic_sec_decrypt_kd_pri\000"
	.4byte	0x745
	.ascii	"sign_on_basic_sec_gen_fin_msg_sig\000"
	.4byte	0x750
	.ascii	"sign_on_basic_sec_get_fin_msg_sig_len\000"
	.4byte	0x75b
	.ascii	"sign_on_basic_sec_intf\000"
	.4byte	0x805
	.ascii	"sign_on_basic_client_t\000"
	.4byte	0xa84
	.ascii	"ndn_encoder\000"
	.4byte	0xab5
	.ascii	"ndn_encoder_t\000"
	.4byte	0xac0
	.ascii	"ndn_decoder\000"
	.4byte	0xaf1
	.ascii	"ndn_decoder_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
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
	.uleb128 0x3
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF460
	.file 9 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-client-consts.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 10 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-sec-intf-setter.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF481
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF542
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/string.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF568
	.byte	0x4
	.file 12 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-error-code.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF569
	.file 13 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/inttypes.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 14 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-constants.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF855
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF856
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF857
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xc
	.byte	0x4
	.file 15 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-enums.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF858
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 16 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-consts.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 17 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\security/sign-on-basic-sec-consts.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 18 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\sign-on-basic-impl-consts.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 19 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\bootstrapping\\secure-sign-on\\variants/ecc_256/sign-on-basic-ecc-256-consts.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro12
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
	.section	.debug_macro,"G",%progbits,wm4.signonbasicclientconsts.h.12.c6a18f3868a2fe24987587336dd91d31,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF480
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF541
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF544
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF563
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.50.aad2f28d9688ad38fd1808e94cc788bf,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF567
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.inttypes.h.45.132474ab363a8a9a463d81310b89b52b,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF723
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ndnerrorcode.h.14.8439de0b929d9daf11428c50f6a41455,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF793
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ndnconstants.h.10.ca5a4259e860f7dba160b547cb22beaf,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF854
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicconsts.h.12.fb94feeea88e28f62402c208b946d4d0,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF860
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicsecconsts.h.12.92157406c31b170a92ddbf5a1dffc3ca,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF868
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicimplconsts.h.12.5a4a90cd020e0a0f8bd43a45ef0e3e82,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF870
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.signonbasicecc256consts.h.12.e44f5e6e72b648d7c63d7e46ee80172e,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF873
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF233:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF934:
	.ascii	"__locale_s\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF362:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF1088:
	.ascii	"cert_rqst_tlv_type_field_size\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF252:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF1060:
	.ascii	"sig_payload_size\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF959:
	.ascii	"size_t\000"
.LASF254:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF971:
	.ascii	"sign_on_basic_sec_get_fin_msg_sig_len\000"
.LASF217:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF463:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_BOOTSTRAPPING_REQUES"
	.ascii	"T 1\000"
.LASF544:
	.ascii	"__THREAD __thread\000"
.LASF645:
	.ascii	"PRIXFAST16 \"X\"\000"
.LASF326:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF697:
	.ascii	"SCNoMAX \"llo\"\000"
.LASF788:
	.ascii	"NDN_ASN1_ECDSA_SIG_INVALID_SIZE -132\000"
.LASF318:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF924:
	.ascii	"__towupper\000"
.LASF928:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF619:
	.ascii	"PRIuFAST16 \"u\"\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF213:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF1135:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\"
	.ascii	"app-support\\bootstrapping\\secure-sign-on\\sign-on"
	.ascii	"-basic-client.c\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF239:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF343:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF547:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF221:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF1005:
	.ascii	"trust_anchor_cert_len\000"
.LASF655:
	.ascii	"PRIoPTR \"o\"\000"
.LASF691:
	.ascii	"SCNoFAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF276:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF592:
	.ascii	"PRIiFAST8 \"i\"\000"
.LASF448:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF306:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF957:
	.ascii	"__RAL_error_decoder_t\000"
.LASF874:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF870:
	.ascii	"SIG_GENERATION_BUF_LENGTH 500\000"
.LASF266:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF332:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF516:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF302:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF236:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF339:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF431:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF242:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF673:
	.ascii	"SCNi16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF582:
	.ascii	"PRIdFAST64 \"lld\"\000"
.LASF301:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF1092:
	.ascii	"btstrp_rqst_rspns_buf_p\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF572:
	.ascii	"__RAL_SCN_16_PREFIX \"h\"\000"
.LASF778:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_BUFFER_TOO_SHORT -126\000"
.LASF1036:
	.ascii	"TLV_SSP_FINISH_MESSAGE\000"
.LASF1058:
	.ascii	"encoder\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF611:
	.ascii	"PRIoLEAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF796:
	.ascii	"NDN_NAME_COMPONENT_BLOCK_SIZE 38\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF917:
	.ascii	"time_format\000"
.LASF523:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF546:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF945:
	.ascii	"__RAL_data_utf8_period\000"
.LASF495:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF846:
	.ascii	"NDN_ASN1_ECDSA_SECP192R1_RAW_SIG_SIZE 48\000"
.LASF988:
	.ascii	"KS_pri_p\000"
.LASF1029:
	.ascii	"TLV_SSP_SIGNATURE\000"
.LASF529:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF833:
	.ascii	"NDN_SEC_ENCRYPTION_KEYS_SIZE 5\000"
.LASF776:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_SIG -124\000"
.LASF565:
	.ascii	"NULL 0\000"
.LASF759:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG -107\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF675:
	.ascii	"SCNi64 \"lli\"\000"
.LASF1066:
	.ascii	"cert_rqst_rspns_buf_len\000"
.LASF459:
	.ascii	"NDN_LITE_SEC_BACKEND_NRF_CRYPTO 1\000"
.LASF289:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF801:
	.ascii	"NDN_INTEREST_PARAMS_BUFFER_SIZE 248\000"
.LASF913:
	.ascii	"month_names\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF433:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF454:
	.ascii	"uECC_ENABLE_VLI_API 0\000"
.LASF1009:
	.ascii	"KD_pri_len\000"
.LASF968:
	.ascii	"sign_on_basic_sec_vrfy_cert_rqst_rspns_sig\000"
.LASF890:
	.ascii	"int_curr_symbol\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF1056:
	.ascii	"fin_msg_tlv_len_field_size\000"
.LASF550:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF832:
	.ascii	"NDN_SEC_SIGNING_KEYS_SIZE 10\000"
.LASF262:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF932:
	.ascii	"__RAL_locale_t\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF909:
	.ascii	"int_p_sign_posn\000"
.LASF1115:
	.ascii	"type\000"
.LASF901:
	.ascii	"n_cs_precedes\000"
.LASF821:
	.ascii	"NDN_APPSUPPORT_AC_KEY_LIST_SIZE 5\000"
.LASF1125:
	.ascii	"encoder_append_length\000"
.LASF1022:
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST_RESPONSE\000"
.LASF483:
	.ascii	"UINT8_MAX 255\000"
.LASF279:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF685:
	.ascii	"SCNo8 \"o\"\000"
.LASF208:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF1023:
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST_RESPONSE\000"
.LASF485:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF309:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF804:
	.ascii	"NDN_CONTENT_BUFFER_SIZE 256\000"
.LASF1021:
	.ascii	"TLV_SD_STATUS\000"
.LASF258:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF567:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF348:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF897:
	.ascii	"int_frac_digits\000"
.LASF364:
	.ascii	"__USA_FBIT__ 16\000"
.LASF338:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF212:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF368:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF612:
	.ascii	"PRIoLEAST64 \"llo\"\000"
.LASF836:
	.ascii	"NDN_SEC_SHA256_HASH_SIZE 32\000"
.LASF466:
	.ascii	"SIGN_ON_BASIC_CLIENT_PROCESSED_CERTIFICATE_REQUEST_"
	.ascii	"RESPONSE 4\000"
.LASF346:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF664:
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
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF598:
	.ascii	"PRIiLEAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF238:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF1094:
	.ascii	"trust_anchor_p\000"
.LASF440:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF315:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF1096:
	.ascii	"btstrp_rqst_rspns_tlv_val_buf_p\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF1048:
	.ascii	"output_len_p\000"
.LASF286:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF1042:
	.ascii	"ndn_decoder\000"
.LASF736:
	.ascii	"NDN_SEC_WRONG_AES_SIZE -27\000"
.LASF1030:
	.ascii	"TLV_SSP_N2_PUB\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF237:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF488:
	.ascii	"INT16_MAX 32767\000"
.LASF467:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_FINISH_MESSAGE 5\000"
.LASF580:
	.ascii	"PRIdFAST16 \"d\"\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF231:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF916:
	.ascii	"date_format\000"
.LASF850:
	.ascii	"NDN_ASN1_ECDSA_SECP224R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP224R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF605:
	.ascii	"PRIoFAST8 \"o\"\000"
.LASF892:
	.ascii	"mon_decimal_point\000"
.LASF709:
	.ascii	"SCNuLEAST64 \"llu\"\000"
.LASF304:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF310:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF885:
	.ascii	"long int\000"
.LASF757:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"N1_KEYPAIR -105\000"
.LASF227:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF225:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF549:
	.ascii	"__CODE \000"
.LASF232:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF954:
	.ascii	"__RAL_error_decoder_s\000"
.LASF248:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF960:
	.ascii	"sign_on_basic_sec_gen_sha256_hash\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF366:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF845:
	.ascii	"NDN_ASN1_ECDSA_SECP224R1_RAW_SIG_SIZE 56\000"
.LASF936:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF953:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF798:
	.ascii	"NDN_NAME_MAX_BLOCK_SIZE 384\000"
.LASF642:
	.ascii	"PRIX32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF1078:
	.ascii	"sig_begin\000"
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
.LASF1031:
	.ascii	"TLV_SSP_ANCHOR_CERTIFICATE\000"
.LASF705:
	.ascii	"SCNuFAST64 \"llu\"\000"
.LASF222:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF624:
	.ascii	"PRIuLEAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF630:
	.ascii	"PRIx64 \"llx\"\000"
.LASF1100:
	.ascii	"btstrp_rqst_tlv_val_len\000"
.LASF494:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF586:
	.ascii	"PRIdLEAST64 \"lld\"\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF979:
	.ascii	"gen_cert_rqst_sig\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF644:
	.ascii	"PRIXFAST8 \"X\"\000"
.LASF597:
	.ascii	"PRIiLEAST16 \"i\"\000"
.LASF474:
	.ascii	"SIGN_ON_BASIC_CLIENT_KS_PRI_MAX_LENGTH 172\000"
.LASF763:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_TRUST_ANCHOR_CERT -111\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF1129:
	.ascii	"payload_size\000"
.LASF793:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_SEQUENCE -13"
	.ascii	"7\000"
.LASF678:
	.ascii	"SCNiFAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF508:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF522:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF666:
	.ascii	"SCNdFAST64 \"lld\"\000"
.LASF462:
	.ascii	"SIGN_ON_BASIC_CLIENT_NOT_STARTED 0\000"
.LASF596:
	.ascii	"PRIiLEAST8 \"i\"\000"
.LASF244:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF927:
	.ascii	"__mbtowc\000"
.LASF519:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF747:
	.ascii	"NDN_FWD_FIB_FULL -43\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF840:
	.ascii	"NDN_SEC_ECC_SECP256R1_PRIVATE_KEY_SIZE 32\000"
.LASF958:
	.ascii	"__RAL_error_decoder_head\000"
.LASF831:
	.ascii	"NDN_APPSUPPORT_SERVICE_PERMISSION_DENIED 3\000"
.LASF515:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF878:
	.ascii	"uint8_t\000"
.LASF1074:
	.ascii	"current_tlv_length\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF372:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF794:
	.ascii	"NDN_CONSTANTS_H \000"
.LASF1017:
	.ascii	"TLV_AC_CIPHER_DK\000"
.LASF926:
	.ascii	"__wctomb\000"
.LASF264:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF507:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF328:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF468:
	.ascii	"SIGN_ON_BASIC_CLIENT_DEVICE_IDENTIFIER_MAX_LENGTH 1"
	.ascii	"2\000"
.LASF1046:
	.ascii	"buf_p\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF739:
	.ascii	"NDN_SEC_SIGNED_INTEREST_INVALID_DIGEST -30\000"
.LASF314:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF665:
	.ascii	"SCNdFAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF1110:
	.ascii	"step\000"
.LASF720:
	.ascii	"SCNxLEAST16 __RAL_SCN_LEAST16_PREFIX \"x\"\000"
.LASF568:
	.ascii	"__string_H \000"
.LASF210:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF215:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF875:
	.ascii	"unsigned char\000"
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
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF902:
	.ascii	"n_sep_by_space\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF1045:
	.ascii	"ndn_decoder_t\000"
.LASF993:
	.ascii	"device_capabilities_len\000"
.LASF606:
	.ascii	"PRIoFAST16 \"o\"\000"
.LASF539:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF1039:
	.ascii	"output_max_size\000"
.LASF492:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF536:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF457:
	.ascii	"uECC_SUPPORT_COMPRESSED_POINT 0\000"
.LASF792:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_INT - 136\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF1012:
	.ascii	"TLV_AC_KEY_TYPE\000"
.LASF947:
	.ascii	"__RAL_data_utf8_space\000"
.LASF660:
	.ascii	"SCNd16 __RAL_SCN_16_PREFIX \"d\"\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF648:
	.ascii	"PRIXLEAST8 \"X\"\000"
.LASF487:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF329:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF835:
	.ascii	"NDN_SEC_INVALID_KEY_ID ((uint32_t)(-1))\000"
.LASF904:
	.ascii	"n_sign_posn\000"
.LASF985:
	.ascii	"sign_on_basic_client_t\000"
.LASF1079:
	.ascii	"sig_len\000"
.LASF740:
	.ascii	"NDN_FRAG_NO_MORE_FRAGS -30\000"
.LASF733:
	.ascii	"NDN_SEC_CRYPTO_ALGO_FAILURE -25\000"
.LASF1091:
	.ascii	"prcs_btstrp_rqst_rspns\000"
.LASF1108:
	.ascii	"variant\000"
.LASF541:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF994:
	.ascii	"secure_sign_on_code_p\000"
.LASF795:
	.ascii	"NDN_NAME_COMPONENT_BUFFER_SIZE 36\000"
.LASF389:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF469:
	.ascii	"SIGN_ON_BASIC_CLIENT_DEVICE_CAPABILITIES_MAX_LENGTH"
	.ascii	" 1\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF886:
	.ascii	"char\000"
.LASF365:
	.ascii	"__USA_IBIT__ 16\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF820:
	.ascii	"NDN_APPSUPPORT_AC_SALT_SIZE 16\000"
.LASF777:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_DECRYPT_"
	.ascii	"KD_PRI -125\000"
.LASF1050:
	.ascii	"ndn_encoder_success\000"
.LASF735:
	.ascii	"NDN_SEC_UNSUPPORT_SIGN_TYPE -26\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF1114:
	.ascii	"decoder_get_type\000"
.LASF800:
	.ascii	"NDN_FWD_INVALID_NAME_COMPONENT_SIZE ((uint32_t)(-1)"
	.ascii	")\000"
.LASF808:
	.ascii	"NDN_CS_MAX_SIZE 10\000"
.LASF354:
	.ascii	"__HA_FBIT__ 7\000"
.LASF501:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF770:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G_PAYLOAD_HASH -118\000"
.LASF823:
	.ascii	"NDN_APPSUPPORT_PREFIXES_SIZE 10\000"
.LASF229:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF755:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_BUFFER_TOO_SHORT -1"
	.ascii	"03\000"
.LASF762:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_SIG -110\000"
.LASF260:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF629:
	.ascii	"PRIx32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF806:
	.ascii	"NDN_FIB_MAX_SIZE 20\000"
.LASF864:
	.ascii	"SIGN_ON_BASIC_SHA256_HASH_SIZE 32\000"
.LASF1028:
	.ascii	"TLV_SSP_N1_PUB\000"
.LASF980:
	.ascii	"get_cert_rqst_sig_len\000"
.LASF436:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF424:
	.ascii	"__ARM_NEON\000"
.LASF1116:
	.ascii	"decoder_get_var\000"
.LASF1137:
	.ascii	"timeval\000"
.LASF843:
	.ascii	"NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE 64\000"
.LASF679:
	.ascii	"SCNiFAST64 \"lli\"\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF1093:
	.ascii	"btstrp_rqst_rspns_buf_len\000"
.LASF1124:
	.ascii	"rest_length\000"
.LASF961:
	.ascii	"sign_on_basic_sec_gen_n1_keypair\000"
.LASF772:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_VERIFY_S"
	.ascii	"IGNATURE -120\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF730:
	.ascii	"NDN_SEC_WRONG_KEY_SIZE -22\000"
.LASF584:
	.ascii	"PRIdLEAST16 \"d\"\000"
.LASF743:
	.ascii	"NDN_FRAG_WRONG_IDENTIFIER -33\000"
.LASF984:
	.ascii	"get_fin_msg_sig_len\000"
.LASF992:
	.ascii	"device_capabilities_p\000"
.LASF554:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF944:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF573:
	.ascii	"__RAL_SCN_32_PREFIX \"\"\000"
.LASF358:
	.ascii	"__DA_FBIT__ 31\000"
.LASF447:
	.ascii	"NRF52840_XXAA 1\000"
.LASF320:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF737:
	.ascii	"NDN_SEC_INIT_FAILURE -28\000"
.LASF342:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF893:
	.ascii	"mon_thousands_sep\000"
.LASF1053:
	.ascii	"fin_msg_sig_tlv_len_field_size\000"
.LASF479:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PRI_MAX_LENGTH 172\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF478:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PUB_MAX_LENGTH 384\000"
.LASF604:
	.ascii	"PRIo64 \"llo\"\000"
.LASF726:
	.ascii	"NDN_NAME_INVALID_FORMAT -11\000"
.LASF925:
	.ascii	"__towlower\000"
.LASF650:
	.ascii	"PRIXLEAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF639:
	.ascii	"PRIxMAX \"llx\"\000"
.LASF999:
	.ascii	"N1_pub_len\000"
.LASF305:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF713:
	.ascii	"SCNx32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF534:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF620:
	.ascii	"PRIuFAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF1062:
	.ascii	"sig_size\000"
.LASF802:
	.ascii	"NDN_SIGNED_INTEREST_BE_SIGNED_MAX_SIZE 680\000"
.LASF905:
	.ascii	"int_p_cs_precedes\000"
.LASF313:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF415:
	.ascii	"__VFP_FP__ 1\000"
.LASF853:
	.ascii	"NDN_ASN1_ECDSA_MIN_RAW_SIG_SIZE (NDN_ASN1_ECDSA_SEC"
	.ascii	"P160R1_MAX_ENCODED_SIG_SIZE - NDN_ASN1_ECDSA_ENCODI"
	.ascii	"NG_MAX_EXTRA_BYTES)\000"
.LASF955:
	.ascii	"decode\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF847:
	.ascii	"NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE 40\000"
.LASF754:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_TO_SET_SEC_INT"
	.ascii	"F -102\000"
.LASF1001:
	.ascii	"N1_pri_len\000"
.LASF987:
	.ascii	"KS_pub_len\000"
.LASF844:
	.ascii	"NDN_ASN1_ECDSA_SECP256K1_RAW_SIG_SIZE 64\000"
.LASF299:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF1063:
	.ascii	"cnstrct_fin_msg\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF703:
	.ascii	"SCNuFAST16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF1080:
	.ascii	"sig_payload_len\000"
.LASF435:
	.ascii	"__ELF__ 1\000"
.LASF753:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_UNRECOGNIZED_V"
	.ascii	"ARIANT -101\000"
.LASF1077:
	.ascii	"cert_rqst_rspns_tlv_sig_p\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF561:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF647:
	.ascii	"PRIXFAST64 \"llX\"\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF725:
	.ascii	"NDN_OVERSIZE -10\000"
.LASF360:
	.ascii	"__TA_FBIT__ 63\000"
.LASF1083:
	.ascii	"digest_buffer\000"
.LASF224:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF600:
	.ascii	"PRIiMAX \"lli\"\000"
.LASF1118:
	.ascii	"rest_size\000"
.LASF822:
	.ascii	"NDN_APPSUPPORT_NEIGHBORS_SIZE 10\000"
.LASF786:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_CERTIFICATE"
	.ascii	"_REQUEST -130\000"
.LASF741:
	.ascii	"NDN_FRAG_OUT_OF_ORDER -31\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF969:
	.ascii	"sign_on_basic_sec_decrypt_kd_pri\000"
.LASF311:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF1122:
	.ascii	"buffer\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF768:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_N2"
	.ascii	"_PUB_HASH -116\000"
.LASF938:
	.ascii	"__RAL_codeset_ascii\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF746:
	.ascii	"NDN_FWD_PIT_ENTRY_FACE_LIST_FULL -42\000"
.LASF1051:
	.ascii	"fin_msg_tlv_val_len\000"
.LASF638:
	.ascii	"PRIxLEAST64 \"llx\"\000"
.LASF475:
	.ascii	"SIGN_ON_BASIC_CLIENT_N1_PUB_MAX_LENGTH 384\000"
.LASF896:
	.ascii	"negative_sign\000"
.LASF1073:
	.ascii	"current_tlv_type\000"
.LASF764:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_N2_PUB -112\000"
.LASF1033:
	.ascii	"TLV_SSP_N2_PUB_DIGEST\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF714:
	.ascii	"SCNx64 \"llx\"\000"
.LASF1099:
	.ascii	"cnstrct_btstrp_rqst\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF563:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF657:
	.ascii	"PRIxPTR \"x\"\000"
.LASF525:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF1134:
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
.LASF682:
	.ascii	"SCNiLEAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF499:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF711:
	.ascii	"SCNx8 \"x\"\000"
.LASF857:
	.ascii	"NDN_ENCODING_ENCODER_H \000"
.LASF698:
	.ascii	"SCNu8 \"u\"\000"
.LASF1000:
	.ascii	"N1_pri_p\000"
.LASF259:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF914:
	.ascii	"abbrev_month_names\000"
.LASF327:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF970:
	.ascii	"sign_on_basic_sec_gen_fin_msg_sig\000"
.LASF371:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF461:
	.ascii	"SIGN_ON_BASIC_CLIENT_CONSTS_H \000"
.LASF854:
	.ascii	"NDN_ASN1_ECDSA_MIN_ENCODED_SIG_SIZE (NDN_ASN1_ECDSA"
	.ascii	"_MIN_RAW_SIG_SIZE + NDN_ASN1_ECDSA_ENCODING_MIN_EXT"
	.ascii	"RA_BYTES)\000"
.LASF931:
	.ascii	"codeset\000"
.LASF615:
	.ascii	"PRIu16 \"u\"\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF766:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_BUFFER_TOO_SHORT -114"
	.ascii	"\000"
.LASF834:
	.ascii	"NDN_SEC_INVALID_KEY_SIZE ((uint32_t)(-1))\000"
.LASF721:
	.ascii	"SCNxLEAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF686:
	.ascii	"SCNo16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF394:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF1107:
	.ascii	"sign_on_basic_client_init\000"
.LASF422:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF989:
	.ascii	"KS_pri_len\000"
.LASF997:
	.ascii	"KT_len\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF688:
	.ascii	"SCNo64 \"llo\"\000"
.LASF728:
	.ascii	"NDN_WRONG_TLV_LENGTH -13\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF223:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF809:
	.ascii	"NDN_FACE_TABLE_MAX_SIZE 10\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF767:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_ENCODING_FAILED -115\000"
.LASF453:
	.ascii	"NRF_CRYPTO_MAX_INSTANCE_COUNT 1\000"
.LASF437:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF537:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF1061:
	.ascii	"temp_sig_buf\000"
.LASF307:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF708:
	.ascii	"SCNuLEAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF884:
	.ascii	"__wchar\000"
.LASF1090:
	.ascii	"cert_rqst_total_len\000"
.LASF256:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF357:
	.ascii	"__SA_IBIT__ 16\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF590:
	.ascii	"PRIi32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF5:
	.ascii	"__GNUC__ 7\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF919:
	.ascii	"__RAL_locale_data_t\000"
.LASF564:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF489:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF622:
	.ascii	"PRIuLEAST8 \"u\"\000"
.LASF1010:
	.ascii	"status\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF235:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF769:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_TR"
	.ascii	"UST_ANCHOR_CERT_HASH -117\000"
.LASF943:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF765:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_GENERA"
	.ascii	"TE_KT -113\000"
.LASF782:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_SUCCESS -130\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF325:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF824:
	.ascii	"NDN_APPSUPPORT_SERVICES_SIZE 10\000"
.LASF268:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF1111:
	.ascii	"decoder_move_forward\000"
.LASF352:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF837:
	.ascii	"NDN_SEC_AES_MIN_KEY_SIZE 16\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF1015:
	.ascii	"TLV_AC_SALT\000"
.LASF535:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF1052:
	.ascii	"fin_msg_sig_tlv_val_len\000"
.LASF1089:
	.ascii	"cert_rqst_tlv_len_field_size\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF589:
	.ascii	"PRIi16 \"i\"\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF8:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF526:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF1082:
	.ascii	"cnstrct_cert_rqst\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF915:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF230:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF869:
	.ascii	"SIGN_ON_BASIC_IMPL_CONSTS_H \000"
.LASF351:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF862:
	.ascii	"SIGN_ON_BASIC_SEC_OP_FAILURE 0\000"
.LASF717:
	.ascii	"SCNxFAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF603:
	.ascii	"PRIo32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF859:
	.ascii	"SIGN_ON_BASIC_CONSTS_H \000"
.LASF1025:
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST\000"
.LASF652:
	.ascii	"PRIXMAX \"llX\"\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF848:
	.ascii	"NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF451:
	.ascii	"SWI_DISABLE0 1\000"
.LASF973:
	.ascii	"gen_sha256_hash\000"
.LASF729:
	.ascii	"NDN_OVERSIZE_VAR -14\000"
.LASF470:
	.ascii	"SIGN_ON_BASIC_CLIENT_SECURE_SIGN_ON_CODE_MAX_LENGTH"
	.ascii	" 16\000"
.LASF758:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG_PAYLOAD_HASH -106\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF395:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF773:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_CERT_RQST_RSPNS -121\000"
.LASF290:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF908:
	.ascii	"int_n_sep_by_space\000"
.LASF1132:
	.ascii	"encoder_get_var_size\000"
.LASF816:
	.ascii	"NDN_FRAG_SEQ_MASK 0x1F\000"
.LASF659:
	.ascii	"SCNd8 \"d\"\000"
.LASF738:
	.ascii	"NDN_SEC_FAIL_VERIFY_SIG -29\000"
.LASF951:
	.ascii	"__user_set_time_of_day\000"
.LASF797:
	.ascii	"NDN_NAME_COMPONENTS_SIZE 10\000"
.LASF579:
	.ascii	"PRIdFAST8 \"d\"\000"
.LASF784:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_NRF_SDK_BLE_CONSTRUCT_FAIL"
	.ascii	"ED_TO_INITIALIZE_SIGN_ON_BASIC_CLIENT -132\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF998:
	.ascii	"N1_pub_p\000"
.LASF578:
	.ascii	"PRId64 \"lld\"\000"
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
.LASF742:
	.ascii	"NDN_FRAG_NO_MEM -32\000"
.LASF1035:
	.ascii	"TLV_SSP_KD_PUB_CERTIFICATE\000"
.LASF710:
	.ascii	"SCNuMAX \"llu\"\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF321:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF1072:
	.ascii	"decoder\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF408:
	.ascii	"__ARM_ARCH 7\000"
.LASF593:
	.ascii	"PRIiFAST16 \"i\"\000"
.LASF631:
	.ascii	"PRIxFAST8 \"x\"\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF830:
	.ascii	"NDN_APPSUPPORT_SERVICE_BUSY 2\000"
.LASF881:
	.ascii	"long long int\000"
.LASF933:
	.ascii	"__mbstate_s\000"
.LASF805:
	.ascii	"NDN_SIGNATURE_BUFFER_SIZE 128\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF1068:
	.ascii	"KD_pri_encrypted_len\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF1057:
	.ascii	"fin_msg_total_len\000"
.LASF1138:
	.ascii	"decoder_init\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1041:
	.ascii	"ndn_encoder_t\000"
.LASF867:
	.ascii	"SIGN_ON_BASIC_AES_KEY_MAX_LENGTH 16\000"
.LASF355:
	.ascii	"__HA_IBIT__ 8\000"
.LASF771:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G -119\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF649:
	.ascii	"PRIXLEAST16 \"X\"\000"
.LASF707:
	.ascii	"SCNuLEAST16 __RAL_SCN_LEAST16_PREFIX \"u\"\000"
.LASF517:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF209:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF700:
	.ascii	"SCNu32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF702:
	.ascii	"SCNuFAST8 \"hhu\"\000"
.LASF963:
	.ascii	"sign_on_basic_sec_gen_btstrp_rqst_sig\000"
.LASF585:
	.ascii	"PRIdLEAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF1121:
	.ascii	"encoder_append_raw_buffer_value\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF1102:
	.ascii	"btstrp_rqst_sig_tlv_len_field_size\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF390:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF935:
	.ascii	"__category\000"
.LASF995:
	.ascii	"secure_sign_on_code_len\000"
.LASF1127:
	.ascii	"encoder_append_var\000"
.LASF272:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF1112:
	.ascii	"decoder_get_length\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF618:
	.ascii	"PRIuFAST8 \"u\"\000"
.LASF1002:
	.ascii	"N2_pub_p\000"
.LASF826:
	.ascii	"NDN_APPSUPPORT_INVALID_SERVICE_ID_SIZE ((uint32_t)("
	.ascii	"-1))\000"
.LASF1069:
	.ascii	"KD_pri_decrypted_p\000"
.LASF480:
	.ascii	"SIGN_ON_BASIC_CLIENT_KT_MAX_LENGTH 172\000"
.LASF255:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF727:
	.ascii	"NDN_WRONG_TLV_TYPE -12\000"
.LASF918:
	.ascii	"date_time_format\000"
.LASF1087:
	.ascii	"cert_rqst_sig_tlv_type_field_size\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF458:
	.ascii	"uECC_VLI_NATIVE_LITTLE_ENDIAN 1\000"
.LASF635:
	.ascii	"PRIxLEAST8 \"x\"\000"
.LASF627:
	.ascii	"PRIx8 \"x\"\000"
.LASF640:
	.ascii	"PRIX8 \"X\"\000"
.LASF756:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_ENCODING_FAILED -10"
	.ascii	"4\000"
.LASF353:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF269:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF350:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF689:
	.ascii	"SCNoFAST8 \"hho\"\000"
.LASF866:
	.ascii	"SIGN_ON_BASIC_ECC_CURVE_SECP_256R1_RAW_PUB_KEY_LENG"
	.ascii	"TH 64\000"
.LASF1097:
	.ascii	"btstrp_rqst_rspns_tlv_val_len\000"
.LASF569:
	.ascii	"NDN_ERROR_CODE_H \000"
.LASF672:
	.ascii	"SCNi8 \"i\"\000"
.LASF491:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF226:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF873:
	.ascii	"SIGN_ON_BASIC_ECC_256_KD_PRI_RAW_LENGTH 32\000"
.LASF880:
	.ascii	"unsigned int\000"
.LASF1027:
	.ascii	"TLV_SSP_DEVICE_CAPABILITIES\000"
.LASF498:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF865:
	.ascii	"SIGN_ON_BASIC_ECC_CURVE_SECP_256R1_RAW_PRI_KEY_LENG"
	.ascii	"TH 32\000"
.LASF510:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF1106:
	.ascii	"btstrp_rqst_total_len\000"
.LASF218:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF895:
	.ascii	"positive_sign\000"
.LASF785:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_BOOTSTRAPPI"
	.ascii	"NG_REQUEST -129\000"
.LASF300:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF654:
	.ascii	"PRIiPTR \"i\"\000"
.LASF694:
	.ascii	"SCNoLEAST16 __RAL_SCN_LEAST16_PREFIX \"o\"\000"
.LASF427:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF216:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF903:
	.ascii	"p_sign_posn\000"
.LASF369:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF661:
	.ascii	"SCNd32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF1026:
	.ascii	"TLV_SSP_DEVICE_IDENTIFIER\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF511:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF856:
	.ascii	"NDN_ENCODING_DECODER_H \000"
.LASF455:
	.ascii	"uECC_OPTIMIZATION_LEVEL 3\000"
.LASF1065:
	.ascii	"cert_rqst_rspns_buf_p\000"
.LASF964:
	.ascii	"sign_on_basic_sec_get_btstrp_rqst_sig_len\000"
.LASF344:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF734:
	.ascii	"NDN_SEC_UNSUPPORT_CRYPTO_ALGO -26\000"
.LASF990:
	.ascii	"device_identifier_p\000"
.LASF551:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF241:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF312:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF656:
	.ascii	"PRIuPTR \"u\"\000"
.LASF975:
	.ascii	"gen_kt\000"
.LASF1139:
	.ascii	"encoder_init\000"
.LASF277:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF392:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF952:
	.ascii	"__user_get_time_of_day\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF614:
	.ascii	"PRIu8 \"u\"\000"
.LASF583:
	.ascii	"PRIdLEAST8 \"d\"\000"
.LASF438:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF465:
	.ascii	"SIGN_ON_BASIC_CLIENT_GENERATED_CERTIFICATE_REQUEST "
	.ascii	"3\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF1075:
	.ascii	"cert_rqst_rspns_tlv_val_buf_p\000"
.LASF509:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF704:
	.ascii	"SCNuFAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF986:
	.ascii	"KS_pub_p\000"
.LASF1006:
	.ascii	"KD_pub_cert_p\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF247:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF1014:
	.ascii	"TLV_AC_ECDH_PUB\000"
.LASF662:
	.ascii	"SCNd64 \"lld\"\000"
.LASF939:
	.ascii	"__RAL_codeset_utf8\000"
.LASF1040:
	.ascii	"offset\000"
.LASF599:
	.ascii	"PRIiLEAST64 \"lli\"\000"
.LASF937:
	.ascii	"__RAL_c_locale\000"
.LASF587:
	.ascii	"PRIdMAX \"lld\"\000"
.LASF1070:
	.ascii	"KD_pri_decrypted_len\000"
.LASF634:
	.ascii	"PRIxFAST64 \"llx\"\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF825:
	.ascii	"NDN_APPSUPPORT_SERVICE_ID_SIZE 20\000"
.LASF712:
	.ascii	"SCNx16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF278:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF625:
	.ascii	"PRIuLEAST64 \"llu\"\000"
.LASF497:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF887:
	.ascii	"decimal_point\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF791:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_WRITE_ASN1_INT -135\000"
.LASF407:
	.ascii	"__arm__ 1\000"
.LASF829:
	.ascii	"NDN_APPSUPPORT_SERVICE_AVAILABLE 1\000"
.LASF748:
	.ascii	"NDN_FWD_INTEREST_REJECTED -44\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF789:
	.ascii	"NDN_ASN1_ECDSA_SIG_BUFFER_TOO_SMALL -133\000"
.LASF460:
	.ascii	"SIGN_ON_BASIC_CLIENT_H \000"
.LASF783:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_FAILURE -131\000"
.LASF418:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF552:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF490:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF962:
	.ascii	"sign_on_basic_sec_gen_kt\000"
.LASF819:
	.ascii	"NDN_APPSUPPORT_AC_EDK_SIZE 16\000"
.LASF948:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF361:
	.ascii	"__TA_IBIT__ 64\000"
.LASF429:
	.ascii	"__ARM_EABI__ 1\000"
.LASF982:
	.ascii	"decrypt_kd_pri\000"
.LASF1047:
	.ascii	"buf_len\000"
.LASF588:
	.ascii	"PRIi8 \"i\"\000"
.LASF398:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF696:
	.ascii	"SCNoLEAST64 \"llo\"\000"
.LASF413:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF781:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG "
	.ascii	"-129\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF1020:
	.ascii	"TLV_AC_ENCRYPTED_PAYLOAD\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF692:
	.ascii	"SCNoFAST64 \"llo\"\000"
.LASF1126:
	.ascii	"encoder_append_type\000"
.LASF981:
	.ascii	"vrfy_cert_rqst_rspns_sig\000"
.LASF966:
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
.LASF621:
	.ascii	"PRIuFAST64 \"llu\"\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF674:
	.ascii	"SCNi32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF643:
	.ascii	"PRIX64 \"llX\"\000"
.LASF576:
	.ascii	"PRId16 \"d\"\000"
.LASF1105:
	.ascii	"btstrp_rqst_tlv_len_field_size\000"
.LASF623:
	.ascii	"PRIuLEAST16 \"u\"\000"
.LASF636:
	.ascii	"PRIxLEAST16 \"x\"\000"
.LASF607:
	.ascii	"PRIoFAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF512:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF641:
	.ascii	"PRIX16 \"X\"\000"
.LASF521:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF852:
	.ascii	"NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF787:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_FINISH_MESS"
	.ascii	"AGE -131\000"
.LASF1101:
	.ascii	"btstrp_rqst_sig_tlv_val_len\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF486:
	.ascii	"UINT16_MAX 65535\000"
.LASF996:
	.ascii	"KT_p\000"
.LASF1011:
	.ascii	"sec_intf\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF718:
	.ascii	"SCNxFAST64 \"llx\"\000"
.LASF396:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF1136:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite-"
	.ascii	"asn-testing\000"
.LASF814:
	.ascii	"NDN_FRAG_HB_MASK 0x80\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF1034:
	.ascii	"TLV_SSP_KD_PRI_ENCRYPTED\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF265:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF471:
	.ascii	"SIGN_ON_BASIC_CLIENT_KD_PUB_CERT_MAX_LENGTH 200\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF481:
	.ascii	"SIGN_ON_BASIC_SEC_INTF_SETTER_H \000"
.LASF542:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF1123:
	.ascii	"size\000"
.LASF920:
	.ascii	"__isctype\000"
.LASF240:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF882:
	.ascii	"long long unsigned int\000"
.LASF502:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF983:
	.ascii	"gen_fin_msg_sig\000"
.LASF504:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF1037:
	.ascii	"ndn_encoder\000"
.LASF333:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF907:
	.ascii	"int_p_sep_by_space\000"
.LASF409:
	.ascii	"__APCS_32__ 1\000"
.LASF340:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF1007:
	.ascii	"KD_pub_cert_len\000"
.LASF1113:
	.ascii	"length\000"
.LASF671:
	.ascii	"SCNdMAX \"lld\"\000"
.LASF609:
	.ascii	"PRIoLEAST8 \"o\"\000"
.LASF556:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF347:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF443:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF1019:
	.ascii	"TLV_AC_AES_IV\000"
.LASF562:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF594:
	.ascii	"PRIiFAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF296:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF282:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF1084:
	.ascii	"cert_rqst_tlv_val_len\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF807:
	.ascii	"NDN_PIT_MAX_SIZE 32\000"
.LASF220:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF967:
	.ascii	"sign_on_basic_sec_get_cert_rqst_sig_len\000"
.LASF1103:
	.ascii	"btstrp_rqst_sig_tlv_type_field_size\000"
.LASF900:
	.ascii	"p_sep_by_space\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF476:
	.ascii	"SIGN_ON_BASIC_CLIENT_N1_PRI_MAX_LENGTH 172\000"
.LASF500:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF723:
	.ascii	"SCNxMAX \"llx\"\000"
.LASF322:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF1016:
	.ascii	"TLV_AC_KEY_LIFETIME\000"
.LASF281:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF473:
	.ascii	"SIGN_ON_BASIC_CLIENT_KS_PUB_MAX_LENGTH 384\000"
.LASF446:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF341:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF484:
	.ascii	"INT8_MAX 127\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF812:
	.ascii	"NDN_MAX_FACE_PER_PIT_ENTRY 3\000"
.LASF724:
	.ascii	"NDN_SUCCESS 0\000"
.LASF699:
	.ascii	"SCNu16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF628:
	.ascii	"PRIx16 \"x\"\000"
.LASF1008:
	.ascii	"KD_pri_p\000"
.LASF799:
	.ascii	"NDN_FWD_INVALID_NAME_SIZE ((uint32_t)(-1))\000"
.LASF441:
	.ascii	"DEBUG_NRF 1\000"
.LASF677:
	.ascii	"SCNiFAST16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF425:
	.ascii	"__ARM_NEON_FP\000"
.LASF978:
	.ascii	"vrfy_btstrp_rqst_rspns_sig\000"
.LASF760:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_VERIFY"
	.ascii	"_SIGNATURE -108\000"
.LASF1128:
	.ascii	"encoder_probe_block_size\000"
.LASF356:
	.ascii	"__SA_FBIT__ 15\000"
.LASF719:
	.ascii	"SCNxLEAST8 \"hhx\"\000"
.LASF889:
	.ascii	"grouping\000"
.LASF1018:
	.ascii	"TLV_AC_ENCRYPTED_CONTENT\000"
.LASF858:
	.ascii	"NDN_ENUMS_H \000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF851:
	.ascii	"NDN_ASN1_ECDSA_SECP192R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP192R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF503:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF838:
	.ascii	"NDN_SEC_AES_IV_LENGTH 16\000"
.LASF412:
	.ascii	"__THUMBEL__ 1\000"
.LASF1095:
	.ascii	"trust_anchor_len\000"
.LASF393:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF790:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_PROBE_ASN1_INT_SIZE -1"
	.ascii	"34\000"
.LASF731:
	.ascii	"NDN_SEC_WRONG_SIG_SIZE -23\000"
.LASF335:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF1120:
	.ascii	"block_size\000"
.LASF317:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF610:
	.ascii	"PRIoLEAST16 \"o\"\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF482:
	.ascii	"__stdint_H \000"
.LASF1043:
	.ascii	"input_value\000"
.LASF841:
	.ascii	"NDN_ASN1_ECDSA_ENCODING_MAX_EXTRA_BYTES 8\000"
.LASF349:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF912:
	.ascii	"abbrev_day_names\000"
.LASF555:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF750:
	.ascii	"NDN_FWD_APP_FACE_CB_TABLE_FULL -50\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF815:
	.ascii	"NDN_FRAG_MF_MASK 0x20\000"
.LASF449:
	.ascii	"S140 1\000"
.LASF445:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF940:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF1071:
	.ascii	"ndn_decoder_success\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF1085:
	.ascii	"cert_rqst_sig_tlv_val_len\000"
.LASF303:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF1133:
	.ascii	"block_max_size\000"
.LASF690:
	.ascii	"SCNoFAST16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF287:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF297:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF921:
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
.LASF855:
	.ascii	"NDN_ENCODING_TLV_H \000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF929:
	.ascii	"name\000"
.LASF250:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF477:
	.ascii	"SIGN_ON_BASIC_CLIENT_N2_PUB_MAX_LENGTH 384\000"
.LASF668:
	.ascii	"SCNdLEAST16 __RAL_SCN_LEAST16_PREFIX \"d\"\000"
.LASF976:
	.ascii	"gen_btstrp_rqst_sig\000"
.LASF1003:
	.ascii	"N2_pub_len\000"
.LASF898:
	.ascii	"frac_digits\000"
.LASF1117:
	.ascii	"first_bit\000"
.LASF574:
	.ascii	"__RAL_SCN_LEAST16_PREFIX \"h\"\000"
.LASF891:
	.ascii	"currency_symbol\000"
.LASF616:
	.ascii	"PRIu32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF513:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF876:
	.ascii	"short int\000"
.LASF974:
	.ascii	"gen_n1_keypair\000"
.LASF651:
	.ascii	"PRIXLEAST64 \"llX\"\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF367:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF1130:
	.ascii	"type_size\000"
.LASF373:
	.ascii	"__NO_INLINE__ 1\000"
.LASF780:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG_"
	.ascii	"PAYLOAD_HASH -128\000"
.LASF827:
	.ascii	"NDN_APPSUPPORT_SERVICE_UNDEFINED ((uint8_t)(-1))\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF883:
	.ascii	"__state\000"
.LASF695:
	.ascii	"SCNoLEAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF205:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF439:
	.ascii	"__SES_VERSION 41000\000"
.LASF571:
	.ascii	"__RAL_PRI_32_PREFIX \"\"\000"
.LASF977:
	.ascii	"get_btstrp_rqst_sig_len\000"
.LASF261:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF496:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF1109:
	.ascii	"set_sec_intf_result\000"
.LASF472:
	.ascii	"SIGN_ON_BASIC_CLIENT_TRUST_ANCHOR_CERT_MAX_LENGTH 2"
	.ascii	"00\000"
.LASF1054:
	.ascii	"fin_msg_sig_tlv_type_field_size\000"
.LASF430:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF243:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF839:
	.ascii	"NDN_SEC_ECC_SECP256R1_PUBLIC_KEY_SIZE 64\000"
.LASF894:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF617:
	.ascii	"PRIu64 \"llu\"\000"
.LASF524:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF868:
	.ascii	"SIGN_ON_BASIC_ECC_CURVE_SECP_256R1 0\000"
.LASF319:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF687:
	.ascii	"SCNo32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF505:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF1086:
	.ascii	"cert_rqst_sig_tlv_len_field_size\000"
.LASF540:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF1119:
	.ascii	"block_value\000"
.LASF1013:
	.ascii	"TLV_AC_KEY_ID\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF581:
	.ascii	"PRIdFAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF1059:
	.ascii	"sig_payload_begin\000"
.LASF553:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF911:
	.ascii	"day_names\000"
.LASF1064:
	.ascii	"prcs_cert_rqst_rspns\000"
.LASF842:
	.ascii	"NDN_ASN1_ECDSA_ENCODING_MIN_EXTRA_BYTES 6\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF906:
	.ascii	"int_n_cs_precedes\000"
.LASF949:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF1104:
	.ascii	"btstrp_rqst_tlv_type_field_size\000"
.LASF330:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF810:
	.ascii	"NDN_FACE_DEFAULT_COST 1\000"
.LASF274:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF293:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF391:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF1004:
	.ascii	"trust_anchor_cert_p\000"
.LASF752:
	.ascii	"NDN_AC_UNRECOGNIZED_KEY_REQUEST -52\000"
.LASF397:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF434:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF811:
	.ascii	"NDN_AES_BLOCK_SIZE 16\000"
.LASF1038:
	.ascii	"output_value\000"
.LASF543:
	.ascii	"__crossworks_H \000"
.LASF828:
	.ascii	"NDN_APPSUPPORT_SERVICE_UNAVAILABLE 0\000"
.LASF316:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF923:
	.ascii	"__iswctype\000"
.LASF774:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PUB_CERT -122\000"
.LASF234:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF749:
	.ascii	"NDN_FWD_NO_MATCHED_CALLBACK -45\000"
.LASF331:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF965:
	.ascii	"sign_on_basic_sec_vrfy_btstrp_rqst_rspns_sig\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF608:
	.ascii	"PRIoFAST64 \"llo\"\000"
.LASF557:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF813:
	.ascii	"NDN_FRAG_HDR_LEN 3\000"
.LASF432:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF559:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF941:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF779:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_ENCODING_FAILED -127\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF818:
	.ascii	"NDN_FRAG_BUFFER_MAX 512\000"
.LASF861:
	.ascii	"SIGN_ON_BASIC_SEC_CONSTS_H \000"
.LASF411:
	.ascii	"__thumb2__ 1\000"
.LASF566:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF602:
	.ascii	"PRIo16 \"o\"\000"
.LASF518:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF1067:
	.ascii	"KD_pri_encrypted_p\000"
.LASF428:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF637:
	.ascii	"PRIxLEAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF1131:
	.ascii	"length_size\000"
.LASF803:
	.ascii	"NDN_DEFAULT_INTEREST_LIFETIME 4000\000"
.LASF291:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF601:
	.ascii	"PRIo8 \"o\"\000"
.LASF419:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF285:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF744:
	.ascii	"NDN_FWD_NO_MEM -40\000"
.LASF545:
	.ascii	"__RAL_SIZE_T\000"
.LASF879:
	.ascii	"uint32_t\000"
.LASF493:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF532:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF910:
	.ascii	"int_n_sign_posn\000"
.LASF732:
	.ascii	"NDN_SEC_DISABLED_FEATURE -24\000"
.LASF533:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF298:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF663:
	.ascii	"SCNdFAST8 \"hhd\"\000"
.LASF991:
	.ascii	"device_identifier_len\000"
.LASF676:
	.ascii	"SCNiFAST8 \"hhi\"\000"
.LASF680:
	.ascii	"SCNiLEAST8 \"hhi\"\000"
.LASF416:
	.ascii	"__ARM_FP 4\000"
.LASF693:
	.ascii	"SCNoLEAST8 \"hho\"\000"
.LASF715:
	.ascii	"SCNxFAST8 \"hhx\"\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF669:
	.ascii	"SCNdLEAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF363:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF538:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF950:
	.ascii	"__RAL_data_empty_string\000"
.LASF308:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF323:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF632:
	.ascii	"PRIxFAST16 \"x\"\000"
.LASF1055:
	.ascii	"fin_msg_tlv_type_field_size\000"
.LASF670:
	.ascii	"SCNdLEAST64 \"lld\"\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF653:
	.ascii	"PRIdPTR \"d\"\000"
.LASF701:
	.ascii	"SCNu64 \"llu\"\000"
.LASF206:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF245:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF849:
	.ascii	"NDN_ASN1_ECDSA_SECP256K1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP256K1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF871:
	.ascii	"SIGN_ON_BASIC_ECC_256_CONSTS_H \000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF899:
	.ascii	"p_cs_precedes\000"
.LASF334:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF667:
	.ascii	"SCNdLEAST8 \"hhd\"\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF877:
	.ascii	"short unsigned int\000"
.LASF284:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF410:
	.ascii	"__thumb__ 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF751:
	.ascii	"NDN_SD_NO_MATCH_SERVCE -51\000"
.LASF560:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF414:
	.ascii	"__ARMEL__ 1\000"
.LASF706:
	.ascii	"SCNuLEAST8 \"hhu\"\000"
.LASF633:
	.ascii	"PRIxFAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF1081:
	.ascii	"KD_pri_decrypted_temp_buf\000"
.LASF336:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF531:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF817:
	.ascii	"NDN_FRAG_MAX_SEQ_NUM 30\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF775:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PRI_ENC -123\000"
.LASF1032:
	.ascii	"TLV_SSP_TRUST_ANCHOR_CERTIFICATE_DIGEST\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF575:
	.ascii	"PRId8 \"d\"\000"
.LASF591:
	.ascii	"PRIi64 \"lli\"\000"
.LASF1049:
	.ascii	"sign_on_basic_client\000"
.LASF860:
	.ascii	"SIGN_ON_BASIC_VARIANT_ECC_256 1\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF972:
	.ascii	"sign_on_basic_sec_intf\000"
.LASF595:
	.ascii	"PRIiFAST64 \"lli\"\000"
.LASF1076:
	.ascii	"cert_rqst_rspns_tlv_val_len\000"
.LASF646:
	.ascii	"PRIXFAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF626:
	.ascii	"PRIuMAX \"llu\"\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF577:
	.ascii	"PRId32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF288:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF684:
	.ascii	"SCNiMAX \"lli\"\000"
.LASF257:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF219:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF528:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF863:
	.ascii	"SIGN_ON_BASIC_SEC_OP_SUCCESS 1\000"
.LASF683:
	.ascii	"SCNiLEAST64 \"lli\"\000"
.LASF872:
	.ascii	"SIGN_ON_BASIC_ECC_256_SECURE_SIGN_ON_CODE_LENGTH 16"
	.ascii	"\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF946:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF359:
	.ascii	"__DA_IBIT__ 32\000"
.LASF1024:
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST\000"
.LASF888:
	.ascii	"thousands_sep\000"
.LASF722:
	.ascii	"SCNxLEAST64 \"llx\"\000"
.LASF249:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF922:
	.ascii	"__tolower\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF558:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF337:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF716:
	.ascii	"SCNxFAST16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF956:
	.ascii	"next\000"
.LASF613:
	.ascii	"PRIoMAX \"llo\"\000"
.LASF930:
	.ascii	"data\000"
.LASF514:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF745:
	.ascii	"NDN_FWD_PIT_FULL -41\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF520:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF464:
	.ascii	"SIGN_ON_BASIC_CLIENT_PROCESSED_BOOTSTRAPPING_REQUES"
	.ascii	"T_RESPONSE 2\000"
.LASF761:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_BTSTRP_RQST_RSPNS -109\000"
.LASF214:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF456:
	.ascii	"uECC_SQUARE_FUNC 0\000"
.LASF658:
	.ascii	"PRIXPTR \"X\"\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF548:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF280:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF1098:
	.ascii	"btstrp_rqst_rspns_tlv_sig_p\000"
.LASF1044:
	.ascii	"input_size\000"
.LASF324:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF271:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF527:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF530:
	.ascii	"INT16_C(x) (x)\000"
.LASF570:
	.ascii	"__inttypes_H \000"
.LASF294:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF942:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF681:
	.ascii	"SCNiLEAST16 __RAL_SCN_LEAST16_PREFIX \"i\"\000"
.LASF506:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
