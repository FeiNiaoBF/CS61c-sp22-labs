.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi sp, sp, -8
    sw a0, 0(sp)     # a0 == n == 8
    sw ra, 4(sp)
    addi t0, x0, 1   # k == 1
    add a1, x0, a0   #
    jal ra, loop
loop:
    beq a0, t0, done  # if a0 == t0 loop while(n > 1)
    mul a1, a1, t0
    addi t0, t0, 1
    j loop
done:
    add a0, x0, a1
    lw a1, 0(sp)
    lw ra, 4(sp)
    addi sp, sp 8
    ret

