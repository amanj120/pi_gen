	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	__Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_ ; -- Begin function _Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_
	.p2align	2
__Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_: ; @_Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ls
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB0_26
LBB0_2:
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	stur	x0, [x29, #-32]
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB0_11
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-32]
	subs	x1, x8, #1
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	subs	x1, x8, #1
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	b	LBB0_11
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-32]
	subs	x1, x8, #1
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-32]
	subs	x1, x8, #1
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB0_26
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	subs	x8, x8, #1
	stur	x8, [x29, #-32]
	b	LBB0_3
LBB0_11:
	stur	xzr, [x29, #-40]
	b	LBB0_12
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, hs
	tbnz	w8, #0, LBB0_20
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-40]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB0_18
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-40]
	add	x1, x8, #1
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	adrp	x0, l___func__._Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_@PAGE
	add	x0, x0, l___func__._Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #25
	adrp	x3, l_.str.1@PAGE
	add	x3, x3, l_.str.1@PAGEOFF
	bl	___assert_rtn
LBB0_16:                                ;   in Loop: Header=BB0_12 Depth=1
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-40]
	add	x1, x8, #1
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	subs	x8, x8, #1
	str	x8, [x0]
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-40]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	subs	x8, x8, x9
	str	x8, [x0]
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	LBB0_12
LBB0_20:
	b	LBB0_21
LBB0_21:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	ldr	x8, [x0]
	subs	x8, x8, #0
	cset	w8, ne
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_23
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_21 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	subs	x8, x0, #1
	cset	w8, hi
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_21 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_25
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_21 Depth=1
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	b	LBB0_21
LBB0_25:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB0_26
LBB0_26:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x0, x8, #8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x1, x8, #8
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_ ; -- Begin function _Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
	.p2align	2
