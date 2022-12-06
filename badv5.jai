#import "Basic";
#import "String";

Stack :: struct {
	data : [..] u8;
}

stacks : [..] Stack;
instructions : [..] string;

badv5 :: () {
	proto : Stack();
	array_add(*stacks, proto); 
	array_add(*stacks[0].data, #char "V");
	array_add(*stacks[0].data, #char "C");		
	array_add(*stacks[0].data, #char "D");
	array_add(*stacks[0].data, #char "R");
	array_add(*stacks[0].data, #char "Z");
	array_add(*stacks[0].data, #char "G");
	array_add(*stacks[0].data, #char "B");
	array_add(*stacks[0].data, #char "W");
	array_add(*stacks, proto); 
	array_add(*stacks[1].data, #char "G");
	array_add(*stacks[1].data, #char "W");		
	array_add(*stacks[1].data, #char "F");
	array_add(*stacks[1].data, #char "C");
	array_add(*stacks[1].data, #char "B");
	array_add(*stacks[1].data, #char "S");
	array_add(*stacks[1].data, #char "T");
	array_add(*stacks[1].data, #char "V");
	array_add(*stacks, proto); 
	array_add(*stacks[2].data, #char "C");
	array_add(*stacks[2].data, #char "B");
	array_add(*stacks[2].data, #char "S");
	array_add(*stacks[2].data, #char "N");
	array_add(*stacks[2].data, #char "W");
	array_add(*stacks, proto); 
	array_add(*stacks[3].data, #char "Q");
	array_add(*stacks[3].data, #char "G");
	array_add(*stacks[3].data, #char "M");
	array_add(*stacks[3].data, #char "N");
	array_add(*stacks[3].data, #char "J");
	array_add(*stacks[3].data, #char "V");
	array_add(*stacks[3].data, #char "C");
	array_add(*stacks[3].data, #char "P");
	array_add(*stacks, proto); 
	array_add(*stacks[4].data, #char "T");
	array_add(*stacks[4].data, #char "S");
	array_add(*stacks[4].data, #char "L");
	array_add(*stacks[4].data, #char "F");
	array_add(*stacks[4].data, #char "D");
	array_add(*stacks[4].data, #char "H");
	array_add(*stacks[4].data, #char "B");
	array_add(*stacks, proto); 
	array_add(*stacks[5].data, #char "J");
	array_add(*stacks[5].data, #char "V");
	array_add(*stacks[5].data, #char "T");
	array_add(*stacks[5].data, #char "W");
	array_add(*stacks[5].data, #char "M");
	array_add(*stacks[5].data, #char "N");
	array_add(*stacks, proto); 
	array_add(*stacks[6].data, #char "P");
	array_add(*stacks[6].data, #char "F");
	array_add(*stacks[6].data, #char "L");
	array_add(*stacks[6].data, #char "C");
	array_add(*stacks[6].data, #char "S");
	array_add(*stacks[6].data, #char "T");
	array_add(*stacks[6].data, #char "G");
	array_add(*stacks, proto); 
	array_add(*stacks[7].data, #char "B");
	array_add(*stacks[7].data, #char "D");
	array_add(*stacks[7].data, #char "Z");
	array_add(*stacks, proto); 
	array_add(*stacks[8].data, #char "M");
	array_add(*stacks[8].data, #char "N");
	array_add(*stacks[8].data, #char "Z");
	array_add(*stacks[8].data, #char "W");

	array_add(*instructions, "move 2 from 8 to 4");
	;array_add(*instructions, "move 2 from 7 to 3")
	;array_add(*instructions, "move 2 from 9 to 2")
	;array_add(*instructions, "move 4 from 1 to 9")
	;array_add(*instructions, "move 1 from 7 to 8")
	;array_add(*instructions, "move 1 from 9 to 6")
	;array_add(*instructions, "move 6 from 6 to 1")
	;array_add(*instructions, "move 6 from 1 to 6")
	;array_add(*instructions, "move 2 from 7 to 1")
	;array_add(*instructions, "move 9 from 4 to 1")
	;array_add(*instructions, "move 6 from 2 to 7")
	;array_add(*instructions, "move 5 from 9 to 7")
	;array_add(*instructions, "move 7 from 3 to 7")
	;array_add(*instructions, "move 19 from 7 to 9")
	;array_add(*instructions, "move 1 from 7 to 1")
	;array_add(*instructions, "move 3 from 6 to 8")
	;array_add(*instructions, "move 4 from 5 to 6")
	;array_add(*instructions, "move 1 from 4 to 1")
	;array_add(*instructions, "move 2 from 5 to 2")
	;array_add(*instructions, "move 8 from 9 to 7")
	;array_add(*instructions, "move 1 from 5 to 1")
	;array_add(*instructions, "move 3 from 9 to 4")
	;array_add(*instructions, "move 1 from 4 to 9")
	;array_add(*instructions, "move 2 from 4 to 7")
	;array_add(*instructions, "move 1 from 7 to 6")
	;array_add(*instructions, "move 3 from 8 to 9")
	;array_add(*instructions, "move 17 from 1 to 7")
	;array_add(*instructions, "move 21 from 7 to 3")
	;array_add(*instructions, "move 4 from 6 to 2")
	;array_add(*instructions, "move 1 from 7 to 2")
	;array_add(*instructions, "move 8 from 9 to 2")
	;array_add(*instructions, "move 2 from 8 to 3")
	;array_add(*instructions, "move 1 from 1 to 7")
	;array_add(*instructions, "move 2 from 7 to 9")
	;array_add(*instructions, "move 1 from 6 to 1")
	;array_add(*instructions, "move 1 from 7 to 4")
	;array_add(*instructions, "move 1 from 1 to 2")
	;array_add(*instructions, "move 4 from 6 to 1")
	;array_add(*instructions, "move 1 from 9 to 2")
	;array_add(*instructions, "move 1 from 7 to 9")
	;array_add(*instructions, "move 1 from 4 to 1")
	;array_add(*instructions, "move 7 from 3 to 7")
	;array_add(*instructions, "move 6 from 2 to 8")
	;array_add(*instructions, "move 3 from 3 to 4")
	;array_add(*instructions, "move 1 from 8 to 4")
	;array_add(*instructions, "move 12 from 2 to 8")
	;array_add(*instructions, "move 2 from 9 to 2")
	;array_add(*instructions, "move 12 from 3 to 2")
	;array_add(*instructions, "move 12 from 8 to 6")
	;array_add(*instructions, "move 3 from 4 to 2")
	;array_add(*instructions, "move 19 from 2 to 8")
	;array_add(*instructions, "move 4 from 1 to 9")
	;array_add(*instructions, "move 1 from 3 to 8")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 1 from 2 to 4")
	;array_add(*instructions, "move 1 from 6 to 3")
	;array_add(*instructions, "move 8 from 9 to 6")
	;array_add(*instructions, "move 1 from 4 to 9")
	;array_add(*instructions, "move 1 from 3 to 1")
	;array_add(*instructions, "move 1 from 9 to 5")
	;array_add(*instructions, "move 11 from 6 to 3")
	;array_add(*instructions, "move 5 from 8 to 6")
	;array_add(*instructions, "move 14 from 6 to 9")
	;array_add(*instructions, "move 2 from 1 to 4")
	;array_add(*instructions, "move 3 from 8 to 1")
	;array_add(*instructions, "move 8 from 8 to 4")
	;array_add(*instructions, "move 3 from 3 to 4")
	;array_add(*instructions, "move 8 from 3 to 1")
	;array_add(*instructions, "move 9 from 8 to 2")
	;array_add(*instructions, "move 12 from 4 to 2")
	;array_add(*instructions, "move 12 from 9 to 3")
	;array_add(*instructions, "move 9 from 3 to 4")
	;array_add(*instructions, "move 1 from 5 to 3")
	;array_add(*instructions, "move 7 from 7 to 1")
	;array_add(*instructions, "move 2 from 9 to 1")
	;array_add(*instructions, "move 2 from 4 to 6")
	;array_add(*instructions, "move 16 from 2 to 6")
	;array_add(*instructions, "move 1 from 2 to 8")
	;array_add(*instructions, "move 10 from 1 to 4")
	;array_add(*instructions, "move 1 from 8 to 2")
	;array_add(*instructions, "move 4 from 1 to 6")
	;array_add(*instructions, "move 15 from 4 to 8")
	;array_add(*instructions, "move 1 from 4 to 2")
	;array_add(*instructions, "move 2 from 6 to 8")
	;array_add(*instructions, "move 5 from 2 to 8")
	;array_add(*instructions, "move 21 from 8 to 3")
	;array_add(*instructions, "move 6 from 1 to 3")
	;array_add(*instructions, "move 15 from 6 to 1")
	;array_add(*instructions, "move 1 from 2 to 1")
	;array_add(*instructions, "move 1 from 8 to 9")
	;array_add(*instructions, "move 15 from 1 to 3")
	;array_add(*instructions, "move 7 from 3 to 8")
	;array_add(*instructions, "move 1 from 7 to 9")
	;array_add(*instructions, "move 2 from 9 to 8")
	;array_add(*instructions, "move 2 from 3 to 7")
	;array_add(*instructions, "move 4 from 6 to 1")
	;array_add(*instructions, "move 2 from 7 to 8")
	;array_add(*instructions, "move 1 from 6 to 2")
	;array_add(*instructions, "move 4 from 8 to 3")
	;array_add(*instructions, "move 2 from 4 to 8")
	;array_add(*instructions, "move 1 from 2 to 1")
	;array_add(*instructions, "move 4 from 1 to 5")
	;array_add(*instructions, "move 3 from 5 to 8")
	;array_add(*instructions, "move 1 from 5 to 1")
	;array_add(*instructions, "move 12 from 8 to 3")
	;array_add(*instructions, "move 3 from 1 to 2")
	;array_add(*instructions, "move 17 from 3 to 5")
	;array_add(*instructions, "move 2 from 5 to 3")
	;array_add(*instructions, "move 15 from 5 to 1")
	;array_add(*instructions, "move 1 from 1 to 4")
	;array_add(*instructions, "move 17 from 3 to 2")
	;array_add(*instructions, "move 5 from 2 to 8")
	;array_add(*instructions, "move 17 from 3 to 6")
	;array_add(*instructions, "move 6 from 1 to 3")
	;array_add(*instructions, "move 5 from 1 to 6")
	;array_add(*instructions, "move 4 from 8 to 9")
	;array_add(*instructions, "move 10 from 3 to 8")
	;array_add(*instructions, "move 7 from 2 to 9")
	;array_add(*instructions, "move 2 from 6 to 3")
	;array_add(*instructions, "move 2 from 2 to 8")
	;array_add(*instructions, "move 1 from 1 to 4")
	;array_add(*instructions, "move 17 from 6 to 9")
	;array_add(*instructions, "move 13 from 8 to 2")
	;array_add(*instructions, "move 2 from 4 to 1")
	;array_add(*instructions, "move 1 from 6 to 7")
	;array_add(*instructions, "move 2 from 2 to 4")
	;array_add(*instructions, "move 8 from 2 to 7")
	;array_add(*instructions, "move 1 from 6 to 1")
	;array_add(*instructions, "move 4 from 7 to 9")
	;array_add(*instructions, "move 1 from 4 to 7")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 1 from 1 to 7")
	;array_add(*instructions, "move 5 from 2 to 4")
	;array_add(*instructions, "move 2 from 3 to 8")
	;array_add(*instructions, "move 6 from 7 to 1")
	;array_add(*instructions, "move 1 from 7 to 4")
	;array_add(*instructions, "move 11 from 9 to 7")
	;array_add(*instructions, "move 1 from 8 to 4")
	;array_add(*instructions, "move 8 from 1 to 2")
	;array_add(*instructions, "move 1 from 1 to 4")
	;array_add(*instructions, "move 1 from 1 to 9")
	;array_add(*instructions, "move 1 from 6 to 1")
	;array_add(*instructions, "move 1 from 8 to 4")
	;array_add(*instructions, "move 6 from 2 to 3")
	;array_add(*instructions, "move 1 from 1 to 3")
	;array_add(*instructions, "move 1 from 6 to 7")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 6 from 2 to 5")
	;array_add(*instructions, "move 7 from 3 to 4")
	;array_add(*instructions, "move 2 from 7 to 6")
	;array_add(*instructions, "move 2 from 7 to 3")
	;array_add(*instructions, "move 8 from 7 to 5")
	;array_add(*instructions, "move 3 from 6 to 7")
	;array_add(*instructions, "move 1 from 5 to 7")
	;array_add(*instructions, "move 1 from 7 to 5")
	;array_add(*instructions, "move 13 from 9 to 3")
	;array_add(*instructions, "move 1 from 3 to 8")
	;array_add(*instructions, "move 8 from 4 to 3")
	;array_add(*instructions, "move 3 from 5 to 1")
	;array_add(*instructions, "move 7 from 4 to 1")
	;array_add(*instructions, "move 5 from 1 to 4")
	;array_add(*instructions, "move 3 from 1 to 4")
	;array_add(*instructions, "move 2 from 1 to 8")
	;array_add(*instructions, "move 2 from 7 to 5")
	;array_add(*instructions, "move 2 from 8 to 9")
	;array_add(*instructions, "move 1 from 7 to 6")
	;array_add(*instructions, "move 1 from 8 to 7")
	;array_add(*instructions, "move 4 from 5 to 1")
	;array_add(*instructions, "move 1 from 7 to 2")
	;array_add(*instructions, "move 2 from 1 to 8")
	;array_add(*instructions, "move 1 from 2 to 1")
	;array_add(*instructions, "move 5 from 9 to 7")
	;array_add(*instructions, "move 3 from 9 to 4")
	;array_add(*instructions, "move 8 from 4 to 8")
	;array_add(*instructions, "move 6 from 8 to 5")
	;array_add(*instructions, "move 11 from 5 to 1")
	;array_add(*instructions, "move 3 from 4 to 2")
	;array_add(*instructions, "move 9 from 3 to 7")
	;array_add(*instructions, "move 6 from 7 to 2")
	;array_add(*instructions, "move 13 from 3 to 2")
	;array_add(*instructions, "move 3 from 8 to 1")
	;array_add(*instructions, "move 2 from 2 to 8")
	;array_add(*instructions, "move 1 from 6 to 7")
	;array_add(*instructions, "move 3 from 8 to 4")
	;array_add(*instructions, "move 9 from 1 to 5")
	;array_add(*instructions, "move 5 from 5 to 8")
	;array_add(*instructions, "move 2 from 8 to 4")
	;array_add(*instructions, "move 3 from 9 to 4")
	;array_add(*instructions, "move 2 from 8 to 2")
	;array_add(*instructions, "move 8 from 1 to 5")
	;array_add(*instructions, "move 8 from 7 to 9")
	;array_add(*instructions, "move 1 from 8 to 3")
	;array_add(*instructions, "move 15 from 5 to 9")
	;array_add(*instructions, "move 6 from 4 to 1")
	;array_add(*instructions, "move 1 from 7 to 2")
	;array_add(*instructions, "move 4 from 2 to 1")
	;array_add(*instructions, "move 1 from 3 to 4")
	;array_add(*instructions, "move 5 from 1 to 7")
	;array_add(*instructions, "move 3 from 7 to 3")
	;array_add(*instructions, "move 14 from 9 to 8")
	;array_add(*instructions, "move 1 from 4 to 8")
	;array_add(*instructions, "move 1 from 7 to 6")
	;array_add(*instructions, "move 2 from 4 to 5")
	;array_add(*instructions, "move 4 from 1 to 5")
	;array_add(*instructions, "move 1 from 6 to 5")
	;array_add(*instructions, "move 4 from 9 to 3")
	;array_add(*instructions, "move 5 from 3 to 7")
	;array_add(*instructions, "move 4 from 5 to 9")
	;array_add(*instructions, "move 1 from 3 to 7")
	;array_add(*instructions, "move 1 from 3 to 2")
	;array_add(*instructions, "move 4 from 5 to 2")
	;array_add(*instructions, "move 4 from 7 to 5")
	;array_add(*instructions, "move 4 from 2 to 1")
	;array_add(*instructions, "move 1 from 5 to 4")
	;array_add(*instructions, "move 7 from 9 to 7")
	;array_add(*instructions, "move 1 from 4 to 2")
	;array_add(*instructions, "move 1 from 5 to 8")
	;array_add(*instructions, "move 21 from 2 to 4")
	;array_add(*instructions, "move 1 from 9 to 8")
	;array_add(*instructions, "move 1 from 9 to 4")
	;array_add(*instructions, "move 3 from 4 to 1")
	;array_add(*instructions, "move 7 from 1 to 6")
	;array_add(*instructions, "move 1 from 5 to 1")
	;array_add(*instructions, "move 18 from 4 to 7")
	;array_add(*instructions, "move 1 from 5 to 8")
	;array_add(*instructions, "move 27 from 7 to 8")
	;array_add(*instructions, "move 1 from 7 to 3")
	;array_add(*instructions, "move 1 from 3 to 7")
	;array_add(*instructions, "move 1 from 7 to 2")
	;array_add(*instructions, "move 1 from 2 to 1")
	;array_add(*instructions, "move 42 from 8 to 9")
	;array_add(*instructions, "move 1 from 8 to 7")
	;array_add(*instructions, "move 1 from 8 to 2")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 1 from 2 to 9")
	;array_add(*instructions, "move 2 from 1 to 2")
	;array_add(*instructions, "move 1 from 7 to 3")
	;array_add(*instructions, "move 7 from 6 to 4")
	;array_add(*instructions, "move 4 from 9 to 6")
	;array_add(*instructions, "move 1 from 3 to 2")
	;array_add(*instructions, "move 1 from 2 to 7")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 1 from 8 to 4")
	;array_add(*instructions, "move 1 from 9 to 3")
	;array_add(*instructions, "move 5 from 4 to 7")
	;array_add(*instructions, "move 1 from 5 to 6")
	;array_add(*instructions, "move 1 from 5 to 9")
	;array_add(*instructions, "move 1 from 6 to 3")
	;array_add(*instructions, "move 1 from 7 to 5")
	;array_add(*instructions, "move 2 from 3 to 2")
	;array_add(*instructions, "move 22 from 9 to 7")
	;array_add(*instructions, "move 2 from 2 to 3")
	;array_add(*instructions, "move 18 from 7 to 9")
	;array_add(*instructions, "move 1 from 4 to 9")
	;array_add(*instructions, "move 1 from 1 to 4")
	;array_add(*instructions, "move 4 from 7 to 3")
	;array_add(*instructions, "move 4 from 3 to 2")
	;array_add(*instructions, "move 3 from 4 to 5")
	;array_add(*instructions, "move 1 from 2 to 4")
	;array_add(*instructions, "move 5 from 6 to 9")
	;array_add(*instructions, "move 1 from 5 to 3")
	;array_add(*instructions, "move 1 from 4 to 7")
	;array_add(*instructions, "move 2 from 5 to 1")
	;array_add(*instructions, "move 3 from 2 to 4")
	;array_add(*instructions, "move 1 from 5 to 6")
	;array_add(*instructions, "move 2 from 7 to 9")
	;array_add(*instructions, "move 1 from 6 to 8")
	;array_add(*instructions, "move 2 from 3 to 2")
	;array_add(*instructions, "move 2 from 4 to 7")
	;array_add(*instructions, "move 1 from 8 to 7")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 35 from 9 to 7")
	;array_add(*instructions, "move 13 from 7 to 3")
	;array_add(*instructions, "move 1 from 2 to 7")
	;array_add(*instructions, "move 1 from 2 to 5")
	;array_add(*instructions, "move 1 from 5 to 8")
	;array_add(*instructions, "move 1 from 8 to 5")
	;array_add(*instructions, "move 8 from 7 to 3")
	;array_add(*instructions, "move 1 from 6 to 4")
	;array_add(*instructions, "move 6 from 3 to 9")
	;array_add(*instructions, "move 1 from 1 to 9")
	;array_add(*instructions, "move 1 from 4 to 1")
	;array_add(*instructions, "move 14 from 9 to 8")
	;array_add(*instructions, "move 1 from 5 to 7")
	;array_add(*instructions, "move 16 from 3 to 2")
	;array_add(*instructions, "move 2 from 1 to 2")
	;array_add(*instructions, "move 1 from 9 to 2")
	;array_add(*instructions, "move 1 from 8 to 1")
	;array_add(*instructions, "move 1 from 1 to 3")
	;array_add(*instructions, "move 7 from 2 to 9")
	;array_add(*instructions, "move 6 from 9 to 8")
	;array_add(*instructions, "move 1 from 3 to 4")
	;array_add(*instructions, "move 3 from 7 to 6")
	;array_add(*instructions, "move 2 from 2 to 1")
	;array_add(*instructions, "move 1 from 4 to 7")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 1 from 9 to 6")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 2 from 6 to 2")
	;array_add(*instructions, "move 4 from 5 to 4")
	;array_add(*instructions, "move 5 from 2 to 6")
	;array_add(*instructions, "move 1 from 1 to 7")
	;array_add(*instructions, "move 1 from 1 to 2")
	;array_add(*instructions, "move 13 from 8 to 1")
	;array_add(*instructions, "move 2 from 8 to 4")
	;array_add(*instructions, "move 19 from 7 to 4")
	;array_add(*instructions, "move 3 from 1 to 6")
	;array_add(*instructions, "move 11 from 4 to 3")
	;array_add(*instructions, "move 2 from 7 to 9")
	;array_add(*instructions, "move 4 from 2 to 5")
	;array_add(*instructions, "move 2 from 9 to 5")
	;array_add(*instructions, "move 1 from 7 to 4")
	;array_add(*instructions, "move 2 from 5 to 7")
	;array_add(*instructions, "move 4 from 3 to 4")
	;array_add(*instructions, "move 3 from 4 to 1")
	;array_add(*instructions, "move 3 from 5 to 1")
	;array_add(*instructions, "move 9 from 6 to 4")
	;array_add(*instructions, "move 1 from 7 to 9")
	;array_add(*instructions, "move 1 from 7 to 5")
	;array_add(*instructions, "move 10 from 1 to 4")
	;array_add(*instructions, "move 1 from 9 to 6")
	;array_add(*instructions, "move 1 from 6 to 8")
	;array_add(*instructions, "move 32 from 4 to 5")
	;array_add(*instructions, "move 7 from 5 to 4")
	;array_add(*instructions, "move 27 from 5 to 9")
	;array_add(*instructions, "move 5 from 3 to 2")
	;array_add(*instructions, "move 3 from 2 to 8")
	;array_add(*instructions, "move 1 from 6 to 2")
	;array_add(*instructions, "move 8 from 4 to 9")
	;array_add(*instructions, "move 1 from 2 to 9")
	;array_add(*instructions, "move 8 from 8 to 6")
	;array_add(*instructions, "move 2 from 4 to 3")
	;array_add(*instructions, "move 1 from 2 to 3")
	;array_add(*instructions, "move 15 from 9 to 8")
	;array_add(*instructions, "move 4 from 1 to 4")
	;array_add(*instructions, "move 3 from 4 to 8")
	;array_add(*instructions, "move 6 from 9 to 7")
	;array_add(*instructions, "move 1 from 4 to 9")
	;array_add(*instructions, "move 8 from 8 to 2")
	;array_add(*instructions, "move 2 from 1 to 9")
	;array_add(*instructions, "move 2 from 7 to 9")
	;array_add(*instructions, "move 10 from 8 to 3")
	;array_add(*instructions, "move 6 from 2 to 6")
	;array_add(*instructions, "move 2 from 3 to 2")
	;array_add(*instructions, "move 6 from 6 to 3")
	;array_add(*instructions, "move 1 from 7 to 5")
	;array_add(*instructions, "move 8 from 3 to 2")
	;array_add(*instructions, "move 4 from 3 to 2")
	;array_add(*instructions, "move 1 from 3 to 5")
	;array_add(*instructions, "move 6 from 6 to 1")
	;array_add(*instructions, "move 4 from 3 to 7")
	;array_add(*instructions, "move 2 from 5 to 8")
	;array_add(*instructions, "move 3 from 7 to 5")
	;array_add(*instructions, "move 6 from 1 to 7")
	;array_add(*instructions, "move 1 from 3 to 4")
	;array_add(*instructions, "move 1 from 3 to 9")
	;array_add(*instructions, "move 10 from 7 to 4")
	;array_add(*instructions, "move 8 from 2 to 8")
	;array_add(*instructions, "move 11 from 9 to 5")
	;array_add(*instructions, "move 11 from 4 to 1")
	;array_add(*instructions, "move 5 from 2 to 6")
	;array_add(*instructions, "move 3 from 2 to 7")
	;array_add(*instructions, "move 11 from 1 to 6")
	;array_add(*instructions, "move 1 from 5 to 6")
	;array_add(*instructions, "move 8 from 5 to 4")
	;array_add(*instructions, "move 19 from 6 to 7")
	;array_add(*instructions, "move 3 from 7 to 9")
	;array_add(*instructions, "move 3 from 5 to 4")
	;array_add(*instructions, "move 1 from 2 to 5")
	;array_add(*instructions, "move 3 from 5 to 7")
	;array_add(*instructions, "move 8 from 9 to 6")
	;array_add(*instructions, "move 2 from 4 to 1")
	;array_add(*instructions, "move 1 from 1 to 9")
	;array_add(*instructions, "move 2 from 9 to 7")
	;array_add(*instructions, "move 6 from 6 to 2")
	;array_add(*instructions, "move 2 from 4 to 6")
	;array_add(*instructions, "move 4 from 8 to 6")
	;array_add(*instructions, "move 1 from 8 to 1")
	;array_add(*instructions, "move 7 from 6 to 7")
	;array_add(*instructions, "move 1 from 9 to 4")
	;array_add(*instructions, "move 5 from 8 to 4")
	;array_add(*instructions, "move 3 from 2 to 6")
	;array_add(*instructions, "move 4 from 6 to 4")
	;array_add(*instructions, "move 2 from 9 to 6")
	;array_add(*instructions, "move 3 from 2 to 9")
	;array_add(*instructions, "move 16 from 4 to 8")
	;array_add(*instructions, "move 1 from 6 to 8")
	;array_add(*instructions, "move 2 from 9 to 5")
	;array_add(*instructions, "move 1 from 9 to 7")
	;array_add(*instructions, "move 2 from 5 to 2")
	;array_add(*instructions, "move 1 from 4 to 6")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 1 from 9 to 6")
	;array_add(*instructions, "move 3 from 7 to 3")
	;array_add(*instructions, "move 7 from 7 to 8")
	;array_add(*instructions, "move 2 from 7 to 1")
	;array_add(*instructions, "move 3 from 8 to 5")
	;array_add(*instructions, "move 3 from 6 to 2")
	;array_add(*instructions, "move 4 from 7 to 4")
	;array_add(*instructions, "move 1 from 5 to 1")
	;array_add(*instructions, "move 1 from 5 to 7")
	;array_add(*instructions, "move 3 from 3 to 4")
	;array_add(*instructions, "move 5 from 1 to 4")
	;array_add(*instructions, "move 16 from 7 to 2")
	;array_add(*instructions, "move 5 from 4 to 7")
	;array_add(*instructions, "move 19 from 8 to 1")
	;array_add(*instructions, "move 11 from 2 to 9")
	;array_add(*instructions, "move 11 from 9 to 6")
	;array_add(*instructions, "move 2 from 1 to 6")
	;array_add(*instructions, "move 2 from 4 to 1")
	;array_add(*instructions, "move 5 from 4 to 6")
	;array_add(*instructions, "move 1 from 5 to 9")
	;array_add(*instructions, "move 1 from 9 to 6")
	;array_add(*instructions, "move 2 from 2 to 6")
	;array_add(*instructions, "move 1 from 5 to 4")
	;array_add(*instructions, "move 8 from 6 to 5")
	;array_add(*instructions, "move 16 from 1 to 6")
	;array_add(*instructions, "move 1 from 4 to 9")
	;array_add(*instructions, "move 3 from 2 to 9")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 2 from 5 to 8")
	;array_add(*instructions, "move 4 from 8 to 4")
	;array_add(*instructions, "move 4 from 9 to 7")
	;array_add(*instructions, "move 2 from 1 to 3")
	;array_add(*instructions, "move 5 from 6 to 4")
	;array_add(*instructions, "move 21 from 6 to 2")
	;array_add(*instructions, "move 9 from 7 to 3")
	;array_add(*instructions, "move 1 from 1 to 2")
	;array_add(*instructions, "move 1 from 5 to 3")
	;array_add(*instructions, "move 23 from 2 to 7")
	;array_add(*instructions, "move 1 from 7 to 5")
	;array_add(*instructions, "move 3 from 6 to 1")
	;array_add(*instructions, "move 9 from 4 to 5")
	;array_add(*instructions, "move 11 from 7 to 1")
	;array_add(*instructions, "move 2 from 3 to 4")
	;array_add(*instructions, "move 1 from 3 to 7")
	;array_add(*instructions, "move 1 from 4 to 1")
	;array_add(*instructions, "move 10 from 1 to 6")
	;array_add(*instructions, "move 5 from 7 to 1")
	;array_add(*instructions, "move 3 from 1 to 4")
	;array_add(*instructions, "move 7 from 1 to 7")
	;array_add(*instructions, "move 4 from 3 to 8")
	;array_add(*instructions, "move 4 from 7 to 4")
	;array_add(*instructions, "move 5 from 7 to 3")
	;array_add(*instructions, "move 2 from 4 to 9")
	;array_add(*instructions, "move 1 from 8 to 1")
	;array_add(*instructions, "move 4 from 4 to 1")
	;array_add(*instructions, "move 1 from 6 to 1")
	;array_add(*instructions, "move 1 from 6 to 5")
	;array_add(*instructions, "move 16 from 5 to 1")
	;array_add(*instructions, "move 2 from 5 to 7")
	;array_add(*instructions, "move 1 from 5 to 6")
	;array_add(*instructions, "move 2 from 8 to 2")
	;array_add(*instructions, "move 1 from 7 to 9")
	;array_add(*instructions, "move 3 from 9 to 5")
	;array_add(*instructions, "move 2 from 5 to 4")
	;array_add(*instructions, "move 6 from 7 to 1")
	;array_add(*instructions, "move 3 from 4 to 7")
	;array_add(*instructions, "move 1 from 8 to 6")
	;array_add(*instructions, "move 5 from 1 to 4")
	;array_add(*instructions, "move 1 from 6 to 1")
	;array_add(*instructions, "move 19 from 1 to 5")
	;array_add(*instructions, "move 1 from 7 to 6")
	;array_add(*instructions, "move 9 from 3 to 1")
	;array_add(*instructions, "move 6 from 6 to 5")
	;array_add(*instructions, "move 4 from 6 to 9")
	;array_add(*instructions, "move 3 from 9 to 4")
	;array_add(*instructions, "move 13 from 1 to 4")
	;array_add(*instructions, "move 1 from 3 to 1")
	;array_add(*instructions, "move 2 from 5 to 1")
	;array_add(*instructions, "move 1 from 2 to 3")
	;array_add(*instructions, "move 1 from 3 to 9")
	;array_add(*instructions, "move 4 from 5 to 4")
	;array_add(*instructions, "move 1 from 2 to 3")
	;array_add(*instructions, "move 1 from 3 to 5")
	;array_add(*instructions, "move 1 from 9 to 1")
	;array_add(*instructions, "move 1 from 9 to 5")
	;array_add(*instructions, "move 19 from 4 to 7")
	;array_add(*instructions, "move 4 from 1 to 6")
	;array_add(*instructions, "move 5 from 4 to 3")
	;array_add(*instructions, "move 3 from 6 to 1")
	;array_add(*instructions, "move 1 from 6 to 8")
	;array_add(*instructions, "move 2 from 1 to 6")
	;array_add(*instructions, "move 2 from 1 to 7")
	;array_add(*instructions, "move 2 from 6 to 3")
	;array_add(*instructions, "move 2 from 3 to 1")
	;array_add(*instructions, "move 8 from 7 to 6")
	;array_add(*instructions, "move 5 from 3 to 9")
	;array_add(*instructions, "move 2 from 4 to 9")
	;array_add(*instructions, "move 2 from 6 to 8")
	;array_add(*instructions, "move 10 from 7 to 2")
	;array_add(*instructions, "move 7 from 2 to 9")
	;array_add(*instructions, "move 1 from 8 to 9")
	;array_add(*instructions, "move 1 from 1 to 2")
	;array_add(*instructions, "move 2 from 9 to 3")
	;array_add(*instructions, "move 2 from 8 to 7")
	;array_add(*instructions, "move 1 from 1 to 6")
	;array_add(*instructions, "move 1 from 2 to 8")
	;array_add(*instructions, "move 2 from 2 to 5")
	;array_add(*instructions, "move 4 from 5 to 7")
	;array_add(*instructions, "move 5 from 6 to 1")
	;array_add(*instructions, "move 1 from 3 to 4");
		

	printStacks :: () {


		print("Stacks: \n");
		printer := copy_string(" ");
		for stack : stacks {

			for element : stack.data {
				printer[0] = element;
				print(" [%] ", printer);
			}
			print("\n");
		}
	}

	printStacks();

	for instruction : instructions {

		firstIndex 		:= "move ".count;
		numberLength 	:= find_index_from_left(instruction, #char " ", firstIndex) - firstIndex; 
		moveCount 		:= string_to_int(slice(instruction, 
							firstIndex, 	
							numberLength)); 

		firstIndex 		= firstIndex + numberLength + "from ".count + 1;
		numberLength 	= find_index_from_left(instruction, #char " ", firstIndex) - firstIndex;

		from 			:= string_to_int(slice(instruction,
							firstIndex,
							numberLength));
		from -= 1; // Count to index

		firstIndex 		= firstIndex + numberLength + "to ".count + 1;
		numberLength 	= instruction.count - firstIndex;

		to 				:= string_to_int(slice(instruction,
							firstIndex,
							numberLength));
		to -= 1; // Count to index

		count := stacks[from].data.count;
		for < moveCount-1..0 {
			print("move % from % to %\n", moveCount, from, to);
			targetIndex : int = count - moveCount;
			print("fromCount: % targetIndex: % it: %\n", stacks[from].data.count, targetIndex, it);
			value := stacks[from].data[targetIndex];
			array_ordered_remove_by_index(*stacks[from].data, targetIndex);
			array_add(*stacks[to].data, value);
		}



	}
	printStacks();


}

