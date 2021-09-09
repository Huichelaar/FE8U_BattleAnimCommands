@ Play a songID based on character performing the animation.
@ Register values:
@   r0:   Free.
@   r1:   Free.
@   r2:   AIS X-value + somehing determined by 0x807290C(AIS). Keep before returning!
@   r3:   Free.
@   r4:   Output of 0x8072258.
@   r5:   0xFFFF.
@   r6:   AISSubjectID. 0 if left, 1 if right.
@   r7:   Not sure. One of the two halfwords at [0203E1D0] is given to 0x80723D4. r7 holds the output.
@   r8:   AIS of unit performing the animation.
@   r9:   target AIS.
@   r10:  Currently executing CommandID.
@   [sp]  0x100
@
@ Output:
@   r5: songID to be played. -1 if no song.
.thumb

mov   r5, r2            @ Location where sound should be played. Keep for later use.


@ Determine if ranged-crit or melee-crit.
@ Don't play sound if neither.
mov   r0, r8
ldrb  r0, [r0, #0x12]
cmp   r0, #0x1
beq   Melee
  cmp   r0, #0x3
  beq   Ranged
    b     NoSound

NoSound:
mov   r2, r5            @ Keep r2!
mov   r5, #0x1
neg   r5, r5
b     Return

Melee:
  mov   r7, #0x0
  b     L1
Ranged:
  mov   r7, #0x2
L1:

@ Determine charID
lsl   r0, r6, #0x2
ldr   r1, =LeftBattleStructPointer
ldr   r0, [r1, r0]
ldr   r0, [r0]
ldrb  r0, [r0, #0x4]    @ charID.

@ Determine songID
ldr   r1, =VoiceCommandTable
lsl   r0, #0x2
add   r0, r1
mov   r2, r5            @ Keep r2!
ldsh  r5, [r0, r7]


Return:
ldr   r0, =0x8072222
mov   r15, r0
