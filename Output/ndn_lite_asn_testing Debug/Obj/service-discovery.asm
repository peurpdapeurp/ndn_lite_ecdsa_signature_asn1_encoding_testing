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
	.file	"service-discovery.c"
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
.LCFI3:
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
	bhi	.L3
	.loc 1 99 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L3
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
	b	.L4
.L3:
	.loc 1 103 0
	ldr	r3, [sp]
	cmp	r3, #65536
	bcs	.L5
	.loc 1 103 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #2
	bls	.L5
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
	b	.L4
.L5:
	.loc 1 109 0
	ldr	r3, [sp, #12]
	cmp	r3, #4
	bls	.L6
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
	b	.L4
.L6:
	.loc 1 118 0
	mvn	r3, #13
	b	.L7
.L4:
	.loc 1 120 0
	movs	r3, #0
.L7:
	.loc 1 121 0
	mov	r0, r3
	add	sp, sp, #16
.LCFI4:
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
.LCFI5:
	sub	sp, sp, #12
.LCFI6:
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
.LCFI7:
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
.LCFI8:
	sub	sp, sp, #12
.LCFI9:
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
.LCFI10:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	encoder_append_length, .-encoder_append_length
	.section	.text.encoder_append_byte_value,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_append_byte_value, %function
encoder_append_byte_value:
.LFB7:
	.loc 1 174 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI11:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 175 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L13
	.loc 1 176 0
	mvn	r3, #9
	b	.L14
.L13:
	.loc 1 177 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 1 178 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	.loc 1 179 0
	movs	r3, #0
.L14:
	.loc 1 180 0
	mov	r0, r3
	add	sp, sp, #8
.LCFI12:
	@ sp needed
	bx	lr
.LFE7:
	.size	encoder_append_byte_value, .-encoder_append_byte_value
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
.LCFI13:
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
.LCFI14:
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
.LCFI15:
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
	bhi	.L17
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
	b	.L18
.L17:
	.loc 2 65 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #253
	bne	.L19
	.loc 2 65 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #2
	bls	.L19
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
	b	.L18
.L19:
	.loc 2 70 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #254
	bne	.L20
	.loc 2 70 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #4
	bls	.L20
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
	b	.L18
.L20:
	.loc 2 78 0
	mvn	r3, #13
	b	.L21
.L18:
	.loc 2 80 0
	movs	r3, #0
.L21:
	.loc 2 81 0
	mov	r0, r3
	add	sp, sp, #16
.LCFI16:
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
.LCFI17:
	sub	sp, sp, #12
.LCFI18:
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
.LCFI19:
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
.LCFI20:
	sub	sp, sp, #12
.LCFI21:
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
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.LFE19:
	.size	decoder_get_length, .-decoder_get_length
	.section	.text.decoder_get_byte_value,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decoder_get_byte_value, %function
decoder_get_byte_value:
.LFB21:
	.loc 2 138 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI23:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 139 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L27
	.loc 2 140 0
	mvn	r3, #9
	b	.L28
.L27:
	.loc 2 141 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 2 142 0
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3, #8]
	.loc 2 143 0
	movs	r3, #0
.L28:
	.loc 2 144 0
	mov	r0, r3
	add	sp, sp, #8
.LCFI24:
	@ sp needed
	bx	lr
.LFE21:
	.size	decoder_get_byte_value, .-decoder_get_byte_value
	.section	.text.name_component_from_buffer,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	name_component_from_buffer, %function
name_component_from_buffer:
.LFB30:
	.file 3 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\name-component.h"
	.loc 3 77 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #20
.LCFI26:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 3 78 0
	ldr	r3, [sp]
	cmp	r3, #36
	bls	.L30
	.loc 3 79 0
	mvn	r3, #9
	b	.L31
.L30:
	.loc 3 80 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 3 81 0
	ldr	r3, [sp, #12]
	adds	r3, r3, #4
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	memcpy
	.loc 3 82 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3, #40]
	.loc 3 83 0
	movs	r3, #0
.L31:
	.loc 3 84 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI27:
	@ sp needed
	ldr	pc, [sp], #4
.LFE30:
	.size	name_component_from_buffer, .-name_component_from_buffer
	.section	.text.name_component_from_string,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	name_component_from_string, %function
name_component_from_string:
.LFB31:
	.loc 3 96 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI28:
	sub	sp, sp, #20
.LCFI29:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 3 97 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L33
	.loc 3 98 0
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	ldr	r2, [sp, #8]
	movs	r1, #8
	ldr	r0, [sp, #12]
	bl	name_component_from_buffer
	mov	r3, r0
	b	.L34
.L33:
	.loc 3 101 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	movs	r1, #8
	ldr	r0, [sp, #12]
	bl	name_component_from_buffer
	mov	r3, r0
.L34:
	.loc 3 103 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI30:
	@ sp needed
	ldr	pc, [sp], #4
.LFE31:
	.size	name_component_from_string, .-name_component_from_string
	.section	.text.ndn_interest_from_name,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_interest_from_name, %function
ndn_interest_from_name:
.LFB44:
	.file 4 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\interest.h"
	.loc 4 96 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI31:
	sub	sp, sp, #8
.LCFI32:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 4 97 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	mov	r0, r2
	mov	r1, r3
	mov	r3, #444
	mov	r2, r3
	bl	memcpy
	.loc 4 99 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #456]
	.loc 4 100 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #457]
	.loc 4 101 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #714]
	.loc 4 102 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #712]
	.loc 4 103 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #715]
	.loc 4 105 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #444]
	.loc 4 106 0
	ldr	r3, [sp, #4]
	add	r2, r3, #448
	mov	r3, #4000
	mov	r4, #0
	strd	r3, [r2]
	.loc 4 107 0
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #713]
	.loc 4 108 0
	nop
	add	sp, sp, #8
.LCFI33:
	@ sp needed
	pop	{r4, pc}
.LFE44:
	.size	ndn_interest_from_name, .-ndn_interest_from_name
	.section	.text.ndn_interest_set_Parameters,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_interest_set_Parameters, %function
ndn_interest_set_Parameters:
.LFB48:
	.loc 4 164 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI34:
	sub	sp, sp, #20
.LCFI35:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 4 165 0
	ldr	r3, [sp, #4]
	cmp	r3, #248
	bls	.L37
	.loc 4 166 0
	mvn	r3, #9
	b	.L38
.L37:
	.loc 4 167 0
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #712]
	.loc 4 168 0
	ldr	r3, [sp, #12]
	add	r3, r3, #460
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 4 169 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #708]
	.loc 4 170 0
	movs	r3, #0
.L38:
	.loc 4 171 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI36:
	@ sp needed
	ldr	pc, [sp], #4
.LFE48:
	.size	ndn_interest_set_Parameters, .-ndn_interest_set_Parameters
	.section	.rodata.curve_secp256r1,"a",%progbits
	.align	2
	.type	curve_secp256r1, %object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.short	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.section	.text.ndn_data_set_content,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_data_set_content, %function
ndn_data_set_content:
.LFB59:
	.file 5 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\data.h"
	.loc 5 147 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI37:
	sub	sp, sp, #20
.LCFI38:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 5 148 0
	ldr	r3, [sp, #4]
	cmp	r3, #255
	bhi	.L40
	.loc 5 149 0
	ldr	r3, [sp, #12]
	add	r3, r3, #500
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 5 150 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #756]
.L40:
	.loc 5 152 0
	movs	r3, #0
	.loc 5 153 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI39:
	@ sp needed
	ldr	pc, [sp], #4
.LFE59:
	.size	ndn_data_set_content, .-ndn_data_set_content
	.section	.bss.sd_context,"aw",%nobits
	.align	2
	.type	sd_context, %object
	.size	sd_context, 4008
sd_context:
	.space	4008
	.section	.text._neighbors_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbors_init, %function
_neighbors_init:
.LFB61:
	.file 6 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\service-discovery.c"
	.loc 6 21 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI40:
.LBB2:
	.loc 6 22 0
	movs	r3, #0
	strb	r3, [sp, #7]
	b	.L43
.L46:
	.loc 6 23 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldr	r2, .L47
	mov	r1, #324
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #808
	mov	r2, #-1
	str	r2, [r3]
.LBB3:
	.loc 6 24 0
	movs	r3, #0
	strb	r3, [sp, #6]
	b	.L44
.L45:
	.loc 6 25 0 discriminator 3
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	ldr	r0, .L47
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, #324
	mul	r2, r2, r1
	add	r3, r3, r2
	add	r3, r3, r0
	add	r3, r3, #812
	movs	r2, #255
	strb	r2, [r3]
	.loc 6 24 0 discriminator 3
	ldrb	r3, [sp, #6]
	adds	r3, r3, #1
	strb	r3, [sp, #6]
.L44:
	.loc 6 24 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L45
.LBE3:
	.loc 6 22 0 is_stmt 1 discriminator 2
	ldrb	r3, [sp, #7]
	adds	r3, r3, #1
	strb	r3, [sp, #7]
.L43:
	.loc 6 22 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L46
.LBE2:
	.loc 6 28 0 is_stmt 1
	nop
	add	sp, sp, #8
.LCFI41:
	@ sp needed
	bx	lr
.L48:
	.align	2
.L47:
	.word	sd_context
.LFE61:
	.size	_neighbors_init, .-_neighbors_init
	.section	.text._neighbors_find_neighbor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbors_find_neighbor, %function
_neighbors_find_neighbor:
.LFB62:
	.loc 6 32 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI42:
	sub	sp, sp, #20
.LCFI43:
	str	r0, [sp, #4]
.LBB4:
	.loc 6 33 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L50
.L54:
	.loc 6 34 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	ldr	r2, .L56
	mov	r1, #324
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #808
	ldr	r3, [r3]
	cmp	r3, #-1
	beq	.L55
	.loc 6 37 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r2, #324
	mul	r3, r2, r3
	add	r3, r3, #768
	ldr	r2, .L56
	add	r3, r3, r2
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	name_component_compare
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	.loc 6 38 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r2, #324
	mul	r3, r2, r3
	add	r3, r3, #768
	ldr	r2, .L56
	add	r3, r3, r2
	b	.L53
.L55:
	.loc 6 35 0
	nop
.L52:
	.loc 6 33 0 discriminator 2
	ldrb	r3, [sp, #15]
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L50:
	.loc 6 33 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L54
.LBE4:
	.loc 6 41 0 is_stmt 1
	movs	r3, #0
.L53:
	.loc 6 42 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI44:
	@ sp needed
	ldr	pc, [sp], #4
.L57:
	.align	2
.L56:
	.word	sd_context
.LFE62:
	.size	_neighbors_find_neighbor, .-_neighbors_find_neighbor
	.section	.text._neighbors_add_neighbor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbors_add_neighbor, %function
_neighbors_add_neighbor:
.LFB63:
	.loc 6 46 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI45:
	sub	sp, sp, #20
.LCFI46:
	str	r0, [sp, #4]
	.loc 6 47 0
	ldr	r0, [sp, #4]
	bl	_neighbors_find_neighbor
	str	r0, [sp, #8]
	.loc 6 48 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L59
	.loc 6 49 0
	ldr	r3, [sp, #8]
	b	.L60
.L59:
.LBB5:
	.loc 6 51 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L61
.L63:
	.loc 6 52 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	ldr	r2, .L64
	mov	r1, #324
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #808
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L62
	.loc 6 53 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	ldr	r2, .L64
	mov	r1, #324
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r2, r3, #768
	ldr	r3, [sp, #4]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	.loc 6 54 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r2, #324
	mul	r3, r2, r3
	add	r3, r3, #768
	ldr	r2, .L64
	add	r3, r3, r2
	b	.L60
.L62:
	.loc 6 51 0 discriminator 2
	ldrb	r3, [sp, #15]
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L61:
	.loc 6 51 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L63
.LBE5:
	.loc 6 57 0 is_stmt 1
	movs	r3, #0
.L60:
	.loc 6 58 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI47:
	@ sp needed
	pop	{r4, r5, pc}
.L65:
	.align	2
.L64:
	.word	sd_context
.LFE63:
	.size	_neighbors_add_neighbor, .-_neighbors_add_neighbor
	.section	.text._neighbor_add_update_service,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbor_add_update_service, %function
_neighbor_add_update_service:
.LFB64:
	.loc 6 64 0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI48:
	sub	sp, sp, #28
.LCFI49:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #3]
.LBB6:
	.loc 6 65 0
	movs	r3, #0
	strb	r3, [sp, #23]
	b	.L67
.L71:
	.loc 6 66 0
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L75
	.loc 6 68 0
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	adds	r0, r3, #5
	.loc 6 69 0
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r2, [r3]
	.loc 6 68 0
	ldr	r3, [sp, #4]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	mov	r2, r3
	ldr	r1, [sp, #8]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L69
	.loc 6 71 0
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 6 72 0
	movs	r3, #0
	b	.L70
.L75:
	.loc 6 67 0
	nop
.L69:
	.loc 6 65 0 discriminator 2
	ldrb	r3, [sp, #23]
	adds	r3, r3, #1
	strb	r3, [sp, #23]
.L67:
	.loc 6 65 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L71
.LBE6:
.LBB7:
	.loc 6 75 0 is_stmt 1
	movs	r3, #0
	strb	r3, [sp, #22]
	b	.L72
.L74:
	.loc 6 76 0
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L73
	.loc 6 77 0
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #40
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	adds	r3, r3, #5
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 6 78 0
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r2, [sp, #4]
	str	r2, [r3]
	.loc 6 79 0
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 6 80 0
	movs	r3, #0
	b	.L70
.L73:
	.loc 6 75 0 discriminator 2
	ldrb	r3, [sp, #22]
	adds	r3, r3, #1
	strb	r3, [sp, #22]
.L72:
	.loc 6 75 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L74
.LBE7:
	.loc 6 83 0 is_stmt 1
	mvn	r3, #9
.L70:
	.loc 6 84 0
	mov	r0, r3
	add	sp, sp, #28
.LCFI50:
	@ sp needed
	ldr	pc, [sp], #4
.LFE64:
	.size	_neighbor_add_update_service, .-_neighbor_add_update_service
	.section	.text._neighbors_find_first_service_provider,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbors_find_first_service_provider, %function
_neighbors_find_first_service_provider:
.LFB65:
	.loc 6 89 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI51:
	sub	sp, sp, #16
.LCFI52:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB8:
	.loc 6 90 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L77
.L84:
	.loc 6 91 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	ldr	r2, .L86
	mov	r1, #324
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, #808
	ldr	r3, [r3]
	cmp	r3, #-1
	beq	.L85
.LBB9:
	.loc 6 93 0
	movs	r3, #0
	strb	r3, [sp, #14]
	b	.L80
.L83:
	.loc 6 94 0
	ldrb	r1, [sp, #15]	@ zero_extendqisi2
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, #324
	mul	r2, r2, r1
	add	r3, r3, r2
	add	r3, r3, #808
	ldr	r2, .L86
	add	r3, r3, r2
	adds	r4, r3, #5
	.loc 6 95 0
	ldrb	r1, [sp, #15]	@ zero_extendqisi2
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r0, .L86
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, #324
	mul	r2, r2, r1
	add	r3, r3, r2
	add	r3, r3, r0
	add	r3, r3, #836
	ldr	r2, [r3]
	.loc 6 94 0
	ldr	r3, [sp]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	mov	r2, r3
	ldr	r1, [sp, #4]
	mov	r0, r4
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L81
	.loc 6 97 0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r2, #324
	mul	r3, r2, r3
	add	r3, r3, #768
	ldr	r2, .L86
	add	r3, r3, r2
	b	.L82
.L81:
	.loc 6 93 0 discriminator 2
	ldrb	r3, [sp, #14]
	adds	r3, r3, #1
	strb	r3, [sp, #14]
.L80:
	.loc 6 93 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L83
	b	.L79
.L85:
.LBE9:
	.loc 6 92 0 is_stmt 1
	nop
.L79:
	.loc 6 90 0 discriminator 2
	ldrb	r3, [sp, #15]
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L77:
	.loc 6 90 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L84
.LBE8:
	.loc 6 101 0 is_stmt 1
	movs	r3, #0
.L82:
	.loc 6 102 0
	mov	r0, r3
	add	sp, sp, #16
.LCFI53:
	@ sp needed
	pop	{r4, pc}
.L87:
	.align	2
.L86:
	.word	sd_context
.LFE65:
	.size	_neighbors_find_first_service_provider, .-_neighbors_find_first_service_provider
	.section	.text._neighbor_reset_service,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbor_reset_service, %function
_neighbor_reset_service:
.LFB66:
	.loc 6 107 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI54:
	str	r0, [sp, #4]
.LBB10:
	.loc 6 108 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L89
.L90:
	.loc 6 109 0 discriminator 3
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #44
	movs	r2, #255
	strb	r2, [r3]
	.loc 6 108 0 discriminator 3
	ldrb	r3, [sp, #15]
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L89:
	.loc 6 108 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L90
.LBE10:
	.loc 6 111 0 is_stmt 1
	nop
	add	sp, sp, #16
.LCFI55:
	@ sp needed
	bx	lr
.LFE66:
	.size	_neighbor_reset_service, .-_neighbor_reset_service
	.section	.text._neighbors_remove_neighbor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_neighbors_remove_neighbor, %function
_neighbors_remove_neighbor:
.LFB67:
	.loc 6 116 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI56:
	sub	sp, sp, #20
.LCFI57:
	str	r0, [sp, #4]
	.loc 6 117 0
	ldr	r0, [sp, #4]
	bl	_neighbors_find_neighbor
	str	r0, [sp, #12]
	.loc 6 118 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L93
	.loc 6 119 0
	ldr	r3, [sp, #12]
	mov	r2, #-1
	str	r2, [r3, #40]
	.loc 6 120 0
	ldr	r0, [sp, #12]
	bl	_neighbor_reset_service
.L93:
	.loc 6 122 0
	nop
	add	sp, sp, #20
.LCFI58:
	@ sp needed
	ldr	pc, [sp], #4
.LFE67:
	.size	_neighbors_remove_neighbor, .-_neighbors_remove_neighbor
	.section	.text.ndn_sd_init,"ax",%progbits
	.align	1
	.global	ndn_sd_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_init, %function
ndn_sd_init:
.LFB68:
	.loc 6 130 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI59:
	sub	sp, sp, #20
.LCFI60:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 6 131 0
	bl	_neighbors_init
	.loc 6 132 0
	ldr	r3, .L97
	ldr	r2, [sp]
	add	r4, r3, #444
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	.loc 6 133 0
	ldr	r2, .L97
	ldr	r3, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	mov	r3, #444
	mov	r2, r3
	bl	memcpy
.LBB11:
	.loc 6 135 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L95
.L96:
	.loc 6 136 0 discriminator 3
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r1, .L97
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	movs	r2, #255
	strb	r2, [r3]
	.loc 6 135 0 discriminator 3
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L95:
	.loc 6 135 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L96
.LBE11:
	.loc 6 138 0 is_stmt 1
	nop
	add	sp, sp, #20
.LCFI61:
	@ sp needed
	pop	{r4, r5, pc}
.L98:
	.align	2
.L97:
	.word	sd_context
.LFE68:
	.size	ndn_sd_init, .-ndn_sd_init
	.section	.text.ndn_sd_register_get_self_service,"ax",%progbits
	.align	1
	.global	ndn_sd_register_get_self_service
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_register_get_self_service, %function
ndn_sd_register_get_self_service:
.LFB69:
	.loc 6 142 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI62:
	sub	sp, sp, #20
.LCFI63:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB12:
	.loc 6 143 0
	movs	r3, #0
	strb	r3, [sp, #15]
	b	.L100
.L104:
	.loc 6 144 0
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r1, .L109
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L108
	.loc 6 146 0
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L109
	add	r3, r3, r2
	add	r0, r3, #9
	.loc 6 147 0
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldr	r1, .L109
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #512
	ldr	r2, [r3]
	.loc 6 146 0
	ldr	r3, [sp]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	mov	r2, r3
	ldr	r1, [sp, #4]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L102
	.loc 6 149 0
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L109
	add	r3, r3, r2
	adds	r3, r3, #8
	b	.L103
.L108:
	.loc 6 145 0
	nop
.L102:
	.loc 6 143 0 discriminator 2
	ldrb	r3, [sp, #15]
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L100:
	.loc 6 143 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L104
.LBE12:
.LBB13:
	.loc 6 151 0 is_stmt 1
	movs	r3, #0
	strb	r3, [sp, #14]
	b	.L105
.L107:
	.loc 6 152 0
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r1, .L109
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L106
	.loc 6 151 0
	ldrb	r3, [sp, #14]
	adds	r3, r3, #1
	strb	r3, [sp, #14]
	b	.L105
.L106:
	.loc 6 154 0
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r1, .L109
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	movs	r2, #1
	strb	r2, [r3]
	.loc 6 155 0
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L109
	add	r3, r3, r2
	adds	r3, r3, #9
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	memcpy
	.loc 6 156 0
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r1, .L109
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #512
	ldr	r2, [sp]
	str	r2, [r3]
	.loc 6 157 0
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L109
	add	r3, r3, r2
	adds	r3, r3, #8
	b	.L103
.L105:
	.loc 6 151 0 discriminator 1
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L107
.LBE13:
	.loc 6 159 0
	movs	r3, #0
.L103:
	.loc 6 160 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI64:
	@ sp needed
	ldr	pc, [sp], #4
.L110:
	.align	2
.L109:
	.word	sd_context
.LFE69:
	.size	ndn_sd_register_get_self_service, .-ndn_sd_register_get_self_service
	.section	.text.ndn_sd_find_neigbor,"ax",%progbits
	.align	1
	.global	ndn_sd_find_neigbor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_find_neigbor, %function
ndn_sd_find_neigbor:
.LFB70:
	.loc 6 164 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI65:
	sub	sp, sp, #12
.LCFI66:
	str	r0, [sp, #4]
	.loc 6 165 0
	ldr	r0, [sp, #4]
	bl	_neighbors_find_neighbor
	mov	r3, r0
	.loc 6 166 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI67:
	@ sp needed
	ldr	pc, [sp], #4
.LFE70:
	.size	ndn_sd_find_neigbor, .-ndn_sd_find_neigbor
	.section	.text.ndn_sd_find_first_service_provider,"ax",%progbits
	.align	1
	.global	ndn_sd_find_first_service_provider
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_find_first_service_provider, %function
ndn_sd_find_first_service_provider:
.LFB71:
	.loc 6 170 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI68:
	sub	sp, sp, #12
.LCFI69:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 6 171 0
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_neighbors_find_first_service_provider
	mov	r3, r0
	.loc 6 172 0
	mov	r0, r3
	add	sp, sp, #12
.LCFI70:
	@ sp needed
	ldr	pc, [sp], #4
.LFE71:
	.size	ndn_sd_find_first_service_provider, .-ndn_sd_find_first_service_provider
	.section .rodata
	.align	2
.LC0:
	.ascii	"SD-ADV\000"
	.section	.text.ndn_sd_prepare_advertisement,"ax",%progbits
	.align	1
	.global	ndn_sd_prepare_advertisement
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_prepare_advertisement, %function
ndn_sd_prepare_advertisement:
.LFB72:
	.loc 6 176 0
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI71:
	sub	sp, sp, #120
.LCFI72:
	str	r0, [sp, #4]
	.loc 6 178 0
	ldr	r1, .L119
	ldr	r0, [sp, #4]
	bl	ndn_interest_from_name
	.loc 6 181 0
	ldr	r3, .L119+4
	str	r3, [sp, #112]
	.loc 6 182 0
	ldr	r0, [sp, #112]
	bl	strlen
	mov	r2, r0
	add	r3, sp, #68
	ldr	r1, [sp, #112]
	mov	r0, r3
	bl	name_component_from_string
	.loc 6 183 0
	ldr	r3, [sp, #4]
	add	r2, sp, #68
	mov	r1, r2
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 184 0
	ldr	r3, [sp, #4]
	ldr	r1, .L119+8
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 187 0
	ldr	r3, [sp, #4]
	add	r1, r3, #460
	add	r3, sp, #56
	movs	r2, #248
	mov	r0, r3
	bl	encoder_init
.LBB14:
	.loc 6 188 0
	movs	r3, #0
	strb	r3, [sp, #119]
	b	.L116
.L118:
	.loc 6 189 0
	ldrb	r2, [sp, #119]	@ zero_extendqisi2
	ldr	r1, .L119
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L117
	.loc 6 190 0
	ldrb	r2, [sp, #119]	@ zero_extendqisi2
	ldr	r1, .L119
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
.LBB15:
	.loc 6 193 0
	ldrb	r2, [sp, #119]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L119
	add	r3, r3, r2
	add	r4, r3, #9
	.loc 6 192 0
	ldrb	r2, [sp, #119]	@ zero_extendqisi2
	ldr	r1, .L119
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #512
	ldr	r3, [r3]
	add	r0, sp, #12
	mov	r2, r4
	movs	r1, #8
	bl	name_component_from_buffer
	.loc 6 195 0
	add	r2, sp, #12
	add	r3, sp, #56
	mov	r1, r2
	mov	r0, r3
	bl	name_component_tlv_encode
.L117:
.LBE15:
	.loc 6 188 0 discriminator 2
	ldrb	r3, [sp, #119]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #119]
.L116:
	.loc 6 188 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #119]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L118
.LBE14:
	.loc 6 198 0 is_stmt 1
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #712]
	.loc 6 199 0
	ldr	r2, [sp, #64]
	ldr	r3, [sp, #4]
	str	r2, [r3, #708]
	.loc 6 200 0
	nop
	add	sp, sp, #120
.LCFI73:
	@ sp needed
	pop	{r4, pc}
.L120:
	.align	2
.L119:
	.word	sd_context
	.word	.LC0
	.word	sd_context+444
.LFE72:
	.size	ndn_sd_prepare_advertisement, .-ndn_sd_prepare_advertisement
	.section .rodata
	.align	2
.LC1:
	.ascii	"SD\000"
	.align	2
.LC2:
	.ascii	"QUERY\000"
	.section	.text.ndn_sd_prepare_query,"ax",%progbits
	.align	1
	.global	ndn_sd_prepare_query
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_prepare_query, %function
ndn_sd_prepare_query:
.LFB73:
	.loc 6 205 0
	@ args = 4, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI74:
	sub	sp, sp, #164
.LCFI75:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 6 206 0
	ldr	r1, .L124
	ldr	r0, [sp, #12]
	bl	ndn_interest_from_name
	.loc 6 208 0
	ldr	r3, .L124+4
	str	r3, [sp, #156]
	.loc 6 209 0
	ldr	r0, [sp, #156]
	bl	strlen
	mov	r2, r0
	add	r3, sp, #108
	ldr	r1, [sp, #156]
	mov	r0, r3
	bl	name_component_from_string
	.loc 6 210 0
	ldr	r3, [sp, #12]
	add	r2, sp, #108
	mov	r1, r2
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 211 0
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 214 0
	ldr	r3, .L124+8
	str	r3, [sp, #152]
	.loc 6 215 0
	ldr	r0, [sp, #152]
	bl	strlen
	mov	r2, r0
	add	r3, sp, #64
	ldr	r1, [sp, #152]
	mov	r0, r3
	bl	name_component_from_string
	.loc 6 216 0
	ldr	r3, [sp, #12]
	add	r2, sp, #64
	mov	r1, r2
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 219 0
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	add	r0, sp, #20
	movs	r1, #8
	bl	name_component_from_buffer
	.loc 6 220 0
	ldr	r3, [sp, #12]
	add	r2, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	ndn_name_append_component
	.loc 6 222 0
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L123
	.loc 6 222 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #168]
	cmp	r3, #0
	beq	.L123
	.loc 6 223 0 is_stmt 1
	ldr	r2, [sp, #168]
	ldr	r1, [sp]
	ldr	r0, [sp, #12]
	bl	ndn_interest_set_Parameters
.L123:
	.loc 6 225 0
	nop
	add	sp, sp, #164
.LCFI76:
	@ sp needed
	ldr	pc, [sp], #4
.L125:
	.align	2
.L124:
	.word	sd_context
	.word	.LC1
	.word	.LC2
.LFE73:
	.size	ndn_sd_prepare_query, .-ndn_sd_prepare_query
	.section	.text.ndn_sd_on_advertisement_process,"ax",%progbits
	.align	1
	.global	ndn_sd_on_advertisement_process
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_on_advertisement_process, %function
ndn_sd_on_advertisement_process:
.LFB74:
	.loc 6 229 0
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI77:
	sub	sp, sp, #76
.LCFI78:
	str	r0, [sp, #4]
	.loc 6 230 0
	ldr	r3, .L132
	ldr	r3, [r3, #440]
	str	r3, [sp, #68]
	.loc 6 233 0
	ldr	r3, [sp, #68]
	adds	r3, r3, #1
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_neighbors_add_neighbor
	str	r0, [sp, #64]
	.loc 6 234 0
	ldr	r3, [sp, #64]
	cmp	r3, #0
	bne	.L127
	.loc 6 235 0
	mvn	r3, #9
	b	.L131
.L127:
	.loc 6 239 0
	ldr	r0, [sp, #64]
	bl	_neighbor_reset_service
	.loc 6 241 0
	ldr	r3, [sp, #4]
	add	r1, r3, #460
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #708]
	add	r3, sp, #52
	mov	r0, r3
	bl	decoder_init
	.loc 6 243 0
	b	.L129
.L130:
	.loc 6 244 0
	add	r2, sp, #8
	add	r3, sp, #52
	mov	r1, r2
	mov	r0, r3
	bl	name_component_tlv_decode
	.loc 6 245 0
	ldr	r2, [sp, #48]
	add	r3, sp, #8
	adds	r1, r3, #4
	movs	r3, #1
	ldr	r0, [sp, #64]
	bl	_neighbor_add_update_service
.L129:
	.loc 6 243 0
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #60]
	cmp	r2, r3
	bne	.L130
	.loc 6 248 0
	movs	r3, #0
.L131:
	.loc 6 249 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #76
.LCFI79:
	@ sp needed
	ldr	pc, [sp], #4
.L133:
	.align	2
.L132:
	.word	sd_context
.LFE74:
	.size	ndn_sd_on_advertisement_process, .-ndn_sd_on_advertisement_process
	.section	.text.ndn_sd_on_query_process,"ax",%progbits
	.align	1
	.global	ndn_sd_on_query_process
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_on_query_process, %function
ndn_sd_on_query_process:
.LFB75:
	.loc 6 253 0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI80:
	sub	sp, sp, #44
.LCFI81:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 6 254 0
	ldr	r3, .L141
	ldr	r3, [r3, #440]
	str	r3, [sp, #28]
	.loc 6 255 0
	movs	r3, #0
	str	r3, [sp, #36]
.LBB16:
	.loc 6 256 0
	movs	r3, #0
	strb	r3, [sp, #35]
	b	.L135
.L138:
	.loc 6 257 0
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	ldr	r1, .L141
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L136
.LBB17:
	.loc 6 258 0
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L141
	add	r3, r3, r2
	add	r4, r3, #9
	ldr	r3, [sp, #28]
	adds	r3, r3, #3
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	adds	r5, r3, #4
	.loc 6 259 0
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	ldr	r1, .L141
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #512
	ldr	r2, [r3]
	ldr	r3, [sp, #28]
	adds	r3, r3, #3
	ldr	r1, [sp, #4]
	movs	r0, #44
	mul	r3, r0, r3
	add	r3, r3, r1
	adds	r3, r3, #40
	ldr	r3, [r3]
	.loc 6 260 0
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	.loc 6 258 0
	mov	r2, r3
	mov	r1, r5
	mov	r0, r4
	bl	memcmp
	str	r0, [sp, #24]
	.loc 6 261 0
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L136
	.loc 6 262 0
	ldrb	r2, [sp, #35]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #480
	ldr	r2, .L141
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r3, [sp, #36]
	.loc 6 263 0
	b	.L137
.L136:
.LBE17:
	.loc 6 256 0 discriminator 2
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #35]
.L135:
	.loc 6 256 0 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #35]	@ zero_extendqisi2
	cmp	r3, #9
	bls	.L138
.L137:
.LBE16:
	.loc 6 268 0 is_stmt 1
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L139
.LBB18:
	.loc 6 271 0
	add	r1, sp, #20
	add	r3, sp, #8
	movs	r2, #3
	mov	r0, r3
	bl	encoder_init
	.loc 6 272 0
	add	r3, sp, #8
	movs	r1, #137
	mov	r0, r3
	bl	encoder_append_type
	.loc 6 273 0
	add	r3, sp, #8
	movs	r1, #1
	mov	r0, r3
	bl	encoder_append_length
	.loc 6 274 0
	ldr	r3, [sp, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r3, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	encoder_append_byte_value
	.loc 6 278 0
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	mov	r0, r2
	mov	r1, r3
	mov	r3, #444
	mov	r2, r3
	bl	memcpy
	.loc 6 279 0
	add	r3, sp, #20
	movs	r2, #3
	mov	r1, r3
	ldr	r0, [sp]
	bl	ndn_data_set_content
	.loc 6 280 0
	movs	r3, #0
	b	.L140
.L139:
.LBE18:
	.loc 6 282 0
	mvn	r3, #50
.L140:
	.loc 6 283 0 discriminator 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI82:
	@ sp needed
	pop	{r4, r5, pc}
.L142:
	.align	2
.L141:
	.word	sd_context
.LFE75:
	.size	ndn_sd_on_query_process, .-ndn_sd_on_query_process
	.section	.text.ndn_sd_on_query_response_process,"ax",%progbits
	.align	1
	.global	ndn_sd_on_query_response_process
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_on_query_response_process, %function
ndn_sd_on_query_response_process:
.LFB76:
	.loc 6 287 0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI83:
	sub	sp, sp, #44
.LCFI84:
	str	r0, [sp, #4]
	.loc 6 288 0
	ldr	r3, .L145
	ldr	r3, [r3, #440]
	str	r3, [sp, #36]
	.loc 6 290 0
	ldr	r3, [sp, #4]
	add	r1, r3, #500
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #756]
	add	r3, sp, #20
	mov	r0, r3
	bl	decoder_init
	.loc 6 293 0
	add	r2, sp, #16
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_type
	.loc 6 294 0
	add	r2, sp, #16
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_length
	.loc 6 295 0
	add	r2, sp, #15
	add	r3, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	decoder_get_byte_value
	.loc 6 298 0
	ldr	r3, [sp, #36]
	adds	r3, r3, #1
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_neighbors_add_neighbor
	str	r0, [sp, #32]
	.loc 6 301 0
	ldr	r3, [sp, #36]
	adds	r3, r3, #3
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	adds	r0, r3, #4
	.loc 6 302 0
	ldr	r3, [sp, #36]
	adds	r3, r3, #3
	.loc 6 301 0
	ldr	r2, [sp, #4]
	movs	r1, #44
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r1, r0
	ldr	r0, [sp, #32]
	bl	_neighbor_add_update_service
	.loc 6 305 0
	movs	r3, #0
	.loc 6 306 0
	mov	r0, r3
	add	sp, sp, #44
.LCFI85:
	@ sp needed
	ldr	pc, [sp], #4
.L146:
	.align	2
.L145:
	.word	sd_context
.LFE76:
	.size	ndn_sd_on_query_response_process, .-ndn_sd_on_query_response_process
	.section	.text.ndn_sd_on_query_timeout_process,"ax",%progbits
	.align	1
	.global	ndn_sd_on_query_timeout_process
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ndn_sd_on_query_timeout_process, %function
ndn_sd_on_query_timeout_process:
.LFB77:
	.loc 6 310 0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI86:
	sub	sp, sp, #20
.LCFI87:
	str	r0, [sp, #4]
	.loc 6 311 0
	ldr	r3, .L149
	ldr	r3, [r3, #440]
	str	r3, [sp, #12]
	.loc 6 312 0
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	mov	r0, r3
	bl	_neighbors_remove_neighbor
	.loc 6 313 0
	movs	r3, #0
	.loc 6 314 0
	mov	r0, r3
	add	sp, sp, #20
.LCFI88:
	@ sp needed
	ldr	pc, [sp], #4
.L150:
	.align	2
.L149:
	.word	sd_context
.LFE77:
	.size	ndn_sd_on_query_timeout_process, .-ndn_sd_on_query_timeout_process
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x10
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI8-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI11-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI13-.LFB16
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI15-.LFB17
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI17-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI20-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI23-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI25-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI28-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI31-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI34-.LFB48
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI37-.LFB59
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI40-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI42-.LFB62
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI45-.LFB63
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI48-.LFB64
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI51-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI54-.LFB66
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI56-.LFB67
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI59-.LFB68
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI62-.LFB69
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI65-.LFB70
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI68-.LFB71
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI71-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI74-.LFB73
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0xa8
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI77-.LFB74
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI80-.LFB75
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI83-.LFB76
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI86-.LFB77
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE62:
	.text
.Letext0:
	.file 7 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\tlv.h"
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stdint.h"
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/__crossworks.h"
	.file 10 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\name.h"
	.file 11 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\signature.h"
	.file 12 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\encode\\metainfo.h"
	.file 13 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/sec-lib/tinycrypt/tc_ecc.h"
	.file 14 "C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\app-support\\service-discovery.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1729
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1187
	.byte	0xc
	.4byte	.LASF1188
	.4byte	.LASF1189
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0xf1
	.byte	0x7
	.byte	0x11
	.4byte	0xf1
	.uleb128 0x3
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF894
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF895
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF896
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF897
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF898
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF899
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF900
	.byte	0x21
	.uleb128 0x3
	.4byte	.LASF901
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF902
	.byte	0x1e
	.uleb128 0x3
	.4byte	.LASF903
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF904
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF905
	.byte	0x22
	.uleb128 0x3
	.4byte	.LASF906
	.byte	0x23
	.uleb128 0x3
	.4byte	.LASF907
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF908
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF909
	.byte	0x16
	.uleb128 0x3
	.4byte	.LASF910
	.byte	0x17
	.uleb128 0x3
	.4byte	.LASF911
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF912
	.byte	0x19
	.uleb128 0x3
	.4byte	.LASF913
	.byte	0x1a
	.uleb128 0x3
	.4byte	.LASF914
	.byte	0x1b
	.uleb128 0x3
	.4byte	.LASF915
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF916
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF917
	.byte	0x1f
	.uleb128 0x3
	.4byte	.LASF918
	.byte	0x1e
	.uleb128 0x3
	.4byte	.LASF919
	.byte	0xfd
	.uleb128 0x3
	.4byte	.LASF920
	.byte	0xfe
	.uleb128 0x3
	.4byte	.LASF921
	.byte	0xff
	.uleb128 0x3
	.4byte	.LASF922
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF923
	.byte	0x3d
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF949
	.uleb128 0x5
	.4byte	0xf1
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0xf1
	.byte	0x7
	.byte	0x45
	.4byte	0x1a1
	.uleb128 0x3
	.4byte	.LASF924
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF925
	.byte	0x80
	.uleb128 0x3
	.4byte	.LASF926
	.byte	0x82
	.uleb128 0x3
	.4byte	.LASF927
	.byte	0x83
	.uleb128 0x3
	.4byte	.LASF928
	.byte	0x84
	.uleb128 0x3
	.4byte	.LASF929
	.byte	0x85
	.uleb128 0x3
	.4byte	.LASF930
	.byte	0x86
	.uleb128 0x3
	.4byte	.LASF931
	.byte	0x87
	.uleb128 0x3
	.4byte	.LASF932
	.byte	0x88
	.uleb128 0x3
	.4byte	.LASF933
	.byte	0x89
	.uleb128 0x3
	.4byte	.LASF934
	.byte	0x8a
	.uleb128 0x3
	.4byte	.LASF935
	.byte	0x8b
	.uleb128 0x3
	.4byte	.LASF936
	.byte	0x8c
	.uleb128 0x3
	.4byte	.LASF937
	.byte	0x8d
	.uleb128 0x3
	.4byte	.LASF938
	.byte	0x8e
	.uleb128 0x3
	.4byte	.LASF939
	.byte	0x8f
	.uleb128 0x3
	.4byte	.LASF940
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF941
	.byte	0x91
	.uleb128 0x3
	.4byte	.LASF942
	.byte	0x92
	.uleb128 0x3
	.4byte	.LASF943
	.byte	0x93
	.uleb128 0x3
	.4byte	.LASF944
	.byte	0x94
	.uleb128 0x3
	.4byte	.LASF945
	.byte	0x95
	.uleb128 0x3
	.4byte	.LASF946
	.byte	0x96
	.uleb128 0x3
	.4byte	.LASF947
	.byte	0x97
	.uleb128 0x3
	.4byte	.LASF948
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.4byte	.LASF951
	.byte	0x8
	.byte	0x2f
	.4byte	0x1ac
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF950
	.uleb128 0x6
	.4byte	.LASF952
	.byte	0x8
	.byte	0x30
	.4byte	0xf1
	.uleb128 0x5
	.4byte	0x1b3
	.uleb128 0x6
	.4byte	.LASF953
	.byte	0x8
	.byte	0x35
	.4byte	0x1ce
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF954
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF955
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.4byte	.LASF956
	.byte	0x8
	.byte	0x38
	.4byte	0x1ee
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF957
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF958
	.uleb128 0x6
	.4byte	.LASF959
	.byte	0x8
	.byte	0x45
	.4byte	0x207
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF960
	.uleb128 0x8
	.4byte	.LASF1011
	.byte	0x8
	.byte	0x9
	.byte	0x7e
	.4byte	0x233
	.uleb128 0x9
	.4byte	.LASF961
	.byte	0x9
	.byte	0x7f
	.4byte	0x1dc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF962
	.byte	0x9
	.byte	0x80
	.4byte	0x233
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF963
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x253
	.uleb128 0xb
	.4byte	0x253
	.uleb128 0xb
	.4byte	0x1ee
	.uleb128 0xb
	.4byte	0x265
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x259
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF964
	.uleb128 0x5
	.4byte	0x259
	.uleb128 0xc
	.byte	0x4
	.4byte	0x20e
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x289
	.uleb128 0xb
	.4byte	0x289
	.uleb128 0xb
	.4byte	0x28f
	.uleb128 0xb
	.4byte	0x1ee
	.uleb128 0xb
	.4byte	0x265
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0xc
	.byte	0x4
	.4byte	0x260
	.uleb128 0xd
	.byte	0x58
	.byte	0x9
	.byte	0x86
	.4byte	0x41e
	.uleb128 0x9
	.4byte	.LASF965
	.byte	0x9
	.byte	0x88
	.4byte	0x28f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF966
	.byte	0x9
	.byte	0x89
	.4byte	0x28f
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF967
	.byte	0x9
	.byte	0x8a
	.4byte	0x28f
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF968
	.byte	0x9
	.byte	0x8c
	.4byte	0x28f
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF969
	.byte	0x9
	.byte	0x8d
	.4byte	0x28f
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF970
	.byte	0x9
	.byte	0x8e
	.4byte	0x28f
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF971
	.byte	0x9
	.byte	0x8f
	.4byte	0x28f
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF972
	.byte	0x9
	.byte	0x90
	.4byte	0x28f
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF973
	.byte	0x9
	.byte	0x91
	.4byte	0x28f
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF974
	.byte	0x9
	.byte	0x92
	.4byte	0x28f
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF975
	.byte	0x9
	.byte	0x94
	.4byte	0x259
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF976
	.byte	0x9
	.byte	0x95
	.4byte	0x259
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF977
	.byte	0x9
	.byte	0x96
	.4byte	0x259
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF978
	.byte	0x9
	.byte	0x97
	.4byte	0x259
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF979
	.byte	0x9
	.byte	0x98
	.4byte	0x259
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF980
	.byte	0x9
	.byte	0x99
	.4byte	0x259
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF981
	.byte	0x9
	.byte	0x9a
	.4byte	0x259
	.byte	0x2e
	.uleb128 0x9
	.4byte	.LASF982
	.byte	0x9
	.byte	0x9b
	.4byte	0x259
	.byte	0x2f
	.uleb128 0x9
	.4byte	.LASF983
	.byte	0x9
	.byte	0x9c
	.4byte	0x259
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF984
	.byte	0x9
	.byte	0x9d
	.4byte	0x259
	.byte	0x31
	.uleb128 0x9
	.4byte	.LASF985
	.byte	0x9
	.byte	0x9e
	.4byte	0x259
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF986
	.byte	0x9
	.byte	0x9f
	.4byte	0x259
	.byte	0x33
	.uleb128 0x9
	.4byte	.LASF987
	.byte	0x9
	.byte	0xa0
	.4byte	0x259
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF988
	.byte	0x9
	.byte	0xa1
	.4byte	0x259
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF989
	.byte	0x9
	.byte	0xa6
	.4byte	0x28f
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF990
	.byte	0x9
	.byte	0xa7
	.4byte	0x28f
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF991
	.byte	0x9
	.byte	0xa8
	.4byte	0x28f
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF992
	.byte	0x9
	.byte	0xa9
	.4byte	0x28f
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF993
	.byte	0x9
	.byte	0xaa
	.4byte	0x28f
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF994
	.byte	0x9
	.byte	0xab
	.4byte	0x28f
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF995
	.byte	0x9
	.byte	0xac
	.4byte	0x28f
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF996
	.byte	0x9
	.byte	0xad
	.4byte	0x28f
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.4byte	.LASF997
	.byte	0x9
	.byte	0xae
	.4byte	0x295
	.uleb128 0x5
	.4byte	0x41e
	.uleb128 0xd
	.byte	0x20
	.byte	0x9
	.byte	0xc4
	.4byte	0x497
	.uleb128 0x9
	.4byte	.LASF998
	.byte	0x9
	.byte	0xc6
	.4byte	0x4ab
	.byte	0
	.uleb128 0x9
	.4byte	.LASF999
	.byte	0x9
	.byte	0xc7
	.4byte	0x4c0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1000
	.byte	0x9
	.byte	0xc8
	.4byte	0x4c0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF1001
	.byte	0x9
	.byte	0xcb
	.4byte	0x4da
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF1002
	.byte	0x9
	.byte	0xcc
	.4byte	0x4ef
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF1003
	.byte	0x9
	.byte	0xcd
	.4byte	0x4ef
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF1004
	.byte	0x9
	.byte	0xd0
	.4byte	0x4f5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF1005
	.byte	0x9
	.byte	0xd1
	.4byte	0x4fb
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x4ab
	.uleb128 0xb
	.4byte	0x1dc
	.uleb128 0xb
	.4byte	0x1dc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x497
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x4c0
	.uleb128 0xb
	.4byte	0x1dc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4b1
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x4da
	.uleb128 0xb
	.4byte	0x233
	.uleb128 0xb
	.4byte	0x1dc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0xa
	.4byte	0x233
	.4byte	0x4ef
	.uleb128 0xb
	.4byte	0x233
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4e0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x26b
	.uleb128 0x6
	.4byte	.LASF1006
	.byte	0x9
	.byte	0xd2
	.4byte	0x42e
	.uleb128 0x5
	.4byte	0x501
	.uleb128 0xd
	.byte	0xc
	.byte	0x9
	.byte	0xd4
	.4byte	0x53e
	.uleb128 0x9
	.4byte	.LASF1007
	.byte	0x9
	.byte	0xd5
	.4byte	0x28f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1008
	.byte	0x9
	.byte	0xd6
	.4byte	0x53e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1009
	.byte	0x9
	.byte	0xd7
	.4byte	0x544
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x429
	.uleb128 0xc
	.byte	0x4
	.4byte	0x50c
	.uleb128 0x6
	.4byte	.LASF1010
	.byte	0x9
	.byte	0xd8
	.4byte	0x511
	.uleb128 0x5
	.4byte	0x54a
	.uleb128 0x8
	.4byte	.LASF1012
	.byte	0x14
	.byte	0x9
	.byte	0xdc
	.4byte	0x573
	.uleb128 0x9
	.4byte	.LASF1013
	.byte	0x9
	.byte	0xdd
	.4byte	0x573
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x583
	.4byte	0x583
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x555
	.uleb128 0x10
	.4byte	.LASF1014
	.byte	0x9
	.2byte	0x106
	.4byte	0x55a
	.uleb128 0x10
	.4byte	.LASF1015
	.byte	0x9
	.2byte	0x10d
	.4byte	0x555
	.uleb128 0x10
	.4byte	.LASF1016
	.byte	0x9
	.2byte	0x110
	.4byte	0x50c
	.uleb128 0x10
	.4byte	.LASF1017
	.byte	0x9
	.2byte	0x111
	.4byte	0x50c
	.uleb128 0xe
	.4byte	0xf8
	.4byte	0x5c9
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.4byte	0x5b9
	.uleb128 0x10
	.4byte	.LASF1018
	.byte	0x9
	.2byte	0x113
	.4byte	0x5c9
	.uleb128 0xe
	.4byte	0x260
	.4byte	0x5e5
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.4byte	0x5da
	.uleb128 0x10
	.4byte	.LASF1019
	.byte	0x9
	.2byte	0x115
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1020
	.byte	0x9
	.2byte	0x116
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1021
	.byte	0x9
	.2byte	0x117
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1022
	.byte	0x9
	.2byte	0x118
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1023
	.byte	0x9
	.2byte	0x11a
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1024
	.byte	0x9
	.2byte	0x11b
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1025
	.byte	0x9
	.2byte	0x11c
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1026
	.byte	0x9
	.2byte	0x11d
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1027
	.byte	0x9
	.2byte	0x11e
	.4byte	0x5e5
	.uleb128 0x10
	.4byte	.LASF1028
	.byte	0x9
	.2byte	0x11f
	.4byte	0x5e5
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x671
	.uleb128 0xb
	.4byte	0x671
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x67c
	.uleb128 0x12
	.4byte	.LASF1190
	.uleb128 0x5
	.4byte	0x677
	.uleb128 0x10
	.4byte	.LASF1029
	.byte	0x9
	.2byte	0x135
	.4byte	0x68d
	.uleb128 0xc
	.byte	0x4
	.4byte	0x662
	.uleb128 0xa
	.4byte	0x1dc
	.4byte	0x6a2
	.uleb128 0xb
	.4byte	0x6a2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x677
	.uleb128 0x10
	.4byte	.LASF1030
	.byte	0x9
	.2byte	0x136
	.4byte	0x6b4
	.uleb128 0xc
	.byte	0x4
	.4byte	0x693
	.uleb128 0x13
	.4byte	.LASF1031
	.byte	0x9
	.2byte	0x14d
	.4byte	0x6c6
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0xa
	.4byte	0x28f
	.4byte	0x6db
	.uleb128 0xb
	.4byte	0x1dc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1032
	.byte	0x8
	.byte	0x9
	.2byte	0x14f
	.4byte	0x703
	.uleb128 0x15
	.4byte	.LASF1033
	.byte	0x9
	.2byte	0x151
	.4byte	0x6ba
	.byte	0
	.uleb128 0x15
	.4byte	.LASF1034
	.byte	0x9
	.2byte	0x152
	.4byte	0x703
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6db
	.uleb128 0x13
	.4byte	.LASF1035
	.byte	0x9
	.2byte	0x153
	.4byte	0x6db
	.uleb128 0x10
	.4byte	.LASF1036
	.byte	0x9
	.2byte	0x157
	.4byte	0x721
	.uleb128 0xc
	.byte	0x4
	.4byte	0x709
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1b3
	.uleb128 0x8
	.4byte	.LASF1037
	.byte	0xc
	.byte	0x1
	.byte	0x1f
	.4byte	0x75e
	.uleb128 0x9
	.4byte	.LASF1038
	.byte	0x1
	.byte	0x23
	.4byte	0x727
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1039
	.byte	0x1
	.byte	0x27
	.4byte	0x1e3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1040
	.byte	0x1
	.byte	0x2b
	.4byte	0x1e3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1041
	.byte	0x1
	.byte	0x2c
	.4byte	0x72d
	.uleb128 0x8
	.4byte	.LASF1042
	.byte	0xc
	.byte	0x2
	.byte	0x15
	.4byte	0x79a
	.uleb128 0x9
	.4byte	.LASF1043
	.byte	0x2
	.byte	0x19
	.4byte	0x79a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1044
	.byte	0x2
	.byte	0x1d
	.4byte	0x1e3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1040
	.byte	0x2
	.byte	0x21
	.4byte	0x1e3
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1be
	.uleb128 0x6
	.4byte	.LASF1045
	.byte	0x2
	.byte	0x22
	.4byte	0x769
	.uleb128 0x8
	.4byte	.LASF1046
	.byte	0x2c
	.byte	0x3
	.byte	0x17
	.4byte	0x7dc
	.uleb128 0x9
	.4byte	.LASF1047
	.byte	0x3
	.byte	0x1b
	.4byte	0x1e3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1048
	.byte	0x3
	.byte	0x1f
	.4byte	0x7dc
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1049
	.byte	0x3
	.byte	0x23
	.4byte	0x1e3
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0x7ec
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x23
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1050
	.byte	0x3
	.byte	0x24
	.4byte	0x7ab
	.uleb128 0x5
	.4byte	0x7ec
	.uleb128 0x16
	.4byte	.LASF1051
	.2byte	0x1bc
	.byte	0xa
	.byte	0x17
	.4byte	0x823
	.uleb128 0x9
	.4byte	.LASF1052
	.byte	0xa
	.byte	0x1b
	.4byte	0x823
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1053
	.byte	0xa
	.byte	0x1f
	.4byte	0x1e3
	.2byte	0x1b8
	.byte	0
	.uleb128 0xe
	.4byte	0x7ec
	.4byte	0x833
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1054
	.byte	0xa
	.byte	0x20
	.4byte	0x7fc
	.uleb128 0x5
	.4byte	0x833
	.uleb128 0x8
	.4byte	.LASF1055
	.byte	0x1e
	.byte	0xb
	.byte	0x15
	.4byte	0x868
	.uleb128 0x9
	.4byte	.LASF1056
	.byte	0xb
	.byte	0x19
	.4byte	0x868
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1057
	.byte	0xb
	.byte	0x1d
	.4byte	0x868
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0x878
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1058
	.byte	0xb
	.byte	0x1e
	.4byte	0x843
	.uleb128 0x16
	.4byte	.LASF1059
	.2byte	0x278
	.byte	0xb
	.byte	0x24
	.4byte	0x91c
	.uleb128 0x9
	.4byte	.LASF1060
	.byte	0xb
	.byte	0x28
	.4byte	0x1b3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1061
	.byte	0xb
	.byte	0x2c
	.4byte	0x91c
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF1062
	.byte	0xb
	.byte	0x30
	.4byte	0x1e3
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF1063
	.byte	0xb
	.byte	0x34
	.4byte	0x833
	.byte	0x88
	.uleb128 0x17
	.4byte	.LASF1064
	.byte	0xb
	.byte	0x38
	.4byte	0x1b3
	.2byte	0x244
	.uleb128 0x17
	.4byte	.LASF1065
	.byte	0xb
	.byte	0x39
	.4byte	0x1e3
	.2byte	0x248
	.uleb128 0x17
	.4byte	.LASF1066
	.byte	0xb
	.byte	0x3d
	.4byte	0x1b3
	.2byte	0x24c
	.uleb128 0x17
	.4byte	.LASF1067
	.byte	0xb
	.byte	0x3e
	.4byte	0x1fc
	.2byte	0x250
	.uleb128 0x17
	.4byte	.LASF1068
	.byte	0xb
	.byte	0x42
	.4byte	0x878
	.2byte	0x258
	.uleb128 0x17
	.4byte	.LASF1069
	.byte	0xb
	.byte	0x44
	.4byte	0x1b3
	.2byte	0x276
	.uleb128 0x17
	.4byte	.LASF1070
	.byte	0xb
	.byte	0x45
	.4byte	0x1b3
	.2byte	0x277
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0x92c
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1071
	.byte	0xb
	.byte	0x46
	.4byte	0x883
	.uleb128 0x8
	.4byte	.LASF1072
	.byte	0xfc
	.byte	0x4
	.byte	0x17
	.4byte	0x95c
	.uleb128 0x9
	.4byte	.LASF1048
	.byte	0x4
	.byte	0x18
	.4byte	0x95c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1049
	.byte	0x4
	.byte	0x19
	.4byte	0x1e3
	.byte	0xf8
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0x96c
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0xf7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1073
	.byte	0x4
	.byte	0x1a
	.4byte	0x937
	.uleb128 0x16
	.4byte	.LASF1074
	.2byte	0x548
	.byte	0x4
	.byte	0x1f
	.4byte	0xa13
	.uleb128 0x9
	.4byte	.LASF1007
	.byte	0x4
	.byte	0x23
	.4byte	0x833
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1075
	.byte	0x4
	.byte	0x27
	.4byte	0x1e3
	.2byte	0x1bc
	.uleb128 0x17
	.4byte	.LASF1076
	.byte	0x4
	.byte	0x2b
	.4byte	0x1fc
	.2byte	0x1c0
	.uleb128 0x17
	.4byte	.LASF1077
	.byte	0x4
	.byte	0x2d
	.4byte	0x1b3
	.2byte	0x1c8
	.uleb128 0x17
	.4byte	.LASF1078
	.byte	0x4
	.byte	0x2e
	.4byte	0x1b3
	.2byte	0x1c9
	.uleb128 0x17
	.4byte	.LASF1079
	.byte	0x4
	.byte	0x33
	.4byte	0x96c
	.2byte	0x1cc
	.uleb128 0x17
	.4byte	.LASF1080
	.byte	0x4
	.byte	0x34
	.4byte	0x1b3
	.2byte	0x2c8
	.uleb128 0x17
	.4byte	.LASF1081
	.byte	0x4
	.byte	0x39
	.4byte	0x1b3
	.2byte	0x2c9
	.uleb128 0x17
	.4byte	.LASF1082
	.byte	0x4
	.byte	0x3a
	.4byte	0x1b3
	.2byte	0x2ca
	.uleb128 0x17
	.4byte	.LASF1083
	.byte	0x4
	.byte	0x3c
	.4byte	0x1b3
	.2byte	0x2cb
	.uleb128 0x17
	.4byte	.LASF1084
	.byte	0x4
	.byte	0x40
	.4byte	0x92c
	.2byte	0x2d0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1085
	.byte	0x4
	.byte	0x41
	.4byte	0x977
	.uleb128 0x5
	.4byte	0xa13
	.uleb128 0x8
	.4byte	.LASF1086
	.byte	0x38
	.byte	0xc
	.byte	0x15
	.4byte	0xa78
	.uleb128 0x9
	.4byte	.LASF1087
	.byte	0xc
	.byte	0x19
	.4byte	0x1b3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1088
	.byte	0xc
	.byte	0x1d
	.4byte	0x1e3
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF1089
	.byte	0xc
	.byte	0x21
	.4byte	0x7ec
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF1090
	.byte	0xc
	.byte	0x23
	.4byte	0x1b3
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF1091
	.byte	0xc
	.byte	0x24
	.4byte	0x1b3
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF1092
	.byte	0xc
	.byte	0x25
	.4byte	0x1b3
	.byte	0x36
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1093
	.byte	0xc
	.byte	0x26
	.4byte	0xa23
	.uleb128 0x6
	.4byte	.LASF1094
	.byte	0xd
	.byte	0x59
	.4byte	0x1a1
	.uleb128 0x6
	.4byte	.LASF1095
	.byte	0xd
	.byte	0x5a
	.4byte	0x1c3
	.uleb128 0x6
	.4byte	.LASF1096
	.byte	0xd
	.byte	0x5e
	.4byte	0x1ee
	.uleb128 0x5
	.4byte	0xa99
	.uleb128 0x6
	.4byte	.LASF1097
	.byte	0xd
	.byte	0x6f
	.4byte	0xab4
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb37
	.uleb128 0x8
	.4byte	.LASF1098
	.byte	0xb0
	.byte	0xd
	.byte	0x70
	.4byte	0xb37
	.uleb128 0x9
	.4byte	.LASF1099
	.byte	0xd
	.byte	0x71
	.4byte	0xa83
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1100
	.byte	0xd
	.byte	0x72
	.4byte	0xa83
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF1101
	.byte	0xd
	.byte	0x73
	.4byte	0xa8e
	.byte	0x2
	.uleb128 0x18
	.ascii	"p\000"
	.byte	0xd
	.byte	0x74
	.4byte	0xb3c
	.byte	0x4
	.uleb128 0x18
	.ascii	"n\000"
	.byte	0xd
	.byte	0x75
	.4byte	0xb3c
	.byte	0x24
	.uleb128 0x18
	.ascii	"G\000"
	.byte	0xd
	.byte	0x76
	.4byte	0xb4c
	.byte	0x44
	.uleb128 0x18
	.ascii	"b\000"
	.byte	0xd
	.byte	0x77
	.4byte	0xb3c
	.byte	0x84
	.uleb128 0x9
	.4byte	.LASF1102
	.byte	0xd
	.byte	0x78
	.4byte	0xb7c
	.byte	0xa4
	.uleb128 0x9
	.4byte	.LASF1103
	.byte	0xd
	.byte	0x7a
	.4byte	0xb9d
	.byte	0xa8
	.uleb128 0x9
	.4byte	.LASF1104
	.byte	0xd
	.byte	0x7b
	.4byte	0xbb3
	.byte	0xac
	.byte	0
	.uleb128 0x5
	.4byte	0xaba
	.uleb128 0xe
	.4byte	0xa99
	.4byte	0xb4c
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0xa99
	.4byte	0xb5c
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xaa9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa99
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb5c
	.uleb128 0x19
	.4byte	0xb97
	.uleb128 0xb
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xb97
	.uleb128 0xb
	.4byte	0xaa9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xaa4
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb82
	.uleb128 0x19
	.4byte	0xbb3
	.uleb128 0xb
	.4byte	0xb76
	.uleb128 0xb
	.4byte	0xb76
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xba3
	.uleb128 0x1a
	.4byte	.LASF1124
	.byte	0xd
	.byte	0xa1
	.4byte	0xb37
	.uleb128 0x5
	.byte	0x3
	.4byte	curve_secp256r1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x16
	.4byte	.LASF1105
	.2byte	0x570
	.byte	0x5
	.byte	0x1e
	.4byte	0xc1e
	.uleb128 0x9
	.4byte	.LASF1007
	.byte	0x5
	.byte	0x22
	.4byte	0x833
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1106
	.byte	0x5
	.byte	0x26
	.4byte	0xa78
	.2byte	0x1bc
	.uleb128 0x17
	.4byte	.LASF1107
	.byte	0x5
	.byte	0x2a
	.4byte	0xc1e
	.2byte	0x1f4
	.uleb128 0x17
	.4byte	.LASF1108
	.byte	0x5
	.byte	0x2e
	.4byte	0x1e3
	.2byte	0x2f4
	.uleb128 0x17
	.4byte	.LASF1084
	.byte	0x5
	.byte	0x34
	.4byte	0x92c
	.2byte	0x2f8
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0xc2e
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1109
	.byte	0x5
	.byte	0x35
	.4byte	0xbd0
	.uleb128 0x5
	.4byte	0xc2e
	.uleb128 0x8
	.4byte	.LASF1110
	.byte	0x1c
	.byte	0xe
	.byte	0x17
	.4byte	0xc6f
	.uleb128 0x9
	.4byte	.LASF1111
	.byte	0xe
	.byte	0x1b
	.4byte	0x1b3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1112
	.byte	0xe
	.byte	0x1f
	.4byte	0xc6f
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF1113
	.byte	0xe
	.byte	0x23
	.4byte	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0xc7f
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1114
	.byte	0xe
	.byte	0x24
	.4byte	0xc3e
	.uleb128 0x16
	.4byte	.LASF1115
	.2byte	0x144
	.byte	0xe
	.byte	0x29
	.4byte	0xcb0
	.uleb128 0x9
	.4byte	.LASF1116
	.byte	0xe
	.byte	0x2d
	.4byte	0x7ec
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1117
	.byte	0xe
	.byte	0x31
	.4byte	0xcb0
	.byte	0x2c
	.byte	0
	.uleb128 0xe
	.4byte	0xc7f
	.4byte	0xcc0
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1118
	.byte	0xe
	.byte	0x32
	.4byte	0xc8a
	.uleb128 0x16
	.4byte	.LASF1119
	.2byte	0xfa8
	.byte	0xe
	.byte	0x37
	.4byte	0xcff
	.uleb128 0x9
	.4byte	.LASF1120
	.byte	0xe
	.byte	0x3b
	.4byte	0x833
	.byte	0
	.uleb128 0x17
	.4byte	.LASF1121
	.byte	0xe
	.byte	0x3f
	.4byte	0xcc0
	.2byte	0x1bc
	.uleb128 0x17
	.4byte	.LASF1122
	.byte	0xe
	.byte	0x43
	.4byte	0xcff
	.2byte	0x300
	.byte	0
	.uleb128 0xe
	.4byte	0xcc0
	.4byte	0xd0f
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF1123
	.byte	0xe
	.byte	0x44
	.4byte	0xccb
	.uleb128 0x1a
	.4byte	.LASF1125
	.byte	0x6
	.byte	0xd
	.4byte	0xd0f
	.uleb128 0x5
	.byte	0x3
	.4byte	sd_context
	.uleb128 0x1b
	.4byte	.LASF1127
	.byte	0x6
	.2byte	0x135
	.4byte	0x1dc
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd64
	.uleb128 0x1c
	.4byte	.LASF1129
	.byte	0x6
	.2byte	0x135
	.4byte	0xd64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LASF1126
	.byte	0x6
	.2byte	0x137
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa1e
	.uleb128 0x1b
	.4byte	.LASF1128
	.byte	0x6
	.2byte	0x11e
	.4byte	0x1dc
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddf
	.uleb128 0x1c
	.4byte	.LASF1130
	.byte	0x6
	.2byte	0x11e
	.4byte	0xddf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.4byte	.LASF1126
	.byte	0x6
	.2byte	0x120
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LASF1131
	.byte	0x6
	.2byte	0x121
	.4byte	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	.LASF1132
	.byte	0x6
	.2byte	0x123
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF1111
	.byte	0x6
	.2byte	0x124
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1d
	.4byte	.LASF1133
	.byte	0x6
	.2byte	0x12a
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc39
	.uleb128 0xc
	.byte	0x4
	.4byte	0xcc0
	.uleb128 0x1e
	.4byte	.LASF1134
	.byte	0x6
	.byte	0xfc
	.4byte	0x1dc
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe97
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x6
	.byte	0xfc
	.4byte	0xd64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.4byte	.LASF1130
	.byte	0x6
	.byte	0xfc
	.4byte	0xe97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.4byte	.LASF1126
	.byte	0x6
	.byte	0xfe
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF1135
	.byte	0x6
	.byte	0xff
	.4byte	0xe9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0xe6e
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x6
	.2byte	0x100
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x22
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x21
	.ascii	"r\000"
	.byte	0x6
	.2byte	0x102
	.4byte	0x1dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.uleb128 0x1d
	.4byte	.LASF1136
	.byte	0x6
	.2byte	0x10d
	.4byte	0xea3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF1137
	.byte	0x6
	.2byte	0x10e
	.4byte	0x75e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc2e
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc7f
	.uleb128 0xe
	.4byte	0x1b3
	.4byte	0xeb3
	.uleb128 0xf
	.4byte	0x1ee
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1138
	.byte	0x6
	.byte	0xe4
	.4byte	0x1dc
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf15
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x6
	.byte	0xe4
	.4byte	0xd64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.4byte	.LASF1126
	.byte	0x6
	.byte	0xe6
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF1135
	.byte	0x6
	.byte	0xe9
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF1131
	.byte	0x6
	.byte	0xf0
	.4byte	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF1139
	.byte	0x6
	.byte	0xf2
	.4byte	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x23
	.4byte	.LASF1149
	.byte	0x6
	.byte	0xcb
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfbd
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x6
	.byte	0xcb
	.4byte	0xfbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1f
	.4byte	.LASF1140
	.byte	0x6
	.byte	0xcb
	.4byte	0xfc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.4byte	.LASF1141
	.byte	0x6
	.byte	0xcb
	.4byte	0xe9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.4byte	.LASF1142
	.byte	0x6
	.byte	0xcc
	.4byte	0x79a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.4byte	.LASF1143
	.byte	0x6
	.byte	0xcc
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.4byte	.LASF1144
	.byte	0x6
	.byte	0xcf
	.4byte	0x7ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.4byte	.LASF1145
	.byte	0x6
	.byte	0xd0
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF1146
	.byte	0x6
	.byte	0xd5
	.4byte	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.4byte	.LASF1147
	.byte	0x6
	.byte	0xd6
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF1148
	.byte	0x6
	.byte	0xda
	.4byte	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa13
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7ec
	.uleb128 0x23
	.4byte	.LASF1150
	.byte	0x6
	.byte	0xaf
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1048
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x6
	.byte	0xaf
	.4byte	0xfbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1a
	.4byte	.LASF1144
	.byte	0x6
	.byte	0xb4
	.4byte	0x7ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.4byte	.LASF1145
	.byte	0x6
	.byte	0xb5
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF1137
	.byte	0x6
	.byte	0xba
	.4byte	0x75e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0xbc
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x22
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1a
	.4byte	.LASF1151
	.byte	0x6
	.byte	0xbf
	.4byte	0x7ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1152
	.byte	0x6
	.byte	0xa9
	.4byte	0xde5
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107e
	.uleb128 0x1f
	.4byte	.LASF1112
	.byte	0x6
	.byte	0xa9
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x6
	.byte	0xa9
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF1153
	.byte	0x6
	.byte	0xa3
	.4byte	0xde5
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10a5
	.uleb128 0x25
	.ascii	"id\000"
	.byte	0x6
	.byte	0xa3
	.4byte	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7f7
	.uleb128 0x1e
	.4byte	.LASF1154
	.byte	0x6
	.byte	0x8d
	.4byte	0xe9d
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1111
	.uleb128 0x1f
	.4byte	.LASF1155
	.byte	0x6
	.byte	0x8d
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x6
	.byte	0x8d
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x10fa
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x8f
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x22
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x97
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF1156
	.byte	0x6
	.byte	0x81
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1159
	.uleb128 0x1f
	.4byte	.LASF1120
	.byte	0x6
	.byte	0x81
	.4byte	0x1159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF1157
	.byte	0x6
	.byte	0x81
	.4byte	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x87
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x83e
	.uleb128 0x26
	.4byte	.LASF1158
	.byte	0x6
	.byte	0x73
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1190
	.uleb128 0x25
	.ascii	"id\000"
	.byte	0x6
	.byte	0x73
	.4byte	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF1133
	.byte	0x6
	.byte	0x75
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1159
	.byte	0x6
	.byte	0x6a
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ca
	.uleb128 0x1f
	.4byte	.LASF1133
	.byte	0x6
	.byte	0x6a
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x6c
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1160
	.byte	0x6
	.byte	0x58
	.4byte	0xde5
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122c
	.uleb128 0x1f
	.4byte	.LASF1112
	.byte	0x6
	.byte	0x58
	.4byte	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x6
	.byte	0x58
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x5a
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x22
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x24
	.ascii	"j\000"
	.byte	0x6
	.byte	0x5d
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1161
	.byte	0x6
	.byte	0x3d
	.4byte	0x1dc
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12ae
	.uleb128 0x1f
	.4byte	.LASF1133
	.byte	0x6
	.byte	0x3d
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1112
	.byte	0x6
	.byte	0x3e
	.4byte	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x6
	.byte	0x3e
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF1111
	.byte	0x6
	.byte	0x3f
	.4byte	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x20
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1297
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x41
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x22
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x4b
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1162
	.byte	0x6
	.byte	0x2d
	.4byte	0xde5
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fa
	.uleb128 0x1f
	.4byte	.LASF1116
	.byte	0x6
	.byte	0x2d
	.4byte	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.4byte	.LASF1133
	.byte	0x6
	.byte	0x2f
	.4byte	0xde5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x33
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1163
	.byte	0x6
	.byte	0x1f
	.4byte	0xde5
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1338
	.uleb128 0x1f
	.4byte	.LASF1116
	.byte	0x6
	.byte	0x1f
	.4byte	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x21
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1164
	.byte	0x6
	.byte	0x14
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137a
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x6
	.byte	0x16
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x22
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x24
	.ascii	"j\000"
	.byte	0x6
	.byte	0x18
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1165
	.byte	0x5
	.byte	0x92
	.4byte	0x1dc
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13be
	.uleb128 0x1f
	.4byte	.LASF1008
	.byte	0x5
	.byte	0x92
	.4byte	0xe97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1107
	.byte	0x5
	.byte	0x92
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1108
	.byte	0x5
	.byte	0x92
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1166
	.byte	0x4
	.byte	0xa2
	.4byte	0x1dc
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1402
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x4
	.byte	0xa2
	.4byte	0xfbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1142
	.byte	0x4
	.byte	0xa3
	.4byte	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1143
	.byte	0x4
	.byte	0xa3
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1167
	.byte	0x4
	.byte	0x5f
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1434
	.uleb128 0x1f
	.4byte	.LASF1129
	.byte	0x4
	.byte	0x5f
	.4byte	0xfbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1007
	.byte	0x4
	.byte	0x5f
	.4byte	0x1159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1168
	.byte	0x3
	.byte	0x5f
	.4byte	0x1dc
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1478
	.uleb128 0x1f
	.4byte	.LASF1169
	.byte	0x3
	.byte	0x5f
	.4byte	0xfc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1170
	.byte	0x3
	.byte	0x5f
	.4byte	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x3
	.byte	0x5f
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1171
	.byte	0x3
	.byte	0x4b
	.4byte	0x1dc
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ca
	.uleb128 0x1f
	.4byte	.LASF1169
	.byte	0x3
	.byte	0x4b
	.4byte	0xfc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1047
	.byte	0x3
	.byte	0x4b
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1048
	.byte	0x3
	.byte	0x4c
	.4byte	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1049
	.byte	0x3
	.byte	0x4c
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1172
	.byte	0x2
	.byte	0x89
	.4byte	0x1dc
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1500
	.uleb128 0x1f
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x89
	.4byte	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.4byte	.LASF1048
	.byte	0x2
	.byte	0x89
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7a0
	.uleb128 0x28
	.4byte	.LASF1173
	.byte	0x2
	.byte	0x67
	.4byte	0x1dc
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153c
	.uleb128 0x1f
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x67
	.4byte	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1174
	.byte	0x2
	.byte	0x67
	.4byte	0xbca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1175
	.byte	0x2
	.byte	0x5a
	.4byte	0x1dc
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1572
	.uleb128 0x1f
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x5a
	.4byte	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1047
	.byte	0x2
	.byte	0x5a
	.4byte	0xbca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1176
	.byte	0x2
	.byte	0x39
	.4byte	0x1dc
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15c4
	.uleb128 0x1f
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x39
	.4byte	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"var\000"
	.byte	0x2
	.byte	0x39
	.4byte	0xbca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF1177
	.byte	0x2
	.byte	0x3b
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1a
	.4byte	.LASF1178
	.byte	0x2
	.byte	0x3c
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x27
	.4byte	.LASF1179
	.byte	0x2
	.byte	0x2b
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1604
	.uleb128 0x1f
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x2b
	.4byte	0x1500
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.4byte	.LASF1180
	.byte	0x2
	.byte	0x2b
	.4byte	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1f
	.4byte	.LASF1181
	.byte	0x2
	.byte	0x2b
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1182
	.byte	0x1
	.byte	0xad
	.4byte	0x1dc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163a
	.uleb128 0x1f
	.4byte	.LASF1137
	.byte	0x1
	.byte	0xad
	.4byte	0x163a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1f
	.4byte	.LASF1048
	.byte	0x1
	.byte	0xad
	.4byte	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x75e
	.uleb128 0x28
	.4byte	.LASF1183
	.byte	0x1
	.byte	0x8e
	.4byte	0x1dc
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1676
	.uleb128 0x1f
	.4byte	.LASF1137
	.byte	0x1
	.byte	0x8e
	.4byte	0x163a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1174
	.byte	0x1
	.byte	0x8e
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1184
	.byte	0x1
	.byte	0x82
	.4byte	0x1dc
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ac
	.uleb128 0x1f
	.4byte	.LASF1137
	.byte	0x1
	.byte	0x82
	.4byte	0x163a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1047
	.byte	0x1
	.byte	0x82
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1185
	.byte	0x1
	.byte	0x60
	.4byte	0x1dc
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f0
	.uleb128 0x1f
	.4byte	.LASF1137
	.byte	0x1
	.byte	0x60
	.4byte	0x163a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.ascii	"var\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF1178
	.byte	0x1
	.byte	0x62
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF1191
	.byte	0x1
	.byte	0x35
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF1137
	.byte	0x1
	.byte	0x35
	.4byte	0x163a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1180
	.byte	0x1
	.byte	0x35
	.4byte	0x727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1186
	.byte	0x1
	.byte	0x35
	.4byte	0x1e3
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.4byte	0x920
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x172d
	.4byte	0x36
	.ascii	"TLV_Interest\000"
	.4byte	0x3c
	.ascii	"TLV_Data\000"
	.4byte	0x42
	.ascii	"TLV_Name\000"
	.4byte	0x48
	.ascii	"TLV_GenericNameComponent\000"
	.4byte	0x4e
	.ascii	"TLV_ImplicitSha256DigestComponent\000"
	.4byte	0x54
	.ascii	"TLV_ParametersSha256DigestComponent\000"
	.4byte	0x5a
	.ascii	"TLV_SignedInterestSha256DigestComponent\000"
	.4byte	0x60
	.ascii	"TLV_CanBePrefix\000"
	.4byte	0x66
	.ascii	"TLV_MustBeFresh\000"
	.4byte	0x6c
	.ascii	"TLV_ForwardingHint\000"
	.4byte	0x72
	.ascii	"TLV_Nonce\000"
	.4byte	0x78
	.ascii	"TLV_InterestLifetime\000"
	.4byte	0x7e
	.ascii	"TLV_HopLimit\000"
	.4byte	0x84
	.ascii	"TLV_Parameters\000"
	.4byte	0x8a
	.ascii	"TLV_MetaInfo\000"
	.4byte	0x90
	.ascii	"TLV_Content\000"
	.4byte	0x96
	.ascii	"TLV_SignatureInfo\000"
	.4byte	0x9c
	.ascii	"TLV_SignatureValue\000"
	.4byte	0xa2
	.ascii	"TLV_ContentType\000"
	.4byte	0xa8
	.ascii	"TLV_FreshnessPeriod\000"
	.4byte	0xae
	.ascii	"TLV_FinalBlockId\000"
	.4byte	0xb4
	.ascii	"TLV_SignatureType\000"
	.4byte	0xba
	.ascii	"TLV_KeyLocator\000"
	.4byte	0xc0
	.ascii	"TLV_KeyLocatorDigest\000"
	.4byte	0xc6
	.ascii	"TLV_Delegation\000"
	.4byte	0xcc
	.ascii	"TLV_Preference\000"
	.4byte	0xd2
	.ascii	"TLV_ValidityPeriod\000"
	.4byte	0xd8
	.ascii	"TLV_NotBefore\000"
	.4byte	0xde
	.ascii	"TLV_NotAfter\000"
	.4byte	0xe4
	.ascii	"TLV_SignedInterestParameters\000"
	.4byte	0xea
	.ascii	"TLV_SignedInterestTimestamp\000"
	.4byte	0x10a
	.ascii	"TLV_AC_KEY_TYPE\000"
	.4byte	0x110
	.ascii	"TLV_AC_KEY_ID\000"
	.4byte	0x116
	.ascii	"TLV_AC_ECDH_PUB\000"
	.4byte	0x11c
	.ascii	"TLV_AC_SALT\000"
	.4byte	0x122
	.ascii	"TLV_AC_KEY_LIFETIME\000"
	.4byte	0x128
	.ascii	"TLV_AC_CIPHER_DK\000"
	.4byte	0x12e
	.ascii	"TLV_AC_ENCRYPTED_CONTENT\000"
	.4byte	0x134
	.ascii	"TLV_AC_AES_IV\000"
	.4byte	0x13a
	.ascii	"TLV_AC_ENCRYPTED_PAYLOAD\000"
	.4byte	0x140
	.ascii	"TLV_SD_STATUS\000"
	.4byte	0x146
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST_RESPONSE\000"
	.4byte	0x14c
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST_RESPONSE\000"
	.4byte	0x152
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST\000"
	.4byte	0x158
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST\000"
	.4byte	0x15e
	.ascii	"TLV_SSP_DEVICE_IDENTIFIER\000"
	.4byte	0x164
	.ascii	"TLV_SSP_DEVICE_CAPABILITIES\000"
	.4byte	0x16a
	.ascii	"TLV_SSP_N1_PUB\000"
	.4byte	0x170
	.ascii	"TLV_SSP_SIGNATURE\000"
	.4byte	0x176
	.ascii	"TLV_SSP_N2_PUB\000"
	.4byte	0x17c
	.ascii	"TLV_SSP_ANCHOR_CERTIFICATE\000"
	.4byte	0x182
	.ascii	"TLV_SSP_TRUST_ANCHOR_CERTIFICATE_DIGEST\000"
	.4byte	0x188
	.ascii	"TLV_SSP_N2_PUB_DIGEST\000"
	.4byte	0x18e
	.ascii	"TLV_SSP_KD_PRI_ENCRYPTED\000"
	.4byte	0x194
	.ascii	"TLV_SSP_KD_PUB_CERTIFICATE\000"
	.4byte	0x19a
	.ascii	"TLV_SSP_FINISH_MESSAGE\000"
	.4byte	0xbb9
	.ascii	"curve_secp256r1\000"
	.4byte	0xd1a
	.ascii	"sd_context\000"
	.4byte	0xd1a
	.ascii	"sd_context\000"
	.4byte	0xd2b
	.ascii	"ndn_sd_on_query_timeout_process\000"
	.4byte	0xd6a
	.ascii	"ndn_sd_on_query_response_process\000"
	.4byte	0xdeb
	.ascii	"ndn_sd_on_query_process\000"
	.4byte	0xeb3
	.ascii	"ndn_sd_on_advertisement_process\000"
	.4byte	0xf15
	.ascii	"ndn_sd_prepare_query\000"
	.4byte	0xfc9
	.ascii	"ndn_sd_prepare_advertisement\000"
	.4byte	0x1048
	.ascii	"ndn_sd_find_first_service_provider\000"
	.4byte	0x107e
	.ascii	"ndn_sd_find_neigbor\000"
	.4byte	0x10ab
	.ascii	"ndn_sd_register_get_self_service\000"
	.4byte	0x1111
	.ascii	"ndn_sd_init\000"
	.4byte	0x115f
	.ascii	"_neighbors_remove_neighbor\000"
	.4byte	0x1190
	.ascii	"_neighbor_reset_service\000"
	.4byte	0x11ca
	.ascii	"_neighbors_find_first_service_provider\000"
	.4byte	0x122c
	.ascii	"_neighbor_add_update_service\000"
	.4byte	0x12ae
	.ascii	"_neighbors_add_neighbor\000"
	.4byte	0x12fa
	.ascii	"_neighbors_find_neighbor\000"
	.4byte	0x1338
	.ascii	"_neighbors_init\000"
	.4byte	0x137a
	.ascii	"ndn_data_set_content\000"
	.4byte	0x13be
	.ascii	"ndn_interest_set_Parameters\000"
	.4byte	0x1402
	.ascii	"ndn_interest_from_name\000"
	.4byte	0x1434
	.ascii	"name_component_from_string\000"
	.4byte	0x1478
	.ascii	"name_component_from_buffer\000"
	.4byte	0x14ca
	.ascii	"decoder_get_byte_value\000"
	.4byte	0x1506
	.ascii	"decoder_get_length\000"
	.4byte	0x153c
	.ascii	"decoder_get_type\000"
	.4byte	0x1572
	.ascii	"decoder_get_var\000"
	.4byte	0x15c4
	.ascii	"decoder_init\000"
	.4byte	0x1604
	.ascii	"encoder_append_byte_value\000"
	.4byte	0x1640
	.ascii	"encoder_append_length\000"
	.4byte	0x1676
	.ascii	"encoder_append_type\000"
	.4byte	0x16ac
	.ascii	"encoder_append_var\000"
	.4byte	0x16f0
	.ascii	"encoder_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x3de
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x172d
	.4byte	0xf1
	.ascii	"unsigned char\000"
	.4byte	0x1ac
	.ascii	"signed char\000"
	.4byte	0x1a1
	.ascii	"int8_t\000"
	.4byte	0x1b3
	.ascii	"uint8_t\000"
	.4byte	0x1ce
	.ascii	"short int\000"
	.4byte	0x1c3
	.ascii	"int16_t\000"
	.4byte	0x1d5
	.ascii	"short unsigned int\000"
	.4byte	0x1dc
	.ascii	"int\000"
	.4byte	0x1ee
	.ascii	"unsigned int\000"
	.4byte	0x1e3
	.ascii	"uint32_t\000"
	.4byte	0x1f5
	.ascii	"long long int\000"
	.4byte	0x207
	.ascii	"long long unsigned int\000"
	.4byte	0x1fc
	.ascii	"uint64_t\000"
	.4byte	0x233
	.ascii	"long int\000"
	.4byte	0x20e
	.ascii	"__mbstate_s\000"
	.4byte	0x259
	.ascii	"char\000"
	.4byte	0x41e
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x501
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x54a
	.ascii	"__RAL_locale_t\000"
	.4byte	0x55a
	.ascii	"__locale_s\000"
	.4byte	0x6ba
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x6db
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x709
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x72d
	.ascii	"ndn_encoder\000"
	.4byte	0x75e
	.ascii	"ndn_encoder_t\000"
	.4byte	0x769
	.ascii	"ndn_decoder\000"
	.4byte	0x7a0
	.ascii	"ndn_decoder_t\000"
	.4byte	0x7ab
	.ascii	"name_component\000"
	.4byte	0x7ec
	.ascii	"name_component_t\000"
	.4byte	0x7fc
	.ascii	"ndn_name\000"
	.4byte	0x833
	.ascii	"ndn_name_t\000"
	.4byte	0x843
	.ascii	"ndn_validity_period\000"
	.4byte	0x878
	.ascii	"ndn_validity_period_t\000"
	.4byte	0x883
	.ascii	"ndn_signature\000"
	.4byte	0x92c
	.ascii	"ndn_signature_t\000"
	.4byte	0x937
	.ascii	"interest_params\000"
	.4byte	0x96c
	.ascii	"interest_params_t\000"
	.4byte	0x977
	.ascii	"ndn_interest\000"
	.4byte	0xa13
	.ascii	"ndn_interest_t\000"
	.4byte	0xa23
	.ascii	"ndn_metainfo\000"
	.4byte	0xa78
	.ascii	"ndn_metainfo_t\000"
	.4byte	0xa83
	.ascii	"wordcount_t\000"
	.4byte	0xa8e
	.ascii	"bitcount_t\000"
	.4byte	0xa99
	.ascii	"tc_uECC_word_t\000"
	.4byte	0xaa9
	.ascii	"tc_uECC_Curve\000"
	.4byte	0xaba
	.ascii	"tc_uECC_Curve_t\000"
	.4byte	0xbd0
	.ascii	"ndn_data\000"
	.4byte	0xc2e
	.ascii	"ndn_data_t\000"
	.4byte	0xc3e
	.ascii	"ndn_service\000"
	.4byte	0xc7f
	.ascii	"ndn_service_t\000"
	.4byte	0xc8a
	.ascii	"ndn_sd_identity\000"
	.4byte	0xcc0
	.ascii	"ndn_sd_identity_t\000"
	.4byte	0xccb
	.ascii	"ndn_sd_context\000"
	.4byte	0xd0f
	.ascii	"ndn_sd_context_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x114
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
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
	.uleb128 0x6
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF460
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF461
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF462
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF463
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF464
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF465
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF466
	.file 15 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-constants.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 16 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-error-code.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x10
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF528
	.file 17 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/inttypes.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF529
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 18 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\ndn-enums.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x12
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF813
	.byte	0x4
	.file 19 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/string.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF814
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 20 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stdbool.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF843
	.byte	0x4
	.file 21 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-crypto-key.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF844
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xc
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF845
	.byte	0x4
	.file 22 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-hmac.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x16
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF846
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x10
	.byte	0x4
	.file 23 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-sec-config.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro9
	.file 24 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/ndn-lite-default-sha-impl.h"
	.byte	0x3
	.uleb128 0x75
	.uleb128 0x18
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF853
	.byte	0x4
	.file 25 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/nordic-sdk-nrf-backend/ndn-lite-nrf-crypto-rng-impl.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x19
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF854
	.byte	0x4
	.file 26 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/ndn-lite-default-aes-impl.h"
	.byte	0x3
	.uleb128 0x83
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF855
	.byte	0x4
	.file 27 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/ndn-lite-default-ecc-impl.h"
	.byte	0x3
	.uleb128 0x88
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF856
	.file 28 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.10/include/stddef.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1c
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 29 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/sec-lib/micro-ecc/uECC.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.file 30 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\detail/default-backend/ndn-lite-default-hmac-impl.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF888
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 31 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-ecc.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x1f
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF889
	.file 32 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-rng.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x20
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF890
	.byte	0x4
	.byte	0x4
	.file 33 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-sha.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF891
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.file 34 "c:\\users\\edwar\\desktop\\ndn-lite-work\\ndn-lite\\security\\ndn-lite-aes.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x22
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF892
	.byte	0x4
	.byte	0x4
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
	.section	.debug_macro,"G",%progbits,wm4.ndnconstants.h.10.ca5a4259e860f7dba160b547cb22beaf,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF527
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF589
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.inttypes.h.51.8f95d4f617ed7727de4df087c228bd6c,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF742
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ndnerrorcode.h.14.8439de0b929d9daf11428c50f6a41455,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF812
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF816
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF835
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.string.h.54.1251887c85434229a131a5f3ce872657,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF837
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.45.e4cbe9931a68266e95ea034b4b9fd8bf,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF842
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ndnlitesecconfig.h.10.36a1d5473f47ca455c8a27ddbcf1ae29,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF852
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.45.62d50d89638d7955f25aa153b574b44e,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF859
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.tc_ecc.h.72.4cf505efe46af49ef185e88a1dbb018c,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF872
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.uECC.h.4.3c89074d7e3080ed87cd02759d270d61,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF887
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF214:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF1068:
	.ascii	"validity_period\000"
.LASF1156:
	.ascii	"ndn_sd_init\000"
.LASF362:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF873:
	.ascii	"_UECC_H_ \000"
.LASF951:
	.ascii	"int8_t\000"
.LASF252:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF883:
	.ascii	"uECC_SUPPORTS_secp160r1 1\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF673:
	.ascii	"PRIiPTR \"i\"\000"
.LASF254:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF1012:
	.ascii	"__locale_s\000"
.LASF872:
	.ascii	"BITS_TO_BYTES(num_bits) ((num_bits + 7) / 8)\000"
.LASF217:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF816:
	.ascii	"__THREAD __thread\000"
.LASF664:
	.ascii	"PRIXFAST16 \"X\"\000"
.LASF326:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF716:
	.ascii	"SCNoMAX \"llo\"\000"
.LASF807:
	.ascii	"NDN_ASN1_ECDSA_SIG_INVALID_SIZE -132\000"
.LASF1088:
	.ascii	"freshness_period\000"
.LASF1002:
	.ascii	"__towupper\000"
.LASF1133:
	.ascii	"neighbor\000"
.LASF1006:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF638:
	.ascii	"PRIuFAST16 \"u\"\000"
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
.LASF596:
	.ascii	"PRId32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF211:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF674:
	.ascii	"PRIoPTR \"o\"\000"
.LASF710:
	.ascii	"SCNoFAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF911:
	.ascii	"TLV_ContentType\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF276:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF611:
	.ascii	"PRIiFAST8 \"i\"\000"
.LASF1115:
	.ascii	"ndn_sd_identity\000"
.LASF306:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF1035:
	.ascii	"__RAL_error_decoder_t\000"
.LASF1069:
	.ascii	"enable_KeyLocator\000"
.LASF782:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_TRUST_ANCHOR_CERT -111\000"
.LASF950:
	.ascii	"signed char\000"
.LASF860:
	.ascii	"__TC_UECC_H__ \000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF1079:
	.ascii	"parameters\000"
.LASF855:
	.ascii	"NDN_LITE_AES_TINYCRIPT_IMPL_H \000"
.LASF266:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF332:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF564:
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
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF242:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF692:
	.ascii	"SCNi16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF953:
	.ascii	"int16_t\000"
.LASF406:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF601:
	.ascii	"PRIdFAST64 \"lld\"\000"
.LASF301:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF591:
	.ascii	"__RAL_SCN_16_PREFIX \"h\"\000"
.LASF1058:
	.ascii	"ndn_validity_period_t\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF948:
	.ascii	"TLV_SSP_FINISH_MESSAGE\000"
.LASF1137:
	.ascii	"encoder\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF1171:
	.ascii	"name_component_from_buffer\000"
.LASF630:
	.ascii	"PRIoLEAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF1154:
	.ascii	"ndn_sd_register_get_self_service\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF469:
	.ascii	"NDN_NAME_COMPONENT_BLOCK_SIZE 38\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF995:
	.ascii	"time_format\000"
.LASF840:
	.ascii	"true 1\000"
.LASF990:
	.ascii	"abbrev_day_names\000"
.LASF571:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF1150:
	.ascii	"ndn_sd_prepare_advertisement\000"
.LASF1023:
	.ascii	"__RAL_data_utf8_period\000"
.LASF1108:
	.ascii	"content_size\000"
.LASF519:
	.ascii	"NDN_ASN1_ECDSA_SECP192R1_RAW_SIG_SIZE 48\000"
.LASF1075:
	.ascii	"nonce\000"
.LASF1160:
	.ascii	"_neighbors_find_first_service_provider\000"
.LASF506:
	.ascii	"NDN_SEC_ENCRYPTION_KEYS_SIZE 5\000"
.LASF795:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_SIG -124\000"
.LASF837:
	.ascii	"NULL 0\000"
.LASF502:
	.ascii	"NDN_APPSUPPORT_SERVICE_AVAILABLE 1\000"
.LASF734:
	.ascii	"SCNxFAST8 \"hhx\"\000"
.LASF1168:
	.ascii	"name_component_from_string\000"
.LASF868:
	.ascii	"NUM_ECC_BYTES (tc_uECC_WORD_SIZE*NUM_ECC_WORDS)\000"
.LASF694:
	.ascii	"SCNi64 \"lli\"\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF289:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF876:
	.ascii	"uECC_x86_64 2\000"
.LASF474:
	.ascii	"NDN_INTEREST_PARAMS_BUFFER_SIZE 248\000"
.LASF903:
	.ascii	"TLV_Nonce\000"
.LASF789:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G_PAYLOAD_HASH -118\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF433:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF232:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF448:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF968:
	.ascii	"int_curr_symbol\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF496:
	.ascii	"NDN_APPSUPPORT_PREFIXES_SIZE 10\000"
.LASF822:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF737:
	.ascii	"SCNxFAST64 \"llx\"\000"
.LASF262:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF479:
	.ascii	"NDN_FIB_MAX_SIZE 20\000"
.LASF809:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_PROBE_ASN1_INT_SIZE -1"
	.ascii	"34\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF987:
	.ascii	"int_p_sign_posn\000"
.LASF1047:
	.ascii	"type\000"
.LASF979:
	.ascii	"n_cs_precedes\000"
.LASF1183:
	.ascii	"encoder_append_length\000"
.LASF934:
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST_RESPONSE\000"
.LASF531:
	.ascii	"UINT8_MAX 255\000"
.LASF1129:
	.ascii	"interest\000"
.LASF279:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF1109:
	.ascii	"ndn_data_t\000"
.LASF704:
	.ascii	"SCNo8 \"o\"\000"
.LASF913:
	.ascii	"TLV_FinalBlockId\000"
.LASF935:
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST_RESPONSE\000"
.LASF210:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF533:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF453:
	.ascii	"NRF_CRYPTO_MAX_INSTANCE_COUNT 1\000"
.LASF477:
	.ascii	"NDN_CONTENT_BUFFER_SIZE 256\000"
.LASF933:
	.ascii	"TLV_SD_STATUS\000"
.LASF258:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF1078:
	.ascii	"enable_MustBeFresh\000"
.LASF473:
	.ascii	"NDN_FWD_INVALID_NAME_COMPONENT_SIZE ((uint32_t)(-1)"
	.ascii	")\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF1126:
	.ascii	"home_len\000"
.LASF975:
	.ascii	"int_frac_digits\000"
.LASF609:
	.ascii	"PRIi32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF338:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF212:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF368:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF631:
	.ascii	"PRIoLEAST64 \"llo\"\000"
.LASF462:
	.ascii	"NDN_ENCODING_NAME_H \000"
.LASF509:
	.ascii	"NDN_SEC_SHA256_HASH_SIZE 32\000"
.LASF346:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF683:
	.ascii	"SCNdFAST16 __RAL_SCN_16_PREFIX \"d\"\000"
.LASF207:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF442:
	.ascii	"BOARD_PCA10056 1\000"
.LASF847:
	.ascii	"NDN_LITE_SEC_CONFIG_H \000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF228:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF617:
	.ascii	"PRIiLEAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF238:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF440:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF315:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF878:
	.ascii	"uECC_arm_thumb 4\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF415:
	.ascii	"__VFP_FP__ 1\000"
.LASF286:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF849:
	.ascii	"NDN_LITE_SEC_BACKEND_RANDOM_NRF_CRYPTO \000"
.LASF1042:
	.ascii	"ndn_decoder\000"
.LASF1143:
	.ascii	"params_size\000"
.LASF755:
	.ascii	"NDN_SEC_WRONG_AES_SIZE -27\000"
.LASF942:
	.ascii	"TLV_SSP_N2_PUB\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF237:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF536:
	.ascii	"INT16_MAX 32767\000"
.LASF1180:
	.ascii	"block_value\000"
.LASF583:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF599:
	.ascii	"PRIdFAST16 \"d\"\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF231:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF994:
	.ascii	"date_format\000"
.LASF523:
	.ascii	"NDN_ASN1_ECDSA_SECP224R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP224R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF1082:
	.ascii	"enable_HopLimit\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF624:
	.ascii	"PRIoFAST8 \"o\"\000"
.LASF970:
	.ascii	"mon_decimal_point\000"
.LASF728:
	.ascii	"SCNuLEAST64 \"llu\"\000"
.LASF304:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF310:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF963:
	.ascii	"long int\000"
.LASF776:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"N1_KEYPAIR -105\000"
.LASF227:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF225:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF821:
	.ascii	"__CODE \000"
.LASF1052:
	.ascii	"components\000"
.LASF1032:
	.ascii	"__RAL_error_decoder_s\000"
.LASF248:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF366:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF518:
	.ascii	"NDN_ASN1_ECDSA_SECP224R1_RAW_SIG_SIZE 56\000"
.LASF1072:
	.ascii	"interest_params\000"
.LASF1073:
	.ascii	"interest_params_t\000"
.LASF1014:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF890:
	.ascii	"NDN_SECURITY_RNG_H_ \000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF983:
	.ascii	"int_p_cs_precedes\000"
.LASF423:
	.ascii	"__ARM_NEON__\000"
.LASF487:
	.ascii	"NDN_FRAG_HB_MASK 0x80\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF426:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF984:
	.ascii	"int_n_cs_precedes\000"
.LASF907:
	.ascii	"TLV_MetaInfo\000"
.LASF452:
	.ascii	"MBEDTLS_CONFIG_FILE \"nrf_crypto_mbedtls_config.h\""
	.ascii	"\000"
.LASF943:
	.ascii	"TLV_SSP_ANCHOR_CERTIFICATE\000"
.LASF724:
	.ascii	"SCNuFAST64 \"llu\"\000"
.LASF1152:
	.ascii	"ndn_sd_find_first_service_provider\000"
.LASF222:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF643:
	.ascii	"PRIuLEAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF1114:
	.ascii	"ndn_service_t\000"
.LASF542:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF460:
	.ascii	"NDN_APP_SUPPORT_SERVICE_DISCOVERY_H \000"
.LASF605:
	.ascii	"PRIdLEAST64 \"lld\"\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF871:
	.ascii	"BITS_TO_WORDS(num_bits) ((num_bits + ((tc_uECC_WORD"
	.ascii	"_SIZE * 8) - 1)) / (tc_uECC_WORD_SIZE * 8))\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF1182:
	.ascii	"encoder_append_byte_value\000"
.LASF1134:
	.ascii	"ndn_sd_on_query_process\000"
.LASF910:
	.ascii	"TLV_SignatureValue\000"
.LASF817:
	.ascii	"__RAL_SIZE_T\000"
.LASF499:
	.ascii	"NDN_APPSUPPORT_INVALID_SERVICE_ID_SIZE ((uint32_t)("
	.ascii	"-1))\000"
.LASF854:
	.ascii	"RNG_NRF_CRYPTO_IMPL_H \000"
.LASF1090:
	.ascii	"enable_ContentType\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF652:
	.ascii	"PRIxFAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF221:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF812:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_SEQUENCE -13"
	.ascii	"7\000"
.LASF697:
	.ascii	"SCNiFAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF556:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF570:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF685:
	.ascii	"SCNdFAST64 \"lld\"\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF244:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF1005:
	.ascii	"__mbtowc\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF567:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF1167:
	.ascii	"ndn_interest_from_name\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF513:
	.ascii	"NDN_SEC_ECC_SECP256R1_PRIVATE_KEY_SIZE 32\000"
.LASF1036:
	.ascii	"__RAL_error_decoder_head\000"
.LASF504:
	.ascii	"NDN_APPSUPPORT_SERVICE_PERMISSION_DENIED 3\000"
.LASF563:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF892:
	.ascii	"NDN_SECURITY_AES_H_ \000"
.LASF952:
	.ascii	"uint8_t\000"
.LASF422:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF372:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF929:
	.ascii	"TLV_AC_CIPHER_DK\000"
.LASF1004:
	.ascii	"__wctomb\000"
.LASF264:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF555:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF328:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF786:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_ENCODING_FAILED -115\000"
.LASF731:
	.ascii	"SCNx16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF1067:
	.ascii	"timestamp\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF758:
	.ascii	"NDN_SEC_SIGNED_INTEREST_INVALID_DIGEST -30\000"
.LASF573:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF684:
	.ascii	"SCNdFAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF560:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF297:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF739:
	.ascii	"SCNxLEAST16 __RAL_SCN_LEAST16_PREFIX \"x\"\000"
.LASF814:
	.ascii	"__string_H \000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF538:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF765:
	.ascii	"NDN_FWD_PIT_ENTRY_FACE_LIST_FULL -42\000"
.LASF215:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF522:
	.ascii	"NDN_ASN1_ECDSA_SECP256K1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP256K1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF949:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF295:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF646:
	.ascii	"PRIx8 \"x\"\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF251:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF267:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF980:
	.ascii	"n_sep_by_space\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF1100:
	.ascii	"num_bytes\000"
.LASF471:
	.ascii	"NDN_NAME_MAX_BLOCK_SIZE 384\000"
.LASF741:
	.ascii	"SCNxLEAST64 \"llx\"\000"
.LASF625:
	.ascii	"PRIoFAST16 \"o\"\000"
.LASF749:
	.ascii	"NDN_SEC_WRONG_KEY_SIZE -22\000"
.LASF587:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF1184:
	.ascii	"encoder_append_type\000"
.LASF540:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF896:
	.ascii	"TLV_GenericNameComponent\000"
.LASF584:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF342:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF497:
	.ascii	"NDN_APPSUPPORT_SERVICES_SIZE 10\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF924:
	.ascii	"TLV_AC_KEY_TYPE\000"
.LASF1025:
	.ascii	"__RAL_data_utf8_space\000"
.LASF348:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF667:
	.ascii	"PRIXLEAST8 \"X\"\000"
.LASF825:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF528:
	.ascii	"NDN_ERROR_CODE_H \000"
.LASF535:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF329:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF508:
	.ascii	"NDN_SEC_INVALID_KEY_ID ((uint32_t)(-1))\000"
.LASF982:
	.ascii	"n_sign_posn\000"
.LASF645:
	.ascii	"PRIuMAX \"llu\"\000"
.LASF318:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF521:
	.ascii	"NDN_ASN1_ECDSA_SECP256R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF1048:
	.ascii	"value\000"
.LASF665:
	.ascii	"PRIXFAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF721:
	.ascii	"SCNuFAST8 \"hhu\"\000"
.LASF589:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF1046:
	.ascii	"name_component\000"
.LASF389:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF561:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF964:
	.ascii	"char\000"
.LASF365:
	.ascii	"__USA_IBIT__ 16\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF590:
	.ascii	"__RAL_PRI_32_PREFIX \"\"\000"
.LASF494:
	.ascii	"NDN_APPSUPPORT_AC_KEY_LIST_SIZE 5\000"
.LASF754:
	.ascii	"NDN_SEC_UNSUPPORT_SIGN_TYPE -26\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF1175:
	.ascii	"decoder_get_type\000"
.LASF481:
	.ascii	"NDN_CS_MAX_SIZE 10\000"
.LASF354:
	.ascii	"__HA_FBIT__ 7\000"
.LASF1055:
	.ascii	"ndn_validity_period\000"
.LASF727:
	.ascii	"SCNuLEAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF229:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF902:
	.ascii	"TLV_ForwardingHint\000"
.LASF774:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_BUFFER_TOO_SHORT -1"
	.ascii	"03\000"
.LASF781:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_SIG -110\000"
.LASF260:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF586:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF1119:
	.ascii	"ndn_sd_context\000"
.LASF940:
	.ascii	"TLV_SSP_N1_PUB\000"
.LASF831:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF436:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF424:
	.ascii	"__ARM_NEON\000"
.LASF1176:
	.ascii	"decoder_get_var\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF829:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF698:
	.ascii	"SCNiFAST64 \"lli\"\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF579:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF639:
	.ascii	"PRIuFAST32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF791:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_VERIFY_S"
	.ascii	"IGNATURE -120\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF480:
	.ascii	"NDN_PIT_MAX_SIZE 32\000"
.LASF603:
	.ascii	"PRIdLEAST16 \"d\"\000"
.LASF762:
	.ascii	"NDN_FRAG_WRONG_IDENTIFIER -33\000"
.LASF616:
	.ascii	"PRIiLEAST16 \"i\"\000"
.LASF991:
	.ascii	"month_names\000"
.LASF1060:
	.ascii	"sig_type\000"
.LASF627:
	.ascii	"PRIoFAST64 \"llo\"\000"
.LASF1022:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF592:
	.ascii	"__RAL_SCN_32_PREFIX \"\"\000"
.LASF358:
	.ascii	"__DA_FBIT__ 31\000"
.LASF1127:
	.ascii	"ndn_sd_on_query_timeout_process\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF922:
	.ascii	"TLV_SignedInterestParameters\000"
.LASF851:
	.ascii	"NDN_LITE_SEC_BACKEND_ECC_DEFAULT \000"
.LASF793:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PUB_CERT -122\000"
.LASF1162:
	.ascii	"_neighbors_add_neighbor\000"
.LASF1053:
	.ascii	"components_size\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF661:
	.ascii	"PRIX32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF623:
	.ascii	"PRIo64 \"llo\"\000"
.LASF745:
	.ascii	"NDN_NAME_INVALID_FORMAT -11\000"
.LASF1003:
	.ascii	"__towlower\000"
.LASF669:
	.ascii	"PRIXLEAST32 __RAL_PRI_32_PREFIX \"X\"\000"
.LASF1164:
	.ascii	"_neighbors_init\000"
.LASF974:
	.ascii	"negative_sign\000"
.LASF1057:
	.ascii	"not_after\000"
.LASF759:
	.ascii	"NDN_FRAG_NO_MORE_FRAGS -30\000"
.LASF488:
	.ascii	"NDN_FRAG_MF_MASK 0x20\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF1062:
	.ascii	"sig_size\000"
.LASF1081:
	.ascii	"hop_limit\000"
.LASF904:
	.ascii	"TLV_InterestLifetime\000"
.LASF313:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF686:
	.ascii	"SCNdLEAST8 \"hhd\"\000"
.LASF526:
	.ascii	"NDN_ASN1_ECDSA_MIN_RAW_SIG_SIZE (NDN_ASN1_ECDSA_SEC"
	.ascii	"P160R1_MAX_ENCODED_SIG_SIZE - NDN_ASN1_ECDSA_ENCODI"
	.ascii	"NG_MAX_EXTRA_BYTES)\000"
.LASF889:
	.ascii	"NDN_SECURITY_ECC_H_ \000"
.LASF1033:
	.ascii	"decode\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF866:
	.ascii	"tc_uECC_WORD_BITS_MASK 0x01F\000"
.LASF773:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_TO_SET_SEC_INT"
	.ascii	"F -102\000"
.LASF1001:
	.ascii	"__iswctype\000"
.LASF299:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF562:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF722:
	.ascii	"SCNuFAST16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF314:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF772:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_INIT_FAILED_UNRECOGNIZED_V"
	.ascii	"ARIANT -101\000"
.LASF880:
	.ascii	"uECC_arm64 6\000"
.LASF973:
	.ascii	"positive_sign\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF833:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF666:
	.ascii	"PRIXFAST64 \"llX\"\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF744:
	.ascii	"NDN_OVERSIZE -10\000"
.LASF360:
	.ascii	"__TA_FBIT__ 63\000"
.LASF1142:
	.ascii	"params_value\000"
.LASF224:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF619:
	.ascii	"PRIiMAX \"lli\"\000"
.LASF1110:
	.ascii	"ndn_service\000"
.LASF1178:
	.ascii	"rest_size\000"
.LASF839:
	.ascii	"bool _Bool\000"
.LASF805:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_CERTIFICATE"
	.ascii	"_REQUEST -130\000"
.LASF485:
	.ascii	"NDN_MAX_FACE_PER_PIT_ENTRY 3\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF1124:
	.ascii	"curve_secp256r1\000"
.LASF311:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF845:
	.ascii	"NDN_ENCODING_METAINFO_H \000"
.LASF1136:
	.ascii	"buffer\000"
.LASF613:
	.ascii	"PRIiFAST32 __RAL_PRI_32_PREFIX \"i\"\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF819:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF1016:
	.ascii	"__RAL_codeset_ascii\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF912:
	.ascii	"TLV_FreshnessPeriod\000"
.LASF719:
	.ascii	"SCNu32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF657:
	.ascii	"PRIxLEAST64 \"llx\"\000"
.LASF1153:
	.ascii	"ndn_sd_find_neigbor\000"
.LASF1010:
	.ascii	"__RAL_locale_t\000"
.LASF1155:
	.ascii	"prefix\000"
.LASF783:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_N2_PUB -112\000"
.LASF945:
	.ascii	"TLV_SSP_N2_PUB_DIGEST\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF733:
	.ascii	"SCNx64 \"llx\"\000"
.LASF439:
	.ascii	"__SES_VERSION 41000\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF835:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF676:
	.ascii	"PRIxPTR \"x\"\000"
.LASF1149:
	.ascii	"ndn_sd_prepare_query\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF1187:
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
.LASF701:
	.ascii	"SCNiLEAST32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF547:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF730:
	.ascii	"SCNx8 \"x\"\000"
.LASF466:
	.ascii	"NDN_ENCODING_ENCODER_H \000"
.LASF717:
	.ascii	"SCNu8 \"u\"\000"
.LASF259:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF992:
	.ascii	"abbrev_month_names\000"
.LASF327:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF771:
	.ascii	"NDN_AC_UNRECOGNIZED_KEY_REQUEST -52\000"
.LASF371:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF576:
	.ascii	"INT8_C(x) (x)\000"
.LASF527:
	.ascii	"NDN_ASN1_ECDSA_MIN_ENCODED_SIG_SIZE (NDN_ASN1_ECDSA"
	.ascii	"_MIN_RAW_SIG_SIZE + NDN_ASN1_ECDSA_ENCODING_MIN_EXT"
	.ascii	"RA_BYTES)\000"
.LASF1009:
	.ascii	"codeset\000"
.LASF634:
	.ascii	"PRIu16 \"u\"\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF785:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_BUFFER_TOO_SHORT -114"
	.ascii	"\000"
.LASF740:
	.ascii	"SCNxLEAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF394:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF766:
	.ascii	"NDN_FWD_FIB_FULL -43\000"
.LASF687:
	.ascii	"SCNdLEAST16 __RAL_SCN_LEAST16_PREFIX \"d\"\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF707:
	.ascii	"SCNo64 \"llo\"\000"
.LASF747:
	.ascii	"NDN_WRONG_TLV_LENGTH -13\000"
.LASF405:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF223:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF1116:
	.ascii	"identity\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF507:
	.ascii	"NDN_SEC_INVALID_KEY_SIZE ((uint32_t)(-1))\000"
.LASF437:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF585:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF608:
	.ascii	"PRIi16 \"i\"\000"
.LASF1086:
	.ascii	"ndn_metainfo\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF1138:
	.ascii	"ndn_sd_on_advertisement_process\000"
.LASF516:
	.ascii	"NDN_ASN1_ECDSA_SECP256R1_RAW_SIG_SIZE 64\000"
.LASF886:
	.ascii	"uECC_SUPPORTS_secp256r1 1\000"
.LASF962:
	.ascii	"__wchar\000"
.LASF756:
	.ascii	"NDN_SEC_INIT_FAILURE -28\000"
.LASF256:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF357:
	.ascii	"__SA_IBIT__ 16\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF5:
	.ascii	"__GNUC__ 7\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF916:
	.ascii	"TLV_KeyLocatorDigest\000"
.LASF997:
	.ascii	"__RAL_locale_data_t\000"
.LASF836:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF537:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF641:
	.ascii	"PRIuLEAST8 \"u\"\000"
.LASF1121:
	.ascii	"self\000"
.LASF915:
	.ascii	"TLV_KeyLocator\000"
.LASF1111:
	.ascii	"status\000"
.LASF1031:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF235:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF788:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_TR"
	.ascii	"UST_ANCHOR_CERT_HASH -117\000"
.LASF1021:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF1140:
	.ascii	"target\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF784:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_GENERA"
	.ascii	"TE_KT -113\000"
.LASF796:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_DECRYPT_"
	.ascii	"KD_PRI -125\000"
.LASF801:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_SUCCESS -130\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF325:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF268:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF732:
	.ascii	"SCNx32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF352:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF510:
	.ascii	"NDN_SEC_AES_MIN_KEY_SIZE 16\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF905:
	.ascii	"TLV_HopLimit\000"
.LASF689:
	.ascii	"SCNdLEAST64 \"lld\"\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF1132:
	.ascii	"probe\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF718:
	.ascii	"SCNu16 __RAL_SCN_16_PREFIX \"u\"\000"
.LASF869:
	.ascii	"BYTES_TO_WORDS_8(a,b,c,d,e,f,g,h) 0x ##d ##c ##b ##"
	.ascii	"a, 0x ##h ##g ##f ##e\000"
.LASF495:
	.ascii	"NDN_APPSUPPORT_NEIGHBORS_SIZE 10\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF8:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF870:
	.ascii	"BYTES_TO_WORDS_4(a,b,c,d) 0x ##d ##c ##b ##a\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF574:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF993:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF230:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF1113:
	.ascii	"id_size\000"
.LASF351:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF736:
	.ascii	"SCNxFAST32 __RAL_SCN_32_PREFIX \"x\"\000"
.LASF874:
	.ascii	"uECC_arch_other 0\000"
.LASF622:
	.ascii	"PRIo32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF853:
	.ascii	"NDN_LITE_DEFAULT_SHA256_IMPL_H \000"
.LASF577:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF1087:
	.ascii	"content_type\000"
.LASF937:
	.ascii	"TLV_SSP_CERTIFICATE_REQUEST\000"
.LASF1064:
	.ascii	"enable_SignatureInfoNonce\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF451:
	.ascii	"SWI_DISABLE0 1\000"
.LASF549:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF748:
	.ascii	"NDN_OVERSIZE_VAR -14\000"
.LASF1039:
	.ascii	"output_max_size\000"
.LASF777:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG_PAYLOAD_HASH -106\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF395:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF826:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF792:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_CERT_RQST_RSPNS -121\000"
.LASF290:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF986:
	.ascii	"int_n_sep_by_space\000"
.LASF505:
	.ascii	"NDN_SEC_SIGNING_KEYS_SIZE 10\000"
.LASF489:
	.ascii	"NDN_FRAG_SEQ_MASK 0x1F\000"
.LASF678:
	.ascii	"SCNd8 \"d\"\000"
.LASF757:
	.ascii	"NDN_SEC_FAIL_VERIFY_SIG -29\000"
.LASF534:
	.ascii	"UINT16_MAX 65535\000"
.LASF1029:
	.ascii	"__user_set_time_of_day\000"
.LASF470:
	.ascii	"NDN_NAME_COMPONENTS_SIZE 10\000"
.LASF582:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF598:
	.ascii	"PRIdFAST8 \"d\"\000"
.LASF1097:
	.ascii	"tc_uECC_Curve\000"
.LASF803:
	.ascii	"NDN_SIGN_ON_BASIC_CLIENT_NRF_SDK_BLE_CONSTRUCT_FAIL"
	.ascii	"ED_TO_INITIALIZE_SIGN_ON_BASIC_CLIENT -132\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF309:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF690:
	.ascii	"SCNdMAX \"lld\"\000"
.LASF273:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF450:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF345:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF761:
	.ascii	"NDN_FRAG_NO_MEM -32\000"
.LASF947:
	.ascii	"TLV_SSP_KD_PUB_CERTIFICATE\000"
.LASF729:
	.ascii	"SCNuMAX \"llu\"\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF321:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF1131:
	.ascii	"decoder\000"
.LASF408:
	.ascii	"__ARM_ARCH 7\000"
.LASF1054:
	.ascii	"ndn_name_t\000"
.LASF612:
	.ascii	"PRIiFAST16 \"i\"\000"
.LASF1099:
	.ascii	"num_words\000"
.LASF650:
	.ascii	"PRIxFAST8 \"x\"\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF503:
	.ascii	"NDN_APPSUPPORT_SERVICE_BUSY 2\000"
.LASF958:
	.ascii	"long long int\000"
.LASF1011:
	.ascii	"__mbstate_s\000"
.LASF447:
	.ascii	"NRF52840_XXAA 1\000"
.LASF478:
	.ascii	"NDN_SIGNATURE_BUFFER_SIZE 128\000"
.LASF671:
	.ascii	"PRIXMAX \"llX\"\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF454:
	.ascii	"uECC_ENABLE_VLI_API 0\000"
.LASF1179:
	.ascii	"decoder_init\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF1041:
	.ascii	"ndn_encoder_t\000"
.LASF936:
	.ascii	"TLV_SSP_BOOTSTRAPPING_REQUEST\000"
.LASF355:
	.ascii	"__HA_IBIT__ 8\000"
.LASF790:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_SI"
	.ascii	"G -119\000"
.LASF597:
	.ascii	"PRId64 \"lld\"\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF668:
	.ascii	"PRIXLEAST16 \"X\"\000"
.LASF885:
	.ascii	"uECC_SUPPORTS_secp224r1 1\000"
.LASF726:
	.ascii	"SCNuLEAST16 __RAL_SCN_LEAST16_PREFIX \"u\"\000"
.LASF565:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF209:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF292:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF511:
	.ascii	"NDN_SEC_AES_IV_LENGTH 16\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF699:
	.ascii	"SCNiLEAST8 \"hhi\"\000"
.LASF767:
	.ascii	"NDN_FWD_INTEREST_REJECTED -44\000"
.LASF604:
	.ascii	"PRIdLEAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF1139:
	.ascii	"toDecode\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF1013:
	.ascii	"__category\000"
.LASF778:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_FAILED_TO_GENERATE_"
	.ascii	"SIG -107\000"
.LASF806:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_FINISH_MESS"
	.ascii	"AGE -131\000"
.LASF1185:
	.ascii	"encoder_append_var\000"
.LASF272:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF1173:
	.ascii	"decoder_get_length\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF877:
	.ascii	"uECC_arm 3\000"
.LASF637:
	.ascii	"PRIuFAST8 \"u\"\000"
.LASF649:
	.ascii	"PRIx64 \"llx\"\000"
.LASF1163:
	.ascii	"_neighbors_find_neighbor\000"
.LASF255:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF482:
	.ascii	"NDN_FACE_TABLE_MAX_SIZE 10\000"
.LASF1051:
	.ascii	"ndn_name\000"
.LASF996:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF425:
	.ascii	"__ARM_NEON_FP\000"
.LASF882:
	.ascii	"uECC_VLI_NATIVE_LITTLE_ENDIAN 0\000"
.LASF458:
	.ascii	"uECC_VLI_NATIVE_LITTLE_ENDIAN 1\000"
.LASF632:
	.ascii	"PRIoMAX \"llo\"\000"
.LASF879:
	.ascii	"uECC_arm_thumb2 5\000"
.LASF811:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_READ_ASN1_INT - 136\000"
.LASF775:
	.ascii	"NDN_SIGN_ON_CNSTRCT_BTSTRP_RQST_ENCODING_FAILED -10"
	.ascii	"4\000"
.LASF269:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF350:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF848:
	.ascii	"NDN_LITE_SEC_BACKEND_SHA256_DEFAULT \000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF696:
	.ascii	"SCNiFAST16 __RAL_SCN_16_PREFIX \"i\"\000"
.LASF1098:
	.ascii	"tc_uECC_Curve_t\000"
.LASF691:
	.ascii	"SCNi8 \"i\"\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF1170:
	.ascii	"string\000"
.LASF226:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF957:
	.ascii	"unsigned int\000"
.LASF939:
	.ascii	"TLV_SSP_DEVICE_CAPABILITIES\000"
.LASF891:
	.ascii	"NDN_SECURITY_SHA_H_ \000"
.LASF546:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF558:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF218:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF881:
	.ascii	"uECC_avr 7\000"
.LASF804:
	.ascii	"SIGN_ON_BASIC_CLIENT_BLE_FAILED_TO_SEND_BOOTSTRAPPI"
	.ascii	"NG_REQUEST -129\000"
.LASF300:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF713:
	.ascii	"SCNoLEAST16 __RAL_SCN_LEAST16_PREFIX \"o\"\000"
.LASF427:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF216:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF330:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF981:
	.ascii	"p_sign_posn\000"
.LASF1063:
	.ascii	"key_locator_name\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF680:
	.ascii	"SCNd32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF938:
	.ascii	"TLV_SSP_DEVICE_IDENTIFIER\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF1118:
	.ascii	"ndn_sd_identity_t\000"
.LASF455:
	.ascii	"uECC_OPTIMIZATION_LEVEL 3\000"
.LASF917:
	.ascii	"TLV_Delegation\000"
.LASF900:
	.ascii	"TLV_CanBePrefix\000"
.LASF344:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF753:
	.ascii	"NDN_SEC_UNSUPPORT_CRYPTO_ALGO -26\000"
.LASF875:
	.ascii	"uECC_x86 1\000"
.LASF712:
	.ascii	"SCNoLEAST8 \"hho\"\000"
.LASF241:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF312:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF675:
	.ascii	"PRIuPTR \"u\"\000"
.LASF615:
	.ascii	"PRIiLEAST8 \"i\"\000"
.LASF1191:
	.ascii	"encoder_init\000"
.LASF277:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF392:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF1030:
	.ascii	"__user_get_time_of_day\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF633:
	.ascii	"PRIu8 \"u\"\000"
.LASF602:
	.ascii	"PRIdLEAST8 \"d\"\000"
.LASF438:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF431:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF846:
	.ascii	"NDN_SECURITY_HMAC_H_ \000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF894:
	.ascii	"TLV_Data\000"
.LASF557:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF723:
	.ascii	"SCNuFAST32 __RAL_SCN_32_PREFIX \"u\"\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF208:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF841:
	.ascii	"false 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF918:
	.ascii	"TLV_Preference\000"
.LASF247:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF926:
	.ascii	"TLV_AC_ECDH_PUB\000"
.LASF1102:
	.ascii	"double_jacobian\000"
.LASF1017:
	.ascii	"__RAL_codeset_utf8\000"
.LASF364:
	.ascii	"__USA_FBIT__ 16\000"
.LASF1093:
	.ascii	"ndn_metainfo_t\000"
.LASF1015:
	.ascii	"__RAL_c_locale\000"
.LASF606:
	.ascii	"PRIdMAX \"lld\"\000"
.LASF865:
	.ascii	"tc_uECC_WORD_BITS_SHIFT 5\000"
.LASF653:
	.ascii	"PRIxFAST64 \"llx\"\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF797:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_BUFFER_TOO_SHORT -126\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF278:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF644:
	.ascii	"PRIuLEAST64 \"llu\"\000"
.LASF545:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF965:
	.ascii	"decimal_point\000"
.LASF404:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF810:
	.ascii	"NDN_ASN1_ECDSA_SIG_FAILED_TO_WRITE_ASN1_INT -135\000"
.LASF407:
	.ascii	"__arm__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF1128:
	.ascii	"ndn_sd_on_query_response_process\000"
.LASF818:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF808:
	.ascii	"NDN_ASN1_ECDSA_SIG_BUFFER_TOO_SMALL -133\000"
.LASF861:
	.ascii	"tc_uECC_WORD_SIZE 4\000"
.LASF418:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF824:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF233:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF492:
	.ascii	"NDN_APPSUPPORT_AC_EDK_SIZE 16\000"
.LASF1026:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF361:
	.ascii	"__TA_IBIT__ 64\000"
.LASF681:
	.ascii	"SCNd64 \"lld\"\000"
.LASF539:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF823:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF398:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF844:
	.ascii	"NDN_ENCODING_DATA_H \000"
.LASF715:
	.ascii	"SCNoLEAST64 \"llo\"\000"
.LASF1148:
	.ascii	"comp_id\000"
.LASF413:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF800:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG "
	.ascii	"-129\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF932:
	.ascii	"TLV_AC_ENCRYPTED_PAYLOAD\000"
.LASF1147:
	.ascii	"str_qr\000"
.LASF711:
	.ascii	"SCNoFAST64 \"llo\"\000"
.LASF1172:
	.ascii	"decoder_get_byte_value\000"
.LASF1190:
	.ascii	"timeval\000"
.LASF270:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF399:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF275:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF1122:
	.ascii	"neighbors\000"
.LASF444:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF1159:
	.ascii	"_neighbor_reset_service\000"
.LASF1076:
	.ascii	"lifetime\000"
.LASF640:
	.ascii	"PRIuFAST64 \"llu\"\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF693:
	.ascii	"SCNi32 __RAL_SCN_32_PREFIX \"i\"\000"
.LASF662:
	.ascii	"PRIX64 \"llX\"\000"
.LASF595:
	.ascii	"PRId16 \"d\"\000"
.LASF1165:
	.ascii	"ndn_data_set_content\000"
.LASF642:
	.ascii	"PRIuLEAST16 \"u\"\000"
.LASF655:
	.ascii	"PRIxLEAST16 \"x\"\000"
.LASF626:
	.ascii	"PRIoFAST32 __RAL_PRI_32_PREFIX \"o\"\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1166:
	.ascii	"ndn_interest_set_Parameters\000"
.LASF660:
	.ascii	"PRIX16 \"X\"\000"
.LASF569:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF1135:
	.ascii	"entry\000"
.LASF525:
	.ascii	"NDN_ASN1_ECDSA_SECP160R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF648:
	.ascii	"PRIx32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF850:
	.ascii	"NDN_LITE_SEC_BACKEND_AES_DEFAULT \000"
.LASF396:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF1189:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite-"
	.ascii	"asn-testing\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF946:
	.ascii	"TLV_SSP_KD_PRI_ENCRYPTED\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF265:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF705:
	.ascii	"SCNo16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF899:
	.ascii	"TLV_SignedInterestSha256DigestComponent\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF1107:
	.ascii	"content_value\000"
.LASF857:
	.ascii	"__stddef_H \000"
.LASF468:
	.ascii	"NDN_NAME_COMPONENT_BUFFER_SIZE 36\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF1049:
	.ascii	"size\000"
.LASF998:
	.ascii	"__isctype\000"
.LASF240:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF960:
	.ascii	"long long unsigned int\000"
.LASF909:
	.ascii	"TLV_SignatureInfo\000"
.LASF921:
	.ascii	"TLV_NotAfter\000"
.LASF550:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF663:
	.ascii	"PRIXFAST8 \"X\"\000"
.LASF320:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF1123:
	.ascii	"ndn_sd_context_t\000"
.LASF1037:
	.ascii	"ndn_encoder\000"
.LASF333:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF985:
	.ascii	"int_p_sep_by_space\000"
.LASF409:
	.ascii	"__APCS_32__ 1\000"
.LASF340:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF941:
	.ascii	"TLV_SSP_SIGNATURE\000"
.LASF1174:
	.ascii	"length\000"
.LASF658:
	.ascii	"PRIxMAX \"llx\"\000"
.LASF628:
	.ascii	"PRIoLEAST8 \"o\"\000"
.LASF828:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF347:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF443:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF931:
	.ascii	"TLV_AC_AES_IV\000"
.LASF898:
	.ascii	"TLV_ParametersSha256DigestComponent\000"
.LASF834:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF1145:
	.ascii	"str_sd\000"
.LASF1045:
	.ascii	"ndn_decoder_t\000"
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
.LASF1141:
	.ascii	"service\000"
.LASF559:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF220:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF1103:
	.ascii	"x_side\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF888:
	.ascii	"NDN_LITE_DEFAULT_HMAC_IMPL_H \000"
.LASF1105:
	.ascii	"ndn_data\000"
.LASF978:
	.ascii	"p_sep_by_space\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF920:
	.ascii	"TLV_NotBefore\000"
.LASF548:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF461:
	.ascii	"NDN_ENCODING_INTEREST_H \000"
.LASF742:
	.ascii	"SCNxMAX \"llx\"\000"
.LASF1028:
	.ascii	"__RAL_data_empty_string\000"
.LASF322:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF928:
	.ascii	"TLV_AC_KEY_LIFETIME\000"
.LASF281:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF446:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF341:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF532:
	.ascii	"INT8_MAX 127\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF768:
	.ascii	"NDN_FWD_NO_MATCHED_CALLBACK -45\000"
.LASF743:
	.ascii	"NDN_SUCCESS 0\000"
.LASF1157:
	.ascii	"self_id\000"
.LASF1077:
	.ascii	"enable_CanBePrefix\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF472:
	.ascii	"NDN_FWD_INVALID_NAME_SIZE ((uint32_t)(-1))\000"
.LASF1089:
	.ascii	"final_block_id\000"
.LASF1151:
	.ascii	"toEncode\000"
.LASF493:
	.ascii	"NDN_APPSUPPORT_AC_SALT_SIZE 16\000"
.LASF815:
	.ascii	"__crossworks_H \000"
.LASF475:
	.ascii	"NDN_SIGNED_INTEREST_BE_SIGNED_MAX_SIZE 680\000"
.LASF353:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF356:
	.ascii	"__SA_FBIT__ 15\000"
.LASF738:
	.ascii	"SCNxLEAST8 \"hhx\"\000"
.LASF838:
	.ascii	"__stdbool_h \000"
.LASF967:
	.ascii	"grouping\000"
.LASF930:
	.ascii	"TLV_AC_ENCRYPTED_CONTENT\000"
.LASF813:
	.ascii	"NDN_ENUMS_H \000"
.LASF429:
	.ascii	"__ARM_EABI__ 1\000"
.LASF524:
	.ascii	"NDN_ASN1_ECDSA_SECP192R1_MAX_ENCODED_SIG_SIZE (NDN_"
	.ascii	"ASN1_ECDSA_SECP192R1_RAW_SIG_SIZE + NDN_ASN1_ECDSA_"
	.ascii	"ENCODING_MAX_EXTRA_BYTES)\000"
.LASF551:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF435:
	.ascii	"__ELF__ 1\000"
.LASF412:
	.ascii	"__THUMBEL__ 1\000"
.LASF393:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF501:
	.ascii	"NDN_APPSUPPORT_SERVICE_UNAVAILABLE 0\000"
.LASF750:
	.ascii	"NDN_SEC_WRONG_SIG_SIZE -23\000"
.LASF335:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF1181:
	.ascii	"block_size\000"
.LASF629:
	.ascii	"PRIoLEAST16 \"o\"\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF530:
	.ascii	"__stdint_H \000"
.LASF1043:
	.ascii	"input_value\000"
.LASF514:
	.ascii	"NDN_ASN1_ECDSA_ENCODING_MAX_EXTRA_BYTES 8\000"
.LASF349:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF1169:
	.ascii	"component\000"
.LASF827:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF402:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF843:
	.ascii	"NDN_ENCODING_SIGNATURE_H \000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF769:
	.ascii	"NDN_FWD_APP_FACE_CB_TABLE_FULL -50\000"
.LASF457:
	.ascii	"uECC_SUPPORT_COMPRESSED_POINT 0\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF752:
	.ascii	"NDN_SEC_CRYPTO_ALGO_FAILURE -25\000"
.LASF449:
	.ascii	"S140 1\000"
.LASF445:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF859:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF1018:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF893:
	.ascii	"TLV_Interest\000"
.LASF864:
	.ascii	"tc_uECC_WORD_BITS 32\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF654:
	.ascii	"PRIxLEAST8 \"x\"\000"
.LASF303:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF1186:
	.ascii	"block_max_size\000"
.LASF1040:
	.ascii	"offset\000"
.LASF709:
	.ascii	"SCNoFAST16 __RAL_SCN_16_PREFIX \"o\"\000"
.LASF287:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF249:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF914:
	.ascii	"TLV_SignatureType\000"
.LASF1091:
	.ascii	"enable_FreshnessPeriod\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF999:
	.ascii	"__toupper\000"
.LASF1095:
	.ascii	"bitcount_t\000"
.LASF370:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF253:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF283:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF464:
	.ascii	"NDN_ENCODING_TLV_H \000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF1007:
	.ascii	"name\000"
.LASF919:
	.ascii	"TLV_ValidityPeriod\000"
.LASF250:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF708:
	.ascii	"SCNoFAST8 \"hho\"\000"
.LASF1158:
	.ascii	"_neighbors_remove_neighbor\000"
.LASF305:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF976:
	.ascii	"frac_digits\000"
.LASF1177:
	.ascii	"first_bit\000"
.LASF593:
	.ascii	"__RAL_SCN_LEAST16_PREFIX \"h\"\000"
.LASF969:
	.ascii	"currency_symbol\000"
.LASF1094:
	.ascii	"wordcount_t\000"
.LASF635:
	.ascii	"PRIu32 __RAL_PRI_32_PREFIX \"u\"\000"
.LASF467:
	.ascii	"NDN_CONSTANTS_H \000"
.LASF954:
	.ascii	"short int\000"
.LASF1020:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF670:
	.ascii	"PRIXLEAST64 \"llX\"\000"
.LASF700:
	.ascii	"SCNiLEAST16 __RAL_SCN_LEAST16_PREFIX \"i\"\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF959:
	.ascii	"uint64_t\000"
.LASF367:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF373:
	.ascii	"__NO_INLINE__ 1\000"
.LASF799:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_FAILED_TO_GENERATE_SIG_"
	.ascii	"PAYLOAD_HASH -128\000"
.LASF500:
	.ascii	"NDN_APPSUPPORT_SERVICE_UNDEFINED ((uint8_t)(-1))\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF961:
	.ascii	"__state\000"
.LASF714:
	.ascii	"SCNoLEAST32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF205:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF1050:
	.ascii	"name_component_t\000"
.LASF607:
	.ascii	"PRIi8 \"i\"\000"
.LASF261:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF544:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF520:
	.ascii	"NDN_ASN1_ECDSA_SECP160R1_RAW_SIG_SIZE 40\000"
.LASF695:
	.ascii	"SCNiFAST8 \"hhi\"\000"
.LASF430:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF243:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF512:
	.ascii	"NDN_SEC_ECC_SECP256R1_PUBLIC_KEY_SIZE 64\000"
.LASF972:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF636:
	.ascii	"PRIu64 \"llu\"\000"
.LASF572:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF319:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF706:
	.ascii	"SCNo32 __RAL_SCN_32_PREFIX \"o\"\000"
.LASF553:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF618:
	.ascii	"PRIiLEAST64 \"lli\"\000"
.LASF588:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF1096:
	.ascii	"tc_uECC_word_t\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF927:
	.ascii	"TLV_AC_SALT\000"
.LASF1112:
	.ascii	"id_value\000"
.LASF925:
	.ascii	"TLV_AC_KEY_ID\000"
.LASF403:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF1106:
	.ascii	"metainfo\000"
.LASF600:
	.ascii	"PRIdFAST32 __RAL_PRI_32_PREFIX \"d\"\000"
.LASF1092:
	.ascii	"enable_FinalBlockId\000"
.LASF1074:
	.ascii	"ndn_interest\000"
.LASF989:
	.ascii	"day_names\000"
.LASF672:
	.ascii	"PRIdPTR \"d\"\000"
.LASF515:
	.ascii	"NDN_ASN1_ECDSA_ENCODING_MIN_EXTRA_BYTES 6\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF1027:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF1056:
	.ascii	"not_before\000"
.LASF369:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF1084:
	.ascii	"signature\000"
.LASF274:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF293:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF779:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_VERIFY"
	.ascii	"_SIGNATURE -108\000"
.LASF659:
	.ascii	"PRIX8 \"X\"\000"
.LASF391:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF1071:
	.ascii	"ndn_signature_t\000"
.LASF1130:
	.ascii	"response\000"
.LASF397:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF434:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF1038:
	.ascii	"output_value\000"
.LASF787:
	.ascii	"NDN_SIGN_ON_CNSTRCT_CERT_RQST_FAILED_TO_GENERATE_N2"
	.ascii	"_PUB_HASH -116\000"
.LASF517:
	.ascii	"NDN_ASN1_ECDSA_SECP256K1_RAW_SIG_SIZE 64\000"
.LASF316:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF459:
	.ascii	"NDN_LITE_SEC_BACKEND_NRF_CRYPTO 1\000"
.LASF1120:
	.ascii	"home_prefix\000"
.LASF234:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF906:
	.ascii	"TLV_Parameters\000"
.LASF331:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF483:
	.ascii	"NDN_FACE_DEFAULT_COST 1\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF1125:
	.ascii	"sd_context\000"
.LASF802:
	.ascii	"NDN_SIGN_ON_BASIC_SET_SEC_INTF_FAILURE -131\000"
.LASF486:
	.ascii	"NDN_FRAG_HDR_LEN 3\000"
.LASF432:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF1070:
	.ascii	"enable_ValidityPeriod\000"
.LASF1019:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF798:
	.ascii	"NDN_SIGN_ON_CNSTRCT_FIN_MSG_ENCODING_FAILED -127\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF491:
	.ascii	"NDN_FRAG_BUFFER_MAX 512\000"
.LASF411:
	.ascii	"__thumb2__ 1\000"
.LASF858:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF621:
	.ascii	"PRIo16 \"o\"\000"
.LASF566:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF908:
	.ascii	"TLV_Content\000"
.LASF428:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF887:
	.ascii	"uECC_SUPPORTS_secp256k1 1\000"
.LASF656:
	.ascii	"PRIxLEAST32 __RAL_PRI_32_PREFIX \"x\"\000"
.LASF476:
	.ascii	"NDN_DEFAULT_INTEREST_LIFETIME 4000\000"
.LASF291:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF620:
	.ascii	"PRIo8 \"o\"\000"
.LASF971:
	.ascii	"mon_thousands_sep\000"
.LASF419:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF856:
	.ascii	"NDN_LITE_DEFAULT_ECC_IMPL_H \000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF285:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF763:
	.ascii	"NDN_FWD_NO_MEM -40\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF956:
	.ascii	"uint32_t\000"
.LASF541:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF580:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF988:
	.ascii	"int_n_sign_posn\000"
.LASF751:
	.ascii	"NDN_SEC_DISABLED_FEATURE -24\000"
.LASF581:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF298:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF867:
	.ascii	"NUM_ECC_WORDS 8\000"
.LASF682:
	.ascii	"SCNdFAST8 \"hhd\"\000"
.LASF390:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF1065:
	.ascii	"signature_info_nonce\000"
.LASF416:
	.ascii	"__ARM_FP 4\000"
.LASF923:
	.ascii	"TLV_SignedInterestTimestamp\000"
.LASF1146:
	.ascii	"comp_qr\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF688:
	.ascii	"SCNdLEAST32 __RAL_SCN_32_PREFIX \"d\"\000"
.LASF363:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF1101:
	.ascii	"num_n_bits\000"
.LASF897:
	.ascii	"TLV_ImplicitSha256DigestComponent\000"
.LASF308:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF323:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF568:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF651:
	.ascii	"PRIxFAST16 \"x\"\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF441:
	.ascii	"DEBUG_NRF 1\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF720:
	.ascii	"SCNu64 \"llu\"\000"
.LASF206:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF245:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF1104:
	.ascii	"mmod_fast\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF977:
	.ascii	"p_cs_precedes\000"
.LASF334:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF679:
	.ascii	"SCNd16 __RAL_SCN_16_PREFIX \"d\"\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF955:
	.ascii	"short unsigned int\000"
.LASF284:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF410:
	.ascii	"__thumb__ 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF770:
	.ascii	"NDN_SD_NO_MATCH_SERVCE -51\000"
.LASF832:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF414:
	.ascii	"__ARMEL__ 1\000"
.LASF725:
	.ascii	"SCNuLEAST8 \"hhu\"\000"
.LASF543:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF1117:
	.ascii	"services\000"
.LASF498:
	.ascii	"NDN_APPSUPPORT_SERVICE_ID_SIZE 20\000"
.LASF336:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF842:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF307:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF490:
	.ascii	"NDN_FRAG_MAX_SEQ_NUM 30\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF794:
	.ascii	"NDN_SIGN_ON_PRCS_CERT_RQST_RSPNS_FAILED_TO_PARSE_TL"
	.ascii	"V_KD_PRI_ENC -123\000"
.LASF944:
	.ascii	"TLV_SSP_TRUST_ANCHOR_CERTIFICATE_DIGEST\000"
.LASF901:
	.ascii	"TLV_MustBeFresh\000"
.LASF594:
	.ascii	"PRId8 \"d\"\000"
.LASF610:
	.ascii	"PRIi64 \"lli\"\000"
.LASF1059:
	.ascii	"ndn_signature\000"
.LASF862:
	.ascii	"tc_uECC_RNG_MAX_TRIES 64\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF863:
	.ascii	"HIGH_BIT_SET 0x80000000\000"
.LASF614:
	.ascii	"PRIiFAST64 \"lli\"\000"
.LASF746:
	.ascii	"NDN_WRONG_TLV_TYPE -12\000"
.LASF884:
	.ascii	"uECC_SUPPORTS_secp192r1 1\000"
.LASF552:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF400:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF647:
	.ascii	"PRIx16 \"x\"\000"
.LASF760:
	.ascii	"NDN_FRAG_OUT_OF_ORDER -31\000"
.LASF852:
	.ascii	"NDN_LITE_SEC_BACKEND_HMAC_DEFAULT \000"
.LASF288:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF703:
	.ascii	"SCNiMAX \"lli\"\000"
.LASF257:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF219:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF484:
	.ascii	"NDN_AES_BLOCK_SIZE 16\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF702:
	.ascii	"SCNiLEAST64 \"lli\"\000"
.LASF463:
	.ascii	"NDN_ENCODING_NAME_COMPONENT_H \000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF1024:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF359:
	.ascii	"__DA_IBIT__ 32\000"
.LASF1144:
	.ascii	"comp_sd\000"
.LASF1080:
	.ascii	"enable_Parameters\000"
.LASF966:
	.ascii	"thousands_sep\000"
.LASF895:
	.ascii	"TLV_Name\000"
.LASF1000:
	.ascii	"__tolower\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF830:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF337:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF735:
	.ascii	"SCNxFAST16 __RAL_SCN_16_PREFIX \"x\"\000"
.LASF1034:
	.ascii	"next\000"
.LASF465:
	.ascii	"NDN_ENCODING_DECODER_H \000"
.LASF1008:
	.ascii	"data\000"
.LASF764:
	.ascii	"NDN_FWD_PIT_FULL -41\000"
.LASF1188:
	.ascii	"C:\\Users\\edwar\\Desktop\\ndn-lite-work\\ndn-lite\\"
	.ascii	"app-support\\service-discovery.c\000"
.LASF1083:
	.ascii	"is_SignedInterest\000"
.LASF1066:
	.ascii	"enable_Timestamp\000"
.LASF780:
	.ascii	"NDN_SIGN_ON_PRCS_BTSTRP_RQST_RSPNS_FAILED_TO_PARSE_"
	.ascii	"TLV_BTSTRP_RQST_RSPNS -109\000"
.LASF1161:
	.ascii	"_neighbor_add_update_service\000"
.LASF456:
	.ascii	"uECC_SQUARE_FUNC 0\000"
.LASF677:
	.ascii	"PRIXPTR \"X\"\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF820:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF280:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF1044:
	.ascii	"input_size\000"
.LASF324:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF575:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF578:
	.ascii	"INT16_C(x) (x)\000"
.LASF529:
	.ascii	"__inttypes_H \000"
.LASF294:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF1061:
	.ascii	"sig_value\000"
.LASF1085:
	.ascii	"ndn_interest_t\000"
.LASF554:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
