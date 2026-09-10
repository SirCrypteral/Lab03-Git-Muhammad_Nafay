addi x10,x0,12 #storing in x10 and x11 in next line
addi x11,x0,12
jal x1,sum #jump to sum
addi x11,x10,0
li x10,1
ecall #execute operation
j exit

sum:
    add x10,x11,x10
    jalr x0,0(x1)

exit:
    li x10, 10
    ecall