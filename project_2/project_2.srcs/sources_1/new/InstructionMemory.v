`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Last Edits: Nirmal Kumbhare, Ali Akoglu
// 
// Module - InstructionMemory.v
// Description - 32-Bit wide instruction memory.
//
// INPUT:-
// Address: 32-Bit address input port.
//
// OUTPUT:-
// Instruction: 32-Bit output port.
//
// FUNCTIONALITY:-
// Similar to the DataMemory, this module should also be byte-addressed
// (i.e., ignore bits 0 and 1 of 'Address'). All of the instructions will be 
// hard-coded into the instruction memory, so there is no need to write to the 
// InstructionMemory.  The contents of the InstructionMemory is the machine 
// language program to be run on your processor.
//
//
//we will store the machine code for a C function later. for now initialize 
//each entry to be its index * 4 (memory[i] = i * 4;)
//all you need to do is give an address as input and read the contents of the 
//address on your output port. 
// 
//Using a 32bit address you will index into the memory, output the contents of that specific 
//address. for data memory we are using 1K word of storage space. for the instruction memory 
//you may assume smaller size for practical purpose. you can use 128 words as the size and 
//hardcode the values.  in this case you need 7 bits to index into the memory. 
//
//be careful with the least two significant bits of the 32bit address. those help us index 
//into one of the 4 bytes in a word. therefore you will need to use bit [8-2] of the input address. 


////////////////////////////////////////////////////////////////////////////////

module InstructionMemory(Address, Instruction); 

    input [31:0] Address;        // Input Address 

    output /*reg*/ [31:0] Instruction;    // Instruction at memory location Address
    
    //reg [6:0] tempA;
    wire [8:0] tempA;
    
    assign tempA = Address[10:2];
    
   //Create 2D array for memory with 128 32-bit elements here
        reg [31:0] Memory [0:/*395*/511]; // using 511 since tempA is 9-bit
        
        /* Please fill in the implementation here */      
        initial begin                   //need to iniitalize this for the code!!!
            Memory[0] <= 32'b00100000000100000000000000000001 ;//	main:	addi	$s0, $zero, 1
            Memory[1] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[2] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[3] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[4] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[5] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[6] <= 32'b00100000000100010000000000000001 ;//        addi    $s1, $zero, 1
            Memory[7] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[8] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[9] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[10] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[11] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[12] <= 32'b00000010000100011000000000100100 ;//        and    $s0, $s0, $s1
            Memory[13] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[14] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[15] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[16] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[17] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[18] <= 32'b00000010000000001000000000100100 ;//        and    $s0, $s0, $zero
            Memory[19] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[20] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[21] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[22] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[23] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[24] <= 32'b00000010001100001000000000100010 ;//        sub    $s0, $s1, $s0
            Memory[25] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[26] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[27] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[28] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[29] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[30] <= 32'b00000010000000001000000000100111 ;//        nor    $s0, $s0, $zero
            Memory[31] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[32] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[33] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[34] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[35] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[36] <= 32'b00000010000000001000000000100111 ;//        nor    $s0, $s0, $zero
            Memory[37] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[38] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[39] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[40] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[41] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[42] <= 32'b00000000000000001000000000100101 ;//        or    $s0, $zero, $zero
            Memory[43] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[44] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[45] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[46] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[47] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[48] <= 32'b00000010001000001000000000100101 ;//        or    $s0, $s1, $zero
            Memory[49] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[50] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[51] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[52] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[53] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[54] <= 32'b00000000000100001000000010000000 ;//        sll    $s0, $s0, 2
            Memory[55] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[56] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[57] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[58] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[59] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[60] <= 32'b00000010001100001000000000000100 ;//        sllv    $s0, $s0, $s1
            Memory[61] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[62] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[63] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[64] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[65] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[66] <= 32'b00000010000000001000000000101010 ;//        slt    $s0, $s0, $zero
            Memory[67] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[68] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[69] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[70] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[71] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[72] <= 32'b00000010000100011000000000101010 ;//        slt    $s0, $s0, $s1
            Memory[73] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[74] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[75] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[76] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[77] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[78] <= 32'b00000000000100011000000001000011 ;//        sra    $s0, $s1, 1
            Memory[79] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[80] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[81] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[82] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[83] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[84] <= 32'b00000000000100011000000000000111 ;//        srav    $s0, $s1, $zero
            Memory[85] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[86] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[87] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[88] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[89] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[90] <= 32'b00000000000100011000000001000010 ;//        srl    $s0, $s1, 1
            Memory[91] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[92] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[93] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[94] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[95] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[96] <= 32'b00000000000100011000000011000000 ;//        sll    $s0, $s1, 3
            Memory[97] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[98] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[99] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[100] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[101] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[102] <= 32'b00000000000100001000000011000010 ;//        srl    $s0, $s0, 3
            Memory[103] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[104] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[105] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[106] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[107] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[108] <= 32'b00000010001100001000000000000100 ;//        sllv    $s0, $s0, $s1
            Memory[109] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[110] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[111] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[112] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[113] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[114] <= 32'b00000010001100001000000000000110 ;//        srlv    $s0, $s0, $s1
            Memory[115] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[116] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[117] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[118] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[119] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[120] <= 32'b00000010000100011000000000100110 ;//        xor    $s0, $s0, $s1
            Memory[121] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[122] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[123] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[124] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[125] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[126] <= 32'b00000010000100011000000000100110 ;//        xor    $s0, $s0, $s1
            Memory[127] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[128] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[129] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[130] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[131] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[132] <= 32'b00100000000100100000000000000100 ;//        addi    $s2, $zero, 4
            Memory[133] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[134] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[135] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[136] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[137] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[138] <= 32'b01110010000100101000000000000010 ;//        mul    $s0, $s0, $s2
            Memory[139] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[140] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[141] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[142] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[143] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[144] <= 32'b00100010000100000000000000000100 ;//        addi    $s0, $s0, 4
            Memory[145] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[146] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[147] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[148] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[149] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[150] <= 32'b00110010000100000000000000000000 ;//        andi    $s0, $s0, 0
            Memory[151] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[152] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[153] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[154] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[155] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[156] <= 32'b00110110000100000000000000000001 ;//        ori    $s0, $s0, 1
            Memory[157] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[158] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[159] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[160] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[161] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[162] <= 32'b00101010000100000000000000000000 ;//        slti    $s0, $s0, 0
            Memory[163] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[164] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[165] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[166] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[167] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[168] <= 32'b00101010000100000000000000000001 ;//        slti    $s0, $s0, 1
            Memory[169] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[170] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[171] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[172] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[173] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[174] <= 32'b00111010000100000000000000000001 ;//        xori    $s0, $s0, 1
            Memory[175] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[176] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[177] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[178] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[179] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[180] <= 32'b00111010000100000000000000000001 ;//        xori    $s0, $s0, 1
            Memory[181] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[182] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[183] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[184] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[185] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[186] <= 32'b00100000000100001111111111111110 ;//        addi    $s0, $zero, -2
            Memory[187] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[188] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[189] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[190] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[191] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[192] <= 32'b00100000000100010000000000000010 ;//        addi    $s1, $zero, 2
            Memory[193] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[194] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[195] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[196] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[197] <= 32'b00000000000000000000000000000000 ;//        nop
            Memory[198] <= 32'b00000010001100001001000000101011 ; //->        sltu    $s2, $s1, $s0
            Memory[199] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[200] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[201] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[202] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[203] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[204] <= 32'b00101110001100001111111111111110 ; //->        sltiu    $s0, $s1, -2
            Memory[205] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[206] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[207] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[208] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[209] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[210] <= 32'b00000010001000001000000000001010 ; //->        movz    $s0, $s1, $zero
            Memory[211] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[212] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[213] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[214] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[215] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[216] <= 32'b00000000000100011000000000001011 ; //->        movn    $s0, $zero, $s1
            Memory[217] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[218] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[219] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[220] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[221] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[222] <= 32'b00000010001100101000000000100000 ; //->        add    $s0, $s1, $s2
            Memory[223] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[224] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[225] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[226] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[227] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[228] <= 32'b00100000000100001111111111111110 ; //->        addi    $s0, $zero, -2
            Memory[229] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[230] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[231] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[232] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[233] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[234] <= 32'b00000010001100001000100000100001 ; //->        addu    $s1, $s1, $s0
            Memory[235] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[236] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[237] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[238] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[239] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[240] <= 32'b00100100000100011111111111111111 ; //->        addiu    $s1, $zero, -1
            Memory[241] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[242] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[243] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[244] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[245] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[246] <= 32'b00100000000100100000000000100000 ; //->        addi    $s2, $zero, 32
            Memory[247] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[248] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[249] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[250] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[251] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[252] <= 32'b00000010001100100000000000011000 ; //->        mult    $s1, $s2
            Memory[253] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[254] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[255] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[256] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[257] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[258] <= 32'b00000000000000001010000000010000 ; //->        mfhi    $s4
            Memory[259] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[260] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[261] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[262] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[263] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[264] <= 32'b00000000000000001010100000010010 ; //->        mflo    $s5
            Memory[265] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[266] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[267] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[268] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[269] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[270] <= 32'b00000010001100100000000000011001 ; //->        multu    $s1, $s2
            Memory[271] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[272] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[273] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[274] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[275] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[276] <= 32'b00000000000000001010000000010000 ; //->        mfhi    $s4
            Memory[277] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[278] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[279] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[280] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[281] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[282] <= 32'b00000000000000001010100000010010 ; //->        mflo    $s5
            Memory[283] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[284] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[285] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[286] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[287] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[288] <= 32'b01110010001100100000000000000000 ; //->        madd    $s1, $s2
            Memory[289] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[290] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[291] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[292] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[293] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[294] <= 32'b00000000000000001010000000010000 ; //->        mfhi    $s4
            Memory[295] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[296] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[297] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[298] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[299] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[300] <= 32'b00000000000000001010100000010010 ; //->        mflo    $s5
            Memory[301] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[302] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[303] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[304] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[305] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[306] <= 32'b00000010010000000000000000010001 ; //->        mthi    $s2
            Memory[307] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[308] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[309] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[310] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[311] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[312] <= 32'b00000010001000000000000000010011 ; //->        mtlo    $s1
            Memory[313] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[314] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[315] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[316] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[317] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[318] <= 32'b00000000000000001010000000010000 ; //->        mfhi    $s4
            Memory[319] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[320] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[321] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[322] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[323] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[324] <= 32'b00000000000000001010100000010010 ; //->        mflo    $s5
            Memory[325] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[326] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[327] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[328] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[329] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[330] <= 32'b00110010001100011111111111111111 ; //->        andi    $s1, , $s1, 65535
            Memory[331] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[332] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[333] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[334] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[335] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[336] <= 32'b01110010100100100000000000000100 ; //->        msub    $s4, , $s2
            Memory[337] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[338] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[339] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[340] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[341] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[342] <= 32'b00000000000000001010000000010000 ; //->        mfhi    $s4
            Memory[343] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[344] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[345] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[346] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[347] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[348] <= 32'b00000000000000001010100000010010 ; //->        mflo    $s5
            Memory[349] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[350] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[351] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[352] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[353] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[354] <= 32'b00100000000100100000000000000001 ; //->        addi    $s2, $zero, 1
            Memory[355] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[356] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[357] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[358] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[359] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[360] <= 32'b00000000001100101000111111000010 ; //->        rotr    $s1, $s2, 31
            Memory[361] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[362] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[363] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[364] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[365] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[366] <= 32'b00100000000101000000000000011111 ; //->        addi    $s4, $zero, 31
            Memory[367] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[368] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[369] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[370] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[371] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[372] <= 32'b00000010100100011000100001000110 ; //->        rotrv    $s1, $s1, $s4
            Memory[373] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[374] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[375] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[376] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[377] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[378] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[379] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[380] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[381] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[382] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[383] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[384] <= 32'b01111100000100011010010000100000 ; //->        seb    $s4, $s1
            Memory[385] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[386] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[387] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[388] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[389] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[390] <= 32'b01111100000100011010011000100000 ; //->        seh    $s4, , $s1
            Memory[391] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[392] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[393] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[394] <= 32'b00000000000000000000000000000000 ; //->        nop
            Memory[395] <= 32'b00000000000000000000000000000000 ; //->        nop    //    label2:    addi    $t0, $zero, 29
        end
        
        /*always @(*) begin
            // tempA = Address[8:2];
            // Instruction = Memory[tempA];   
            Instruction <= Memory[tempA];
        end*/
        assign Instruction = Memory[tempA];
        
    endmodule
