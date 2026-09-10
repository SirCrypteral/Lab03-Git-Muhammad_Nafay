swap:
slli x5, x11, 2 #x5 = k*4 (4 bytes word size)
add x5, x10, x5 #x5 now contains address of v[k]
lw x6, 0(x5) #x6 = v[k]
lw x7, 4(x5) # x7 = v[k+1] 
sw x7, 0(x5) #performing swap into x7 v[k] = v[k+1]
sw x6, 4(x5) #v[k+1] = temp
jalr x0, 0(x1) #return statement