__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_: ; @_Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x28, x27, [sp, #272]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #288]            ; 16-byte Folded Spill
	add	x29, sp, #288
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	stur	x3, [x29, #-48]
	mov	x8, #32
	stur	x8, [x29, #-56]
	mov	x8, #4294967295
	stur	x8, [x29, #-64]
	stur	xzr, [x29, #-72]
	stur	xzr, [x29, #-80]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	stur	x0, [x29, #-88]
	ldur	x0, [x29, #-32]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	stur	x0, [x29, #-96]
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-96]
	add	x1, x8, #1
	sub	x2, x29, #104
	stur	xzr, [x29, #-104]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	b	LBB6_3
LBB6_2:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-88]
	add	x1, x8, #1
	sub	x2, x29, #112
	stur	xzr, [x29, #-112]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	b	LBB6_3
LBB6_3:
	stur	xzr, [x29, #-120]
	b	LBB6_4
LBB6_4:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-120]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, hs
	tbnz	w8, #0, LBB6_13
	b	LBB6_5
LBB6_5:                                 ;   in Loop: Header=BB6_4 Depth=1
	ldur	x8, [x29, #-120]
	ldur	x9, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB6_7
	b	LBB6_6
LBB6_6:                                 ;   in Loop: Header=BB6_4 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-120]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB6_8
LBB6_7:                                 ;   in Loop: Header=BB6_4 Depth=1
	mov	x8, #0
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB6_8
LBB6_8:                                 ;   in Loop: Header=BB6_4 Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-128]
	ldur	x8, [x29, #-120]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB6_10
	b	LBB6_9
LBB6_9:                                 ;   in Loop: Header=BB6_4 Depth=1
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-120]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [x0]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB6_11
LBB6_10:                                ;   in Loop: Header=BB6_4 Depth=1
	mov	x8, #0
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB6_11
LBB6_11:                                ;   in Loop: Header=BB6_4 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-136]
	ldur	x8, [x29, #-40]
	lsr	x8, x8, #32
	str	x8, [sp, #144]
	ldur	w8, [x29, #-40]
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #136]
	ldur	x8, [x29, #-128]
	lsr	x8, x8, #32
	str	x8, [sp, #128]
	ldur	w8, [x29, #-128]
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #120]
	ldr	x8, [sp, #144]
	ldr	x9, [sp, #128]
	mul	x8, x8, x9
	str	x8, [sp, #112]
	ldr	x8, [sp, #144]
	ldr	x9, [sp, #120]
	mul	x8, x8, x9
	str	x8, [sp, #104]
	ldr	x8, [sp, #136]
	ldr	x9, [sp, #128]
	mul	x8, x8, x9
	str	x8, [sp, #96]
	ldr	x8, [sp, #136]
	ldr	x9, [sp, #120]
	mul	x8, x8, x9
	str	x8, [sp, #88]
	ldr	w8, [sp, #104]
                                        ; kill: def $x8 killed $w8
	ldr	w9, [sp, #96]
                                        ; kill: def $x9 killed $w9
	add	x8, x8, x9
	ldr	x9, [sp, #88]
	add	x8, x8, x9, lsr #32
	str	x8, [sp, #80]
	ldr	x8, [sp, #112]
	ldr	x9, [sp, #104]
	add	x8, x8, x9, lsr #32
	ldr	x9, [sp, #96]
	add	x8, x8, x9, lsr #32
	ldr	x9, [sp, #80]
	add	x8, x8, x9, lsr #32
	str	x8, [sp, #72]
	ldr	x9, [sp, #80]
	ldr	w8, [sp, #88]
                                        ; kill: def $x8 killed $w8
	add	x8, x8, x9, lsl #32
	str	x8, [sp, #64]
	ldur	x8, [x29, #-72]
	ldr	x9, [sp, #64]
	add	x8, x8, x9
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-136]
	add	x8, x8, x9
	ldur	x9, [x29, #-80]
	add	x8, x8, x9
	str	x8, [sp, #48]
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #56]
	ldr	x10, [sp, #64]
	subs	x9, x9, x10
	cset	w9, lo
	and	w9, w9, #0x1
	lsr	w9, w9, #0
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-72]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	cset	w8, lo
	and	w8, w8, #0x1
	lsr	w9, w8, #0
	ldr	x8, [sp, #48]
	ldr	x10, [sp, #56]
	subs	x8, x8, x10
	cset	w10, eq
                                        ; implicit-def: $x8
	mov	x8, x10
	and	x8, x8, #0x1
	ldur	x10, [x29, #-80]
	mul	x8, x8, x10
	add	x8, x8, w9, sxtw
	stur	x8, [x29, #-80]
	ldr	x8, [sp, #48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-120]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEixB7v160006Em
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	b	LBB6_12
LBB6_12:                                ;   in Loop: Header=BB6_4 Depth=1
	ldur	x8, [x29, #-120]
	add	x8, x8, #1
	stur	x8, [x29, #-120]
	b	LBB6_4
LBB6_13:
	b	LBB6_14
LBB6_14:                                ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE4backB7v160006Ev
	ldr	x8, [x0]
	subs	x8, x8, #0
	cset	w8, ne
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB6_16
	b	LBB6_15
LBB6_15:                                ;   in Loop: Header=BB6_14 Depth=1
	ldur	x0, [x29, #-24]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	subs	x8, x0, #1
	cset	w8, hi
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB6_16
LBB6_16:                                ;   in Loop: Header=BB6_14 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB6_18
	b	LBB6_17
LBB6_17:                                ;   in Loop: Header=BB6_14 Depth=1
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE8pop_backEv
	b	LBB6_14
LBB6_18:
	ldp	x29, x30, [sp, #288]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #304
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE6resizeEmRKy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]
	subs	x1, x8, x9
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy
	b	LBB7_5
LBB7_2:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB7_4
	b	LBB7_3
LBB7_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-16]
	add	x1, x8, x9, lsl #3
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	b	LBB7_4
LBB7_4:
	b	LBB7_5
LBB7_5:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	stp	x28, x27, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x8, x29, #152
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	adrp	x9, __ZNSt3__14coutE@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x9, [sp, #88]                   ; 8-byte Folded Spill
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	stur	x9, [x29, #-24]
	str	wzr, [x8, #100]
	str	w0, [x8, #96]
	str	x1, [x8, #88]
	ldr	w8, [x8, #96]
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB8_2
	b	LBB8_1
LBB8_1:
	adrp	x0, l___func__.main@PAGE
	add	x0, x0, l___func__.main@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #83
	adrp	x3, l_.str.2@PAGE
	add	x3, x3, l_.str.2@PAGEOFF
	bl	___assert_rtn
LBB8_2:
	b	LBB8_3
LBB8_3:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x8, [x8, #88]
	ldr	x1, [x8, #8]
	sub	x0, x29, #96
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
Ltmp4:
	mov	x1, #0
	mov	w2, #10
	bl	__ZNSt3__16stoullERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp5:
	b	LBB8_4
LBB8_4:
	sub	x0, x29, #96
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	str	x9, [x8, #80]
	ldr	x8, [x8, #80]
	mov	x9, #32320
	movk	x9, #5630, lsl #16
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB8_7
	b	LBB8_5
LBB8_5:
	adrp	x0, l___func__.main@PAGE
	add	x0, x0, l___func__.main@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #86
	adrp	x3, l_.str.3@PAGE
	add	x3, x3, l_.str.3@PAGEOFF
	bl	___assert_rtn
LBB8_6:
Ltmp6:
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	str	x0, [x9, #48]
	mov	x8, x1
	str	w8, [x9, #44]
	sub	x0, x29, #96
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB8_44
LBB8_7:
	b	LBB8_8
LBB8_8:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	sub	x10, x29, #32
	mov	x9, #1
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	str	x9, [x8, #120]
	str	x10, [x8]
	str	x9, [x8, #8]
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
	ldr	x10, [sp, #80]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	sub	x9, x29, #40
	str	xzr, [x10, #112]
	stur	x9, [x29, #-192]
	stur	x8, [x29, #-184]
	ldur	x1, [x29, #-192]
	ldur	x2, [x29, #-184]
Ltmp7:
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
Ltmp8:
	b	LBB8_9
LBB8_9:
	ldr	x10, [sp, #80]                  ; 8-byte Folded Reload
	sub	x9, x29, #48
	mov	x8, #1
	str	x8, [x10, #104]
	str	x9, [sp, #168]
	str	x8, [sp, #176]
	ldr	x1, [sp, #168]
	ldr	x2, [sp, #176]
Ltmp10:
	add	x0, sp, #184
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
Ltmp11:
	b	LBB8_10
LBB8_10:
	add	x0, sp, #144
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev
	mov	x8, #5
	str	x8, [sp, #136]
	mov	x8, #300
	str	x8, [sp, #128]
	mov	x8, #30
	str	x8, [sp, #120]
	mov	x8, #3
	str	x8, [sp, #112]
	mov	x8, #1
	str	x8, [sp, #104]
	b	LBB8_11
LBB8_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_14 Depth 2
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #104]
	ldr	x9, [x9, #80]
	subs	x8, x8, x9
	cset	w8, hi
	tbnz	w8, #0, LBB8_37
	b	LBB8_12
LBB8_12:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x2, [sp, #112]
Ltmp17:
	sub	x3, x29, #176
	mov	x0, x3
	sub	x1, x29, #136
	bl	__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
Ltmp18:
	b	LBB8_13
LBB8_13:                                ;   in Loop: Header=BB8_11 Depth=1
	mov	w8, #48
	strb	w8, [sp, #103]
	b	LBB8_14
LBB8_14:                                ;   Parent Loop BB8_11 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
Ltmp19:
	sub	x0, x29, #176
	add	x1, sp, #184
	bl	__Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_
	str	w0, [sp, #52]                   ; 4-byte Folded Spill
Ltmp20:
	b	LBB8_15
LBB8_15:                                ;   in Loop: Header=BB8_14 Depth=2
	ldr	w8, [sp, #52]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB8_20
	b	LBB8_16
LBB8_16:                                ;   in Loop: Header=BB8_14 Depth=2
	ldrsb	w8, [sp, #103]
	add	w8, w8, #1
	strb	w8, [sp, #103]
	b	LBB8_14
LBB8_17:
Ltmp9:
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	str	x0, [x9, #48]
	mov	x8, x1
	str	w8, [x9, #44]
	b	LBB8_43
LBB8_18:
Ltmp12:
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	str	x0, [x9, #48]
	mov	x8, x1
	str	w8, [x9, #44]
	b	LBB8_42
LBB8_19:
Ltmp41:
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	str	x0, [x9, #48]
	mov	x8, x1
	str	w8, [x9, #44]
	add	x0, sp, #184
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	b	LBB8_42
LBB8_20:                                ;   in Loop: Header=BB8_11 Depth=1
	ldrsb	w8, [sp, #103]
	subs	w8, w8, #57
	cset	w8, le
	tbnz	w8, #0, LBB8_23
	b	LBB8_21
LBB8_21:
Ltmp39:
	adrp	x0, l___func__.main@PAGE
	add	x0, x0, l___func__.main@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #106
	adrp	x3, l_.str.4@PAGE
	add	x3, x3, l_.str.4@PAGEOFF
	bl	___assert_rtn
Ltmp40:
	b	LBB8_22
LBB8_22:
	brk	#0x1
LBB8_23:                                ;   in Loop: Header=BB8_11 Depth=1
	b	LBB8_24
LBB8_24:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldrsb	w1, [sp, #103]
Ltmp21:
	bl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
Ltmp22:
	b	LBB8_25
LBB8_25:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x2, [sp, #136]
Ltmp23:
	sub	x1, x29, #136
	mov	x0, x1
	add	x3, sp, #144
	bl	__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
Ltmp24:
	b	LBB8_26
LBB8_26:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x2, [sp, #128]
Ltmp25:
	sub	x1, x29, #176
	mov	x0, x1
	add	x3, sp, #144
	bl	__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
Ltmp26:
	b	LBB8_27
LBB8_27:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x2, [sp, #120]
Ltmp27:
	add	x1, sp, #184
	mov	x0, x1
	add	x3, sp, #144
	bl	__Z5saxpyRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_yS6_
Ltmp28:
	b	LBB8_28
LBB8_28:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x9, [sp, #104]
	mov	x8, #20
	mul	x8, x8, x9
	add	x9, x8, #5
	ldr	x8, [sp, #136]
	add	x8, x8, x9
	str	x8, [sp, #136]
	ldr	x8, [sp, #104]
	add	x9, x8, #1
	mov	x8, #270
	mul	x9, x8, x9
	ldr	x8, [sp, #128]
	add	x8, x8, x9
	str	x8, [sp, #128]
	ldr	x8, [sp, #104]
	add	x9, x8, #1
	mov	x8, #27
	mul	x9, x8, x9
	ldr	x8, [sp, #120]
	add	x8, x8, x9
	str	x8, [sp, #120]
	ldr	x8, [sp, #112]
	add	x8, x8, #5
	str	x8, [sp, #112]
	ldr	x8, [sp, #104]
	mov	x10, #128
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB8_35
	b	LBB8_29
LBB8_29:                                ;   in Loop: Header=BB8_11 Depth=1
Ltmp29:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp30:
	b	LBB8_30
LBB8_30:                                ;   in Loop: Header=BB8_11 Depth=1
Ltmp31:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
Ltmp32:
	b	LBB8_31
LBB8_31:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x1, [sp, #104]
Ltmp33:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp34:
	b	LBB8_32
LBB8_32:                                ;   in Loop: Header=BB8_11 Depth=1
Ltmp35:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp36:
	b	LBB8_33
LBB8_33:                                ;   in Loop: Header=BB8_11 Depth=1
Ltmp37:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
Ltmp38:
	b	LBB8_34
LBB8_34:                                ;   in Loop: Header=BB8_11 Depth=1
	b	LBB8_35
LBB8_35:                                ;   in Loop: Header=BB8_11 Depth=1
	b	LBB8_36
LBB8_36:                                ;   in Loop: Header=BB8_11 Depth=1
	ldr	x8, [sp, #104]
	add	x8, x8, #1
	str	x8, [sp, #104]
	b	LBB8_11
LBB8_37:
Ltmp13:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp14:
	b	LBB8_38
LBB8_38:
Ltmp15:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGE
	add	x1, x1, __ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
Ltmp16:
	b	LBB8_39
LBB8_39:
	add	x0, sp, #184
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldr	w8, [x8, #100]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB8_41
	b	LBB8_40
LBB8_40:
	bl	___stack_chk_fail
LBB8_41:
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #384]            ; 16-byte Folded Reload
	add	sp, sp, #416
	ret
LBB8_42:
	sub	x0, x29, #176
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	b	LBB8_43
LBB8_43:
	sub	x0, x29, #136
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	b	LBB8_44
LBB8_44:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #48]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp4-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.uleb128 Ltmp6-Lfunc_begin0             ;     jumps to Ltmp6
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp5                    ;   Call between Ltmp5 and Ltmp7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0            ;     jumps to Ltmp12
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp16-Ltmp17                  ;   Call between Ltmp17 and Ltmp16
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp16              ;   Call between Ltmp16 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006IDnEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006ESt16initializer_listIyE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ; -- Begin function _ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.globl	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	2
__ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ; @_ZNSt3__1lsB7v160006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	str	x0, [sp, #8]
	add	x1, sp, #7
	strb	w8, [sp, #7]
	ldr	x0, [sp, #8]
	mov	x2, #1
	bl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB7v160006EPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	mov	w1, #10
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sxtb	w1, w8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__15flushB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
Ltmp42:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy
Ltmp43:
	b	LBB17_1
LBB17_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB17_2:
Ltmp44:
	bl	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp42-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin1            ;     jumps to Ltmp44
	.byte	1                               ;   On action: 1
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE27__invalidate_iterators_pastB7v160006EPy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB20_1
LBB20_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB20_4
	b	LBB20_2
LBB20_2:                                ;   in Loop: Header=BB20_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp46:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_
Ltmp47:
	b	LBB20_3
LBB20_3:                                ;   in Loop: Header=BB20_1 Depth=1
	b	LBB20_1
LBB20_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB20_5:
Ltmp48:
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp46-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin2            ;     jumps to Ltmp48
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_shrinkB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x1, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x13, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #32]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	add	x2, x12, x13, lsl #3
	add	x3, x10, x11, lsl #3
	add	x4, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	.globl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IyEEPT_S2_: ; @_ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_ ; -- Begin function _ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_
	.globl	__ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_
	.weak_definition	__ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_
	.p2align	2
__ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_: ; @_ZNSt3__110destroy_atB7v160006IyLi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_ ; -- Begin function _ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_
	.globl	__ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_
	.weak_definition	__ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_
	.p2align	2
__ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_: ; @_ZNSt3__112__destroy_atB7v160006IyLi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_ ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEmRKy
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB35_2
	b	LBB35_1
LBB35_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy
	b	LBB35_6
LBB35_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	add	x1, x8, x9
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-32]
	add	x0, sp, #40
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
Ltmp54:
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy
Ltmp55:
	b	LBB35_3
LBB35_3:
Ltmp56:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #40
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
Ltmp57:
	b	LBB35_4
LBB35_4:
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	b	LBB35_6
LBB35_5:
Ltmp58:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	b	LBB35_7
LBB35_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB35_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table35:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp54-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp54
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp57-Ltmp54                  ;   Call between Ltmp54 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin3            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp57              ;   Call between Ltmp57 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endEmRKy
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	ldr	x8, [sp, #64]
	str	x8, [sp, #40]
	ldr	x8, [sp, #56]
	str	x8, [sp, #32]
	b	LBB37_1
LBB37_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB37_6
	b	LBB37_2
LBB37_2:                                ;   in Loop: Header=BB37_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
Ltmp59:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_
Ltmp60:
	b	LBB37_3
LBB37_3:                                ;   in Loop: Header=BB37_1 Depth=1
	b	LBB37_4
LBB37_4:                                ;   in Loop: Header=BB37_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	mov	x9, x8
	str	x9, [sp, #32]
	str	x8, [sp, #56]
	b	LBB37_1
LBB37_5:
Ltmp61:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	b	LBB37_7
LBB37_6:
	add	x0, sp, #48
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB37_7:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table37:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp59-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp59
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin4            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp60              ;   Call between Ltmp60 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE11__recommendB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB38_2
	b	LBB38_1
LBB38_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
LBB38_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB38_4
	b	LBB38_3
LBB38_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB38_5
LBB38_4:
	ldr	x9, [sp, #24]
	mov	x8, #2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB38_5
LBB38_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC1EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE18__construct_at_endEmRKy
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-16]
	add	x0, sp, #32
	add	x1, x8, #16
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym
	b	LBB40_1
LBB40_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB40_6
	b	LBB40_2
LBB40_2:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
Ltmp62:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_
Ltmp63:
	b	LBB40_3
LBB40_3:                                ;   in Loop: Header=BB40_1 Depth=1
	b	LBB40_4
LBB40_4:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #8
	str	x8, [sp, #32]
	b	LBB40_1
LBB40_5:
Ltmp64:
	str	x0, [sp, #24]
	mov	x8, x1
	str	w8, [sp, #20]
	add	x0, sp, #32
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	b	LBB40_7
LBB40_6:
	add	x0, sp, #32
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB40_7:
	ldr	x0, [sp, #24]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table40:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp62-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin5            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Lfunc_end5-Ltmp63              ;   Call between Ltmp63 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE26__swap_out_circular_bufferERNS_14__split_bufferIyRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [x8, #8]
	sub	x0, x29, #48
	bl	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	add	x0, sp, #48
	bl	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	add	x0, sp, #32
	bl	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-40]
	ldr	x3, [sp, #48]
	ldr	x4, [sp, #56]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #40]
	bl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	stur	x1, [x29, #-24]
	bl	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE9constructB7v160006IyJRKyEvvEEvRS2_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_
	.globl	__ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_: ; @_ZNSt3__112construct_atB7v160006IyJRKyEPyEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp69:
	bl	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp70:
	b	LBB51_1
LBB51_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB51_2:
Ltmp71:
	bl	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table51:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp69-Lfunc_begin6            ; >> Call Site 1 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin6            ;     jumps to Ltmp71
	.byte	1                               ;   On action: 1
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB7v160006ImEERKT_S3_S3_:  ; @_ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB7v160006ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB7v160006ImEERKT_S3_S3_:  ; @_ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxB7v160006Ev
	mov	x8, #8
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	tbz	w0, #0, LBB58_2
	b	LBB58_1
LBB58_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB58_3
LBB58_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB58_3
LBB58_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_ ; -- Begin function _ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.globl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.weak_definition	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.p2align	2
__ZNKSt3__16__lessImmEclB7v160006ERKmS3_: ; @_ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsImE3maxB7v160006Ev ; -- Begin function _ZNSt3__114numeric_limitsImE3maxB7v160006Ev
	.globl	__ZNSt3__114numeric_limitsImE3maxB7v160006Ev
	.weak_definition	__ZNSt3__114numeric_limitsImE3maxB7v160006Ev
	.p2align	2
__ZNSt3__114numeric_limitsImE3maxB7v160006Ev: ; @_ZNSt3__114numeric_limitsImE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPyNS_9allocatorIyEEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB7v160006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB7v160006EPKc
	.globl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB7v160006EPKc: ; @_ZNSt3__120__throw_length_errorB7v160006EPKc
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp74:
	bl	__ZNSt12length_errorC1B7v160006EPKc
Ltmp75:
	b	LBB65_1
LBB65_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB65_2:
Ltmp76:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB65_3
LBB65_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table65:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp74-Lfunc_begin7            ;   Call between Lfunc_begin7 and Ltmp74
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp75-Ltmp74                  ;   Call between Ltmp74 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin7            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp75              ;   Call between Ltmp75 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B7v160006EPKc ; -- Begin function _ZNSt12length_errorC1B7v160006EPKc
	.globl	__ZNSt12length_errorC1B7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B7v160006EPKc
	.p2align	2
__ZNSt12length_errorC1B7v160006EPKc:    ; @_ZNSt12length_errorC1B7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B7v160006EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B7v160006EPKc ; -- Begin function _ZNSt12length_errorC2B7v160006EPKc
	.globl	__ZNSt12length_errorC2B7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B7v160006EPKc
	.p2align	2
__ZNSt12length_errorC2B7v160006EPKc:    ; @_ZNSt12length_errorC2B7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	tbz	w0, #0, LBB68_2
	b	LBB68_1
LBB68_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB68_3
LBB68_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB68_3
LBB68_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEEC2EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x1, sp, #32
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB69_2
	b	LBB69_1
LBB69_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB69_3
LBB69_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB69_3
LBB69_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC1B7v160006IDnS4_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIyE8allocateB7v160006Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEEC2B7v160006IDnS4_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EEC2B7v160006IS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyE8allocateB7v160006Em ; -- Begin function _ZNSt3__19allocatorIyE8allocateB7v160006Em
	.globl	__ZNSt3__19allocatorIyE8allocateB7v160006Em
	.weak_definition	__ZNSt3__19allocatorIyE8allocateB7v160006Em
	.p2align	2
__ZNSt3__19allocatorIyE8allocateB7v160006Em: ; @_ZNSt3__19allocatorIyE8allocateB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE8max_sizeB7v160006IS2_vvEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB77_2
	b	LBB77_1
LBB77_1:
	bl	__ZSt28__throw_bad_array_new_lengthB7v160006v
LBB77_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #3
	mov	x1, #8
	bl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB7v160006v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB7v160006v
	.globl	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB7v160006v: ; @_ZSt28__throw_bad_array_new_lengthB7v160006v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB7v160006Emm ; -- Begin function _ZNSt3__117__libcpp_allocateB7v160006Emm
	.globl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.weak_definition	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.p2align	2
__ZNSt3__117__libcpp_allocateB7v160006Emm: ; @_ZNSt3__117__libcpp_allocateB7v160006Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB7v160006Em
	tbz	w0, #0, LBB79_2
	b	LBB79_1
LBB79_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	__ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB79_3
LBB79_2:
	ldr	x0, [sp, #16]
	bl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB79_3
LBB79_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__is_overaligned_for_newB7v160006Em ; -- Begin function _ZNSt3__124__is_overaligned_for_newB7v160006Em
	.globl	__ZNSt3__124__is_overaligned_for_newB7v160006Em
	.weak_definition	__ZNSt3__124__is_overaligned_for_newB7v160006Em
	.p2align	2
__ZNSt3__124__is_overaligned_for_newB7v160006Em: ; @_ZNSt3__124__is_overaligned_for_newB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #16
	cset	w8, hi
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB7v160006IJmSt11align_val_tEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZnwmSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIyEELi1ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006EPPym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionC2B7v160006EPPym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE21_ConstructTransactionD2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	ldr	x9, [x0, #16]
	str	x8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x1, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4sizeB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	add	x2, x12, x13, lsl #3
	add	x3, x10, x11, lsl #3
	add	x4, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_ ; -- Begin function _ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_
	.globl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_
	.weak_definition	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_
	.p2align	2
__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_: ; @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorIyEENS_16reverse_iteratorIPyEES5_yvEET1_RT_T0_S9_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-48]
	stur	x4, [x29, #-40]
	str	x5, [sp, #64]
	str	x6, [sp, #72]
	str	x0, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldr	q0, [sp, #64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	.globl	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_: ; @_ZNSt3__116reverse_iteratorIPyEC1B7v160006ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB7v160006IPyEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em ; -- Begin function _ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	.globl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	.weak_definition	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	.p2align	2
__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em: ; @_ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x1, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE4dataB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	add	x2, x12, x13, lsl #3
	add	x3, x10, x11, lsl #3
	add	x4, x8, x9, lsl #3
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE31__annotate_contiguous_containerB7v160006EPKvS5_S5_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_ ; -- Begin function _ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.globl	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.weak_definition	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.p2align	2
__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_: ; @_ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_ ; -- Begin function _ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_
	.globl	__ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_
	.weak_definition	__ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_
	.p2align	2
__ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_: ; @_ZNSt3__14moveB7v160006INS_16reverse_iteratorIPyEES3_EET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldur	q0, [x29, #-64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	add	x8, sp, #48
	bl	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	ldr	q0, [sp, #64]
	stur	q0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__16__moveB7v160006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPyEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: ; @_ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPyEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.globl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_: ; @_ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPyEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #368
	.cfi_def_cfa_offset 368
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-112]
	ldur	q0, [x29, #-48]
	stur	q0, [x29, #-128]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-104]
	ldur	x2, [x29, #-128]
	ldur	x3, [x29, #-120]
	sub	x8, x29, #96
	bl	__ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_
	ldur	q0, [x29, #-96]
	str	q0, [sp, #160]
	ldur	q0, [x29, #-80]
	str	q0, [sp, #144]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #112]
	ldr	x0, [sp, #112]
	ldr	x1, [sp, #120]
	bl	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x1, [sp, #160]
	ldr	x2, [sp, #168]
	ldr	x3, [sp, #144]
	ldr	x4, [sp, #152]
	ldr	x5, [sp, #128]
	ldr	x6, [sp, #136]
	sub	x8, x29, #160
	sub	x0, x29, #161
	bl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	ldur	q0, [x29, #-32]
	str	q0, [sp, #80]
	ldur	q0, [x29, #-160]
	str	q0, [sp, #64]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #72]
	bl	__ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_
	add	x8, sp, #96
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #96]
	str	x1, [sp, #104]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-144]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x1
	add	x1, sp, #48
	str	x10, [sp, #48]
	str	x9, [sp, #56]
	bl	__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_ ; -- Begin function _ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.weak_definition	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.p2align	2
__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: ; @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB7v160006INS_16reverse_iteratorIPyEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-24]
	str	x5, [sp, #48]
	str	x6, [sp, #56]
	str	x0, [sp, #40]
	b	LBB102_1
LBB102_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #16
	sub	x1, x29, #32
	bl	__ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	tbz	w0, #0, LBB102_3
	b	LBB102_2
LBB102_2:                               ;   in Loop: Header=BB102_1 Depth=1
	sub	x0, x29, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	bl	__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	b	LBB102_1
LBB102_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	sub	x0, x29, #16
	add	x1, sp, #48
	bl	__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_ ; -- Begin function _ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.globl	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.weak_definition	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.p2align	2
__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_: ; @_ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_ ; -- Begin function _ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.globl	__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.weak_definition	__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.p2align	2
__ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_: ; @_ZNSt3__19make_pairB7v160006INS_16reverse_iteratorIPyEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_
	.globl	__ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_: ; @_ZNSt3__114__rewrap_rangeB7v160006INS_16reverse_iteratorIPyEES3_S3_EET0_S4_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.globl	__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_: ; @_ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #48]
	str	x3, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldr	q0, [sp, #48]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
Ltmp86:
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_
	str	x0, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp87:
	b	LBB106_1
LBB106_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	stur	x9, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB106_2:
Ltmp88:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table106:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp86-Lfunc_begin8            ; >> Call Site 1 <<
	.uleb128 Ltmp87-Ltmp86                  ;   Call between Ltmp86 and Ltmp87
	.uleb128 Ltmp88-Lfunc_begin8            ;     jumps to Ltmp88
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__unwrapB7v160006ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	sub	x8, x29, #48
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__unwrap_iterB7v160006INS_16reverse_iteratorIPyEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #32
	str	x9, [sp, #32]
	str	x8, [sp, #40]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC1B7v160006IS3_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPyEES3_EC2B7v160006IS3_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	str	q0, [x0]
	ldr	x8, [sp, #8]
	ldr	q0, [x8]
	str	q0, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE ; -- Begin function _ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.globl	__ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.weak_definition	__ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.p2align	2
__ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE: ; @_ZNSt3__1neB7v160006IPyS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPyE4baseB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB7v160006IRNS_16reverse_iteratorIPyEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorIPyEdeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #8
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	.globl	__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPyEppB7v160006Ev: ; @_ZNSt3__116reverse_iteratorIPyEppB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #8
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB7v160006IRNS_16reverse_iteratorIPyEEEEvv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__unwrapB7v160006ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPyEES3_E8__rewrapB7v160006ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__113__rewrap_iterB7v160006INS_16reverse_iteratorIPyEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPyEELb0EE8__rewrapB7v160006ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_
	.globl	__ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_: ; @_ZNSt3__116reverse_iteratorIPyEC2B7v160006ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEED2Ev
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB119_3
	b	LBB119_1
LBB119_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp95:
	bl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp96:
	b	LBB119_2
LBB119_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	b	LBB119_3
LBB119_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB119_4:
Ltmp97:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table119:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp95-Lfunc_begin9            ; >> Call Site 1 <<
	.uleb128 Ltmp96-Ltmp95                  ;   Call between Ltmp95 and Ltmp96
	.uleb128 Ltmp97-Lfunc_begin9            ;     jumps to Ltmp97
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE5clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym: ; @_ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIyE10deallocateB7v160006EPym
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev: ; @_ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE17__destruct_at_endB7v160006EPyNS_17integral_constantIbLb0EEE
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB124_1
LBB124_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB124_4
	b	LBB124_2
LBB124_2:                               ;   in Loop: Header=BB124_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIyRNS_9allocatorIyEEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp98:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE7destroyB7v160006IyvvEEvRS2_PT_
Ltmp99:
	b	LBB124_3
LBB124_3:                               ;   in Loop: Header=BB124_1 Depth=1
	b	LBB124_1
LBB124_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB124_5:
Ltmp100:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table124:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp98-Lfunc_begin10           ; >> Call Site 1 <<
	.uleb128 Ltmp99-Ltmp98                  ;   Call between Ltmp98 and Ltmp99
	.uleb128 Ltmp100-Lfunc_begin10          ;     jumps to Ltmp100
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorIyE10deallocateB7v160006EPym ; -- Begin function _ZNSt3__19allocatorIyE10deallocateB7v160006EPym
	.globl	__ZNSt3__19allocatorIyE10deallocateB7v160006EPym
	.weak_definition	__ZNSt3__19allocatorIyE10deallocateB7v160006EPym
	.p2align	2
__ZNSt3__19allocatorIyE10deallocateB7v160006EPym: ; @_ZNSt3__19allocatorIyE10deallocateB7v160006EPym
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #3
Ltmp101:
	mov	x2, #8
	bl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
Ltmp102:
	b	LBB125_1
LBB125_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB125_2:
Ltmp103:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table125:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp101-Lfunc_begin11          ; >> Call Site 1 <<
	.uleb128 Ltmp102-Ltmp101                ;   Call between Ltmp101 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin11          ;     jumps to Ltmp103
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm ; -- Begin function _ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.globl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB7v160006EPvmm: ; @_ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB7v160006Em
	tbz	w0, #0, LBB126_2
	b	LBB126_1
LBB126_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_
	b	LBB126_3
LBB126_2:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	b	LBB126_3
LBB126_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB7v160006IJSt11align_val_tEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB7v160006IJPvSt11align_val_tEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZdlPvSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev: ; @_ZNKSt3__114__split_bufferIyRNS_9allocatorIyEEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPyRNS_9allocatorIyEEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPyLi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006IDnEEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x1, x29, #17
	sub	x2, x29, #18
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__111char_traitsIcE6lengthEPKc
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthEPKc:  ; @_ZNSt3__111char_traitsIcE6lengthEPKc
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp104:
	bl	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp105:
	b	LBB135_1
LBB135_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB135_2:
Ltmp106:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table135:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp104-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp105-Ltmp104                ;   Call between Ltmp104 and Ltmp105
	.uleb128 Ltmp106-Lfunc_begin12          ;     jumps to Ltmp106
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_ ; -- Begin function _ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.globl	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.weak_definition	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.p2align	2
__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_: ; @_ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorIcEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B7v160006Ev:   ; @_ZNSt3__19allocatorIcEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB7v160006EPKc ; -- Begin function _ZNSt3__118__constexpr_strlenB7v160006EPKc
	.globl	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	.weak_definition	__ZNSt3__118__constexpr_strlenB7v160006EPKc
	.p2align	2
__ZNSt3__118__constexpr_strlenB7v160006EPKc: ; @_ZNSt3__118__constexpr_strlenB7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006ESt16initializer_listIyE
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-16]
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	sub	x1, x29, #40
	stur	xzr, [x29, #-40]
	add	x0, x8, #16
	sub	x2, x29, #41
	bl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	add	x0, sp, #56
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_
	ldr	x0, [sp, #56]
	add	x8, sp, #64
	bl	__ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
Ltmp110:
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
Ltmp111:
	b	LBB143_1
LBB143_1:
	sub	x0, x29, #24
	bl	__ZNKSt16initializer_listIyE4sizeB7v160006Ev
	subs	x8, x0, #0
	cset	w8, ls
	tbnz	w8, #0, LBB143_6
	b	LBB143_2
LBB143_2:
	sub	x0, x29, #24
	bl	__ZNKSt16initializer_listIyE4sizeB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
Ltmp112:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em
Ltmp113:
	b	LBB143_3
LBB143_3:
	sub	x0, x29, #24
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIyE5beginB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIyE3endB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIyE4sizeB7v160006Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
Ltmp114:
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m
Ltmp115:
	b	LBB143_4
LBB143_4:
	b	LBB143_6
LBB143_5:
Ltmp116:
	str	x0, [sp, #48]
	mov	x8, x1
	str	w8, [sp, #44]
	add	x0, sp, #64
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	b	LBB143_7
LBB143_6:
	add	x0, sp, #64
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB143_7:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table143:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Lfunc_begin13-Lfunc_begin13    ; >> Call Site 1 <<
	.uleb128 Ltmp110-Lfunc_begin13          ;   Call between Lfunc_begin13 and Ltmp110
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin13          ; >> Call Site 2 <<
	.uleb128 Ltmp115-Ltmp110                ;   Call between Ltmp110 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin13          ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin13          ; >> Call Site 3 <<
	.uleb128 Lfunc_end13-Ltmp115            ;   Call between Ltmp115 and Lfunc_end13
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB7v160006INS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_ ; -- Begin function _ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.globl	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.weak_definition	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.p2align	2
__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_: ; @_ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIyE4sizeB7v160006Ev ; -- Begin function _ZNKSt16initializer_listIyE4sizeB7v160006Ev
	.globl	__ZNKSt16initializer_listIyE4sizeB7v160006Ev
	.weak_definition	__ZNKSt16initializer_listIyE4sizeB7v160006Ev
	.p2align	2
__ZNKSt16initializer_listIyE4sizeB7v160006Ev: ; @_ZNKSt16initializer_listIyE4sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE11__vallocateB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB149_2
	b	LBB149_1
LBB149_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE20__throw_length_errorB7v160006Ev
LBB149_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorIyEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]
	str	x1, [sp, #40]
	ldr	x8, [sp, #32]
	str	x8, [x0]
	ldr	x8, [sp, #32]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #40]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE9__end_capB7v160006Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x1, #0
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE14__annotate_newB7v160006Em
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE18__construct_at_endIPKyLi0EEEvT_S7_m
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionC1B7v160006ERS3_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp119:
	bl	__ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp120:
	b	LBB150_1
LBB150_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB150_2:
Ltmp121:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE21_ConstructTransactionD1B7v160006Ev
	b	LBB150_3
LBB150_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table150:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ; >> Call Site 1 <<
	.uleb128 Ltmp119-Lfunc_begin14          ;   Call between Lfunc_begin14 and Ltmp119
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin14          ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp120-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp120            ;   Call between Ltmp120 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt16initializer_listIyE5beginB7v160006Ev ; -- Begin function _ZNKSt16initializer_listIyE5beginB7v160006Ev
	.globl	__ZNKSt16initializer_listIyE5beginB7v160006Ev
	.weak_definition	__ZNKSt16initializer_listIyE5beginB7v160006Ev
	.p2align	2
__ZNKSt16initializer_listIyE5beginB7v160006Ev: ; @_ZNKSt16initializer_listIyE5beginB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt16initializer_listIyE3endB7v160006Ev ; -- Begin function _ZNKSt16initializer_listIyE3endB7v160006Ev
	.globl	__ZNKSt16initializer_listIyE3endB7v160006Ev
	.weak_definition	__ZNKSt16initializer_listIyE3endB7v160006Ev
	.p2align	2
__ZNKSt16initializer_listIyE3endB7v160006Ev: ; @_ZNKSt16initializer_listIyE3endB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEE10__completeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPyLi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIyEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIyEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIyEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorIyEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorIyEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIyEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorIyEC2B7v160006Ev:   ; @_ZNSt3__19allocatorIyEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIyEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC1B7v160006ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEEC2B7v160006ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_ ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC2ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_: ; @_ZNSt3__130__uninitialized_allocator_copyB7v160006INS_9allocatorIyEEyyLPv0EEEPT0_RT_PKS4_S9_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_ ; -- Begin function _ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_
	.globl	__ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_
	.weak_definition	__ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_
	.p2align	2
__ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_: ; @_ZNSt3__14copyB7v160006IPKyPyEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__16__copyB7v160006INS_17_ClassicAlgPolicyEPKyS3_PyEENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_: ; @_ZNSt3__123__dispatch_copy_or_moveB7v160006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKyS6_PyEENS_4pairIT2_T4_EES9_T3_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_
	.globl	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_: ; @_ZNSt3__121__unwrap_and_dispatchB7v160006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKyS8_PyLi0EEENS_4pairIT0_T2_EESB_T1_SC_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB7v160006IPKyS2_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_ ; -- Begin function _ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.globl	__ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.weak_definition	__ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.p2align	2
__ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_: ; @_ZNKSt3__114__copy_trivialclB7v160006IKyyLi0EEENS_4pairIPT_PT0_EES5_S5_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB7v160006IPyNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_ ; -- Begin function _ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.globl	__ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.weak_definition	__ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.p2align	2
__ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_: ; @_ZNSt3__19make_pairB7v160006IPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_
	.globl	__ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_: ; @_ZNSt3__114__rewrap_rangeB7v160006IPKyS2_S2_EET0_S3_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB7v160006IPyS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp128:
	bl	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp129:
	b	LBB172_1
LBB172_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB172_2:
Ltmp130:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table172:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp128-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin15          ;     jumps to Ltmp130
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_
	.globl	__ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_: ; @_ZNSt3__119__unwrap_range_implIPKyS2_E8__unwrapB7v160006ES2_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #16
	str	x0, [sp, #16]
	sub	x0, x29, #16
	bl	__ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_ ; -- Begin function _ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.globl	__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.weak_definition	__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.p2align	2
__ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_: ; @_ZNSt3__113__unwrap_iterB7v160006IPKyNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyS2_EC1B7v160006IS2_S2_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_: ; @_ZNSt3__118__unwrap_iter_implIPKyLb1EE8__unwrapB7v160006ES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	.globl	__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_: ; @_ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyS2_EC2B7v160006IS2_S2_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNSt3__119__copy_trivial_implB7v160006IKyyEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x8, [sp, #16]
	lsl	x2, x8, #3
	bl	_memmove
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_ ; -- Begin function _ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.globl	__ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.weak_definition	__ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.p2align	2
__ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_: ; @_ZNSt3__19make_pairB7v160006IRPKyPyEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyPyEC1B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyPyEC2B7v160006IRS2_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_: ; @_ZNSt3__118__unwrap_iter_implIPyLb1EE8__unwrapB7v160006ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyPyEC1B7v160006IS2_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIPKyPyEC2B7v160006IS2_S3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_
	.globl	__ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_: ; @_ZNSt3__119__unwrap_range_implIPKyS2_E8__rewrapB7v160006ES2_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.globl	__ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_: ; @_ZNSt3__113__rewrap_iterB7v160006IPKyS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
Ltmp135:
	bl	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp136:
	b	LBB187_1
LBB187_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB187_2:
Ltmp137:
	bl	___clang_call_terminate
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table187:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Ltmp135-Lfunc_begin16          ; >> Call Site 1 <<
	.uleb128 Ltmp136-Ltmp135                ;   Call between Ltmp135 and Ltmp136
	.uleb128 Ltmp137-Lfunc_begin16          ;     jumps to Ltmp137
	.byte	1                               ;   On action: 1
Lcst_end16:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_
	.globl	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_: ; @_ZNSt3__118__unwrap_iter_implIPKyLb1EE8__rewrapB7v160006ES2_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB7v160006IKyEEPT_S3_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPyLb1EE8__rewrapB7v160006ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB7v160006IyEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIyNS_9allocatorIyEEE16__destroy_vectorEED2B7v160006Ev
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB190_3
	b	LBB190_1
LBB190_1:
Ltmp138:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
Ltmp139:
	b	LBB190_2
LBB190_2:
	b	LBB190_3
LBB190_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB190_4:
Ltmp140:
	bl	___clang_call_terminate
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table190:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp138-Lfunc_begin17          ; >> Call Site 1 <<
	.uleb128 Ltmp139-Ltmp138                ;   Call between Ltmp138 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin17          ;     jumps to Ltmp140
	.byte	1                               ;   On action: 1
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE17__annotate_deleteB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB191_2
	b	LBB191_1
LBB191_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIyNS_9allocatorIyEEE8capacityB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIyEEE10deallocateB7v160006ERS2_Pym
	b	LBB191_2
LBB191_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_ ; -- Begin function _ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.globl	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.weak_definition	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.p2align	2
__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_: ; @_ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev
	.weak_definition	__ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEE7__clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE22__base_destruct_at_endB7v160006EPy
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEEC2B7v160006Ev
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	add	x1, sp, #16
	str	xzr, [sp, #16]
Ltmp142:
	add	x0, x8, #16
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPyNS_9allocatorIyEEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
Ltmp143:
	b	LBB194_1
LBB194_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorIyNS_9allocatorIyEEEEEEvPT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB194_2:
Ltmp144:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table194:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp142-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp143-Ltmp142                ;   Call between Ltmp142 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin18          ;     jumps to Ltmp144
	.byte	1                               ;   On action: 1
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev ; -- Begin function _ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev
	.globl	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev: ; @_ZNSt3__16vectorIyNS_9allocatorIyEEED2B7v160006Ev
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp145:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorC1ERS3_
Ltmp146:
	b	LBB195_1
LBB195_1:
Ltmp147:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIyNS_9allocatorIyEEE16__destroy_vectorclB7v160006Ev
Ltmp148:
	b	LBB195_2
LBB195_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB195_3:
Ltmp149:
	bl	___clang_call_terminate
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table195:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Ltmp145-Lfunc_begin19          ; >> Call Site 1 <<
	.uleb128 Ltmp148-Ltmp145                ;   Call between Ltmp145 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin19          ;     jumps to Ltmp149
	.byte	1                               ;   On action: 1
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB7v160006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp150:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp151:
	b	LBB196_1
LBB196_1:
Ltmp153:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp154:
	b	LBB196_2
LBB196_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB196_18
	b	LBB196_3
LBB196_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp155:
	bl	__ZNKSt3__18ios_base5flagsB7v160006Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp156:
	b	LBB196_4
LBB196_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176
	and	w8, w8, w9
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB196_6
	b	LBB196_5
LBB196_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB196_7
LBB196_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB196_7
LBB196_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp157:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp158:
	b	LBB196_8
LBB196_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp159:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp160:
	b	LBB196_9
LBB196_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	tbz	w0, #0, LBB196_17
	b	LBB196_10
LBB196_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp161:
	mov	w1, #5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
Ltmp162:
	b	LBB196_11
LBB196_11:
	b	LBB196_17
LBB196_12:
Ltmp152:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB196_14
LBB196_13:
Ltmp163:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB196_14
LBB196_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp164:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp165:
	b	LBB196_15
LBB196_15:
	bl	___cxa_end_catch
	b	LBB196_16
LBB196_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB196_17:
	b	LBB196_18
LBB196_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB196_16
LBB196_19:
Ltmp166:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp167:
	bl	___cxa_end_catch
Ltmp168:
	b	LBB196_20
LBB196_20:
	b	LBB196_21
LBB196_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB196_22:
Ltmp169:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table196:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp150-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp151-Ltmp150                ;   Call between Ltmp150 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin20          ;     jumps to Ltmp152
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp153-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp162-Ltmp153                ;   Call between Ltmp153 and Ltmp162
	.uleb128 Ltmp163-Lfunc_begin20          ;     jumps to Ltmp163
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp162-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Ltmp164-Ltmp162                ;   Call between Ltmp162 and Ltmp164
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin20          ; >> Call Site 4 <<
	.uleb128 Ltmp165-Ltmp164                ;   Call between Ltmp164 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin20          ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin20          ; >> Call Site 5 <<
	.uleb128 Ltmp167-Ltmp165                ;   Call between Ltmp165 and Ltmp167
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin20          ; >> Call Site 6 <<
	.uleb128 Ltmp168-Ltmp167                ;   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin20          ;     jumps to Ltmp169
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp168-Lfunc_begin20          ; >> Call Site 7 <<
	.uleb128 Lfunc_end20-Ltmp168            ;   Call between Ltmp168 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB7v160006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB198_2
	b	LBB198_1
LBB198_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB198_23
LBB198_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB7v160006Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB198_4
	b	LBB198_3
LBB198_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB198_5
LBB198_4:
	str	xzr, [sp, #72]
	b	LBB198_5
LBB198_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB198_9
	b	LBB198_6
LBB198_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB198_8
	b	LBB198_7
LBB198_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB198_23
LBB198_8:
	b	LBB198_9
LBB198_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB198_18
	b	LBB198_10
LBB198_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp171:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp172:
	b	LBB198_11
LBB198_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB198_14
	b	LBB198_12
LBB198_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB198_15
LBB198_13:
Ltmp173:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB198_24
LBB198_14:
	str	wzr, [sp, #24]
	b	LBB198_15
LBB198_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB198_17
	b	LBB198_16
LBB198_16:
	b	LBB198_23
LBB198_17:
	b	LBB198_18
LBB198_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB198_22
	b	LBB198_19
LBB198_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB198_21
	b	LBB198_20
LBB198_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB198_23
LBB198_21:
	b	LBB198_22
LBB198_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0
	bl	__ZNSt3__18ios_base5widthB7v160006El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB198_23
LBB198_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB198_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table198:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp171-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp171
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin21          ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp172            ;   Call between Ltmp172 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B7v160006ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB7v160006Ev
	.globl	__ZNKSt3__18ios_base5flagsB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB7v160006Ev:  ; @_ZNKSt3__18ios_base5flagsB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	tbz	w0, #0, LBB201_2
	b	LBB201_1
LBB201_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB201_2
LBB201_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB7v160006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB7v160006Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5widthB7v160006Ev
	.globl	__ZNKSt3__18ios_base5widthB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB7v160006Ev:  ; @_ZNKSt3__18ios_base5widthB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB7v160006EPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B7v160006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	bl	__ZNSt3__112__to_addressB7v160006IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB7v160006El ; -- Begin function _ZNSt3__18ios_base5widthB7v160006El
	.globl	__ZNSt3__18ios_base5widthB7v160006El
	.weak_definition	__ZNSt3__18ios_base5widthB7v160006El
	.p2align	2
__ZNSt3__18ios_base5widthB7v160006El:   ; @_ZNSt3__18ios_base5widthB7v160006El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B7v160006Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B7v160006INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB7v160006IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB7v160006IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB7v160006IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB7v160006IcEEPT_S2_: ; @_ZNSt3__112__to_addressB7v160006IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	tbz	w0, #0, LBB211_2
	b	LBB211_1
LBB211_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB211_3
LBB211_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB211_3
LBB211_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	ands	w8, w8, #0xff
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB7v160006ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B7v160006ERNS_13basic_ostreamIcS2_EE
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp182:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp183:
	b	LBB220_1
LBB220_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB220_2:
Ltmp184:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table220:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp182-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin22          ;     jumps to Ltmp184
	.byte	1                               ;   On action: 1
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB7v160006Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB7v160006Ev
	.globl	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB7v160006Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB7v160006Ev:  ; @_ZNKSt3__18ios_base5rdbufB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ; -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	2
__ZNSt3__111char_traitsIcE3eofEv:       ; @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
; %bb.0:
	mov	w0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB7v160006Ec
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp187:
	bl	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp188:
	b	LBB225_1
LBB225_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp189:
	bl	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp190:
	b	LBB225_2
LBB225_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB225_3:
Ltmp191:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB225_4
LBB225_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table225:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Lfunc_begin23-Lfunc_begin23    ; >> Call Site 1 <<
	.uleb128 Ltmp187-Lfunc_begin23          ;   Call between Lfunc_begin23 and Ltmp187
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp187-Lfunc_begin23          ; >> Call Site 2 <<
	.uleb128 Ltmp190-Ltmp187                ;   Call between Ltmp187 and Ltmp190
	.uleb128 Ltmp191-Lfunc_begin23          ;     jumps to Ltmp191
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp190-Lfunc_begin23          ; >> Call Site 3 <<
	.uleb128 Lfunc_end23-Ltmp190            ;   Call between Ltmp190 and Lfunc_end23
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end23:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB7v160006INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB7v160006Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB7v160006Ec:  ; @_ZNKSt3__15ctypeIcE5widenB7v160006Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB7v160006Ej ; -- Begin function _ZNSt3__18ios_base8setstateB7v160006Ej
	.globl	__ZNSt3__18ios_base8setstateB7v160006Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB7v160006Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB7v160006Ej: ; @_ZNSt3__18ios_base8setstateB7v160006Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___func__._Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_: ; @__func__._Z6diffeqRNSt3__16vectorIyNS_9allocatorIyEEEERKS3_
	.asciz	"diffeq"

l_.str:                                 ; @.str
	.asciz	"pi3.cpp"

l_.str.1:                               ; @.str.1
	.asciz	"a[i + 1] != 0"

l___func__.main:                        ; @__func__.main
	.asciz	"main"

l_.str.2:                               ; @.str.2
	.asciz	"argc == 2"

l_.str.3:                               ; @.str.3
	.asciz	"N <= 369'000'000UL"

l_.str.4:                               ; @.str.4
	.asciz	"y <= '9'"

l_.str.5:                               ; @.str.5
	.asciz	"vector"

.subsections_via_symbols
