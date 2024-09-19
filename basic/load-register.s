.global _start
_start:
  	mov r3, #0
	ldr r0, =vector   //r0 pointer to location of vector, called base register
	ldr r1, [r0] //load first value of vector to r1
        ldr r2, [r0, #4] 
	//#4 means 2nd value of vector which is 4 bytes away.
	add r3, r3, r1 
	b done

done:
	svc #0 // System call to terminate the program (exit)
	
.data
	vector: .word 0,1,2,3 // Define the vector (array) with 4 elements: 0, 1, 2, 3
