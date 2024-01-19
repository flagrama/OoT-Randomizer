deku_mouth_condition:
    lw      t5, 4(v1)               ; 0 = Adult, 1 = Child
    lb      t6, DUNGEONS_SHUFFLED
    or      t7, t5, t6
    beqz    t7, @@vanilla           ; If both adult and dungeons not shuffled, use vanilla behaviour.
    nop
    bnez    t5, @@vanilla           ; If child, use vanilla behaviour.
    nop
    lhu     t6, 0x0ED4(v1)          ; event_chk_inf[0]
    andi    t6, t6, 0x0010          ; "Showed Mido Sword & Shield"
    or      t6, t6, t5
    beqz    t6, @@vanilla           ; If both adult and haven't shown Mido the Sword and Shield, use vanilla behaviour.
    nop
    jr      ra
    li      t7, 1                   ; adult, dungeons shuffled, shown Mido the Sword and Shield, force mouth open.
@@vanilla:  ; while this overrides an age check, vanilla "func_808BC8B8" does its own age checks so can be relied on for vanilla behaviour.
    jr      ra
    li      t7, 0
