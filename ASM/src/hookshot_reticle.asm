hookshot_reticle_inject:
    ; save data
    addu  t2, $zero, v1

    ; call C function
    addu  a0, s1, $zero    ; play
    addiu a1, sp, 0x94     ; CollisionPoly

    jal   hookshot_reticle_color
    lw    a2, 0x90(sp)     ; bgId

    ; restore data
    addu  v1, $zero, t2
    ; displaced code
    lui t5, 0xdb06
    ori t5, t5, 0x18

    jr    ra