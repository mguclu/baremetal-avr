

void c_entry(){
	
	
		int i = 10;
		
		//asm volatile("ldi %0, %1" : "=a" (reg) : "M" (imm));
		asm volatile("ldi r20, 0xDE");
		asm volatile("ldi r21, 0xAD");
		asm volatile("ldi r22, 0xBE");
		asm volatile("ldi r23, 0xEF");
	
}
