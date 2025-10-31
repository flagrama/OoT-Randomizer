.headersize(0x80079200 - 0x00AEF160)

.org 0x8007B6C4
    ; Replaces lui   t5, 0xdb06
    ;          ori   t5, t5, 0x18
    jal hookshot_reticle_inject
    nop
