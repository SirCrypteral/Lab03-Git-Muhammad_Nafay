strcpy:
addi sp, sp, -4 #reserving space for one word
sw x19, 0(sp)
add x19, x0, x0 #i = 0

label1:
    add  x5, x19, x11      # x5 = address of y[i]
    lb   x6, 0(x5)         # x6 = y[i]
    add  x7, x19, x10      # x7 = address of x[i]
    sb   x6, 0(x7)         # x[i] = y[i]
    beq  x6, x0, label2        # if y[i] == 0, exit loop
    addi x19, x19, 1       # i += 1
    jal  x0, label1

label2:
    lw   x19, 0(sp)        # restore x19 (was ld)
    addi sp, sp, 4          # pop stack (was 8)
    jalr x0, 0(x1)          # return