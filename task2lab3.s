leaf:
    addi sp, sp, -12      # reserve 3 words (12 bytes)
    sw   x18, 0(sp)       # save x18
    sw   x19, 4(sp)       # save x19
    sw   x20, 8(sp)       # save x20

    add  x18, x10, x11    # x18 = g + h
    add  x19, x12, x13    # x19 = i + j
    sub  x20, x18, x19    # x20 = f = (g+h) - (i+j)

    add  x10, x20, x0     # return value goes in a0 (x10)

    lw   x18, 0(sp)       # restore x18
    lw   x19, 4(sp)       # restore x19
    lw   x20, 8(sp)       # restore x20
    addi sp, sp, 12       # release the stack space

    jalr x0, 0(x1)        # return to calling statement