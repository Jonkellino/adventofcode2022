#import "Basic";
#import "Hash_Table";
#import "String";
#import "Math";




badv10 :: () {


	commands : [..] string;

	testCase := 1;
	if testCase == 0 {
		;array_add(*commands, "addx 15")
		;array_add(*commands, "addx -11")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "addx -3")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx -8")
		;array_add(*commands, "addx 13")
		;array_add(*commands, "addx 4")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx -35")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 24")
		;array_add(*commands, "addx -19")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 16")
		;array_add(*commands, "addx -11")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 21")
		;array_add(*commands, "addx -15")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -3")
		;array_add(*commands, "addx 9")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx -3")
		;array_add(*commands, "addx 8")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -36")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 7")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 7")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -13")
		;array_add(*commands, "addx 13")
		;array_add(*commands, "addx 7")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx -33")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 8")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 17")
		;array_add(*commands, "addx -9")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx -3")
		;array_add(*commands, "addx 11")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -13")
		;array_add(*commands, "addx -19")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 26")
		;array_add(*commands, "addx -30")
		;array_add(*commands, "addx 12")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -9")
		;array_add(*commands, "addx 18")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 9")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -37")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 15")
		;array_add(*commands, "addx -21")
		;array_add(*commands, "addx 22")
		;array_add(*commands, "addx -6")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -10")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 20")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -6")
		;array_add(*commands, "addx -11")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop");
	}
	else if testCase == 1 {

		array_add(*commands, "addx 2")
		;array_add(*commands, "addx 15")
		;array_add(*commands, "addx -11")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 7")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -38")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -8")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 13")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx -2")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 9")
		;array_add(*commands, "addx -2")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -10")
		;array_add(*commands, "addx 11")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -14")
		;array_add(*commands, "addx -21")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx 29")
		;array_add(*commands, "addx -2")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -19")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 11")
		;array_add(*commands, "addx -10")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -9")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 14")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx -2")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -37")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 13")
		;array_add(*commands, "addx -8")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 13")
		;array_add(*commands, "addx -5")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -15")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -27")
		;array_add(*commands, "addx 30")
		;array_add(*commands, "addx -23")
		;array_add(*commands, "addx 33")
		;array_add(*commands, "addx -32")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -16")
		;array_add(*commands, "addx 17")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -10")
		;array_add(*commands, "addx 17")
		;array_add(*commands, "addx 10")
		;array_add(*commands, "addx -9")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -29")
		;array_add(*commands, "addx -8")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 19")
		;array_add(*commands, "addx -11")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 6")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 3")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "addx -3")
		;array_add(*commands, "addx 11")
		;array_add(*commands, "addx -1")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx -2")
		;array_add(*commands, "addx 5")
		;array_add(*commands, "addx 2")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop")
		;array_add(*commands, "addx 1")
		;array_add(*commands, "noop")
		;array_add(*commands, "noop");


	}


	cycle := 0;
	registers : Table(string, int);

	table_add(*registers, "x", 1);


	Checker :: struct {
		cycle 		: int;
		register 	: string;
		result 		: int;
	}

	make_checker :: (cycle : int, register : string) -> Checker {
		output : Checker;
		output.cycle = cycle;
		output.register = register;

		return output;
	}


	checkers : [..] Checker;

	array_add(*checkers, make_checker(20, "x"));
	array_add(*checkers, make_checker(60, "x"));
	array_add(*checkers, make_checker(100, "x"));
	array_add(*checkers, make_checker(140, "x"));
	array_add(*checkers, make_checker(180, "x"));
	array_add(*checkers, make_checker(220, "x"));


	noop :: (command : string, registers : *Table(string, int)) {};
	add :: (command : string, registers : *Table(string, int)) {
		foundAdd, _, registerAndValue := split_from_left(command, "add");
		assert(foundAdd);

		foundRegisterAndValue, register, value := split_from_left(registerAndValue, #char " ");
		assert(foundRegisterAndValue);

		registerStore := table_find_pointer(registers, register);
		<< registerStore += string_to_int(value); 


		//print("add: %\n", value);

	};



	runCheckers :: (cycle : int, registers : *Table(string, int), checkers : *[..] Checker) {
		for * checker : << checkers {
			if checker.cycle == cycle {
				value, found := table_find(registers, checker.register); 
				checker.result = value * checker.cycle; 
			}
		}
	}


	for command : commands {
		cyclesToSpend : int;

		execution : (string, *Table(string, int)); 
		if command == "noop" {
			cyclesToSpend = 1;
			execution = noop;
		}
		else {
			if begins_with(command, "add") {
				cyclesToSpend = 2;
				execution = add; 
			}
			else 
				assert(false);
		}

		for 0..cyclesToSpend-1 {

			cycleMod40 := cycle % 40;
			registerValue, found := table_find(*registers, "x"); 

			if registerValue == cycleMod40 - 1 || registerValue == cycleMod40 || registerValue == cycleMod40 + 1 
				print("#");
			else 
				print(".");

			cycle += 1;

			runCheckers(cycle, *registers, *checkers);





			if cycleMod40 == 39 print("\n");
		}


		execution(command, *registers);
	}



	


}
