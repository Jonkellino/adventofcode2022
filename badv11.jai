#import "Basic";
#import "Hash_Table";
#import "String";
#import "Math";
#import "Sort";



shouldPrint := false;

badv11 :: () {

	Monkey :: struct {
		items 				: [..] Item;
		operation 			: Operation;
		test 				: Test;

		trueOperation 		: ThrowToOperation;
		falseOperation 		: ThrowToOperation;

		itemInspectionCount : s64;

	}

	Operation :: struct {
		function 		: (int, s64) -> s64;
		param			: s64;
		byOld			: bool = false; 
	}


	Test :: struct {
		function 		: (int, s64) -> bool;
		param 			: s64;
	}

	ThrowToOperation :: struct {
		function 		: (monkeys : *[..] Monkey, targetMonkey : s64, currentMonkey : *Monkey, itemIndex : s64);
		targetMonkey	: s64;
		currentMonkey 	: *Monkey;
	}

	Item :: struct {
		worryLevel 		: s64;
	}



	taskNumber := 2;


	data : [..] string;
	testCase := 1;
	if testCase == 0 {
		array_add(*data, "Monkey 0:");
		array_add(*data, "  Starting items: 79, 98");
		array_add(*data, "  Operation: new = old * 19");
		array_add(*data, "  Test: divisible by 23");
		array_add(*data, "    If true: throw to monkey 2");
		array_add(*data, "    If false: throw to monkey 3");

		array_add(*data, "Monkey 1:");
		array_add(*data, "  Starting items: 54, 65, 75, 74");
		array_add(*data, "  Operation: new = old + 6");
		array_add(*data, "  Test: divisible by 19");
		array_add(*data, "    If true: throw to monkey 2");
		array_add(*data, "    If false: throw to monkey 0");

		array_add(*data, "Monkey 2:");
		array_add(*data, "  Starting items: 79, 60, 97");
		array_add(*data, "  Operation: new = old * old");
		array_add(*data, "  Test: divisible by 13");
		array_add(*data, "    If true: throw to monkey 1");
		array_add(*data, "    If false: throw to monkey 3");

		array_add(*data, "Monkey 3:");
		array_add(*data, "  Starting items: 74");
		array_add(*data, "  Operation: new = old + 3");
		array_add(*data, "  Test: divisible by 17");
		array_add(*data, "    If true: throw to monkey 0");
		array_add(*data, "    If false: throw to monkey 1");
	}
	else if testCase == 1 {
		array_add(*data, "Monkey 0:");
		array_add(*data, "  Starting items: 77, 69, 76, 77, 50, 58");
		array_add(*data, "  Operation: new = old * 11");
		array_add(*data, "  Test: divisible by 5");
		array_add(*data, "    If true: throw to monkey 1");
		array_add(*data, "    If false: throw to monkey 5");
		array_add(*data, "");
		array_add(*data, "Monkey 1:");
		array_add(*data, "  Starting items: 75, 70, 82, 83, 96, 64, 62");
		array_add(*data, "  Operation: new = old + 8");
		array_add(*data, "  Test: divisible by 17");
		array_add(*data, "    If true: throw to monkey 5");
		array_add(*data, "    If false: throw to monkey 6");
		array_add(*data, "");
		array_add(*data, "Monkey 2:");
		array_add(*data, "  Starting items: 53");
		array_add(*data, "  Operation: new = old * 3");
		array_add(*data, "  Test: divisible by 2");
		array_add(*data, "    If true: throw to monkey 0");
		array_add(*data, "    If false: throw to monkey 7");
		array_add(*data, "");
		array_add(*data, "Monkey 3:");
		array_add(*data, "  Starting items: 85, 64, 93, 64, 99");
		array_add(*data, "  Operation: new = old + 4");
		array_add(*data, "  Test: divisible by 7");
		array_add(*data, "    If true: throw to monkey 7");
		array_add(*data, "    If false: throw to monkey 2");
		array_add(*data, "");
		array_add(*data, "Monkey 4:");
		array_add(*data, "  Starting items: 61, 92, 71");
		array_add(*data, "  Operation: new = old * old");
		array_add(*data, "  Test: divisible by 3");
		array_add(*data, "    If true: throw to monkey 2");
		array_add(*data, "    If false: throw to monkey 3");
		array_add(*data, "");
		array_add(*data, "Monkey 5:");
		array_add(*data, "  Starting items: 79, 73, 50, 90");
		array_add(*data, "  Operation: new = old + 2");
		array_add(*data, "  Test: divisible by 11");
		array_add(*data, "    If true: throw to monkey 4");
		array_add(*data, "    If false: throw to monkey 6");
		array_add(*data, "");
		array_add(*data, "Monkey 6:");
		array_add(*data, "  Starting items: 50, 89");
		array_add(*data, "  Operation: new = old + 3");
		array_add(*data, "  Test: divisible by 13");
		array_add(*data, "    If true: throw to monkey 4");
		array_add(*data, "    If false: throw to monkey 3");
		array_add(*data, "");
		array_add(*data, "Monkey 7:");
		array_add(*data, "  Starting items: 83, 56, 64, 58, 93, 91, 56, 65");
		array_add(*data, "  Operation: new = old + 5");
		array_add(*data, "  Test: divisible by 19");
		array_add(*data, "    If true: throw to monkey 1");
		array_add(*data, "    If false: throw to monkey 0");
}



	param_add 		:: (first : s64, second : s64) -> s64 { if shouldPrint print(" added by %", second); 		return first + second; }
	param_subtract 	:: (first : s64, second : s64) -> s64 { if shouldPrint print(" subtracted by %", second); 	return first - second; }
	param_multiply 	:: (first : s64, second : s64) -> s64 { if shouldPrint print(" multiplied by %", second); 	return first * second; }
	param_divide 	:: (first : s64, second : s64) -> s64 { if shouldPrint print(" divided by %", second); 	return first / second; }

	divisible_by	:: (value : s64, divisor : s64) -> bool { return (value % divisor) == 0; }


	throw_to		:: (monkeys : *[..] Monkey, targetMonkey : s64, currentMonkey : *Monkey, itemIndex : s64)  {
		targetMonkeyInstance 	:= *(<< monkeys)[targetMonkey];
		array_add(*targetMonkeyInstance.items, *currentMonkey.items[itemIndex]) ;
		if shouldPrint print("\tMonkey yeets item with worry level % to %\n", currentMonkey.items[itemIndex].worryLevel, targetMonkey);
	}




	monkeys 		: [..] Monkey;
	currentMonkey 	: *Monkey;
	chineseRemainderTheoremDivisor := 1;

	for line : data {
		{
			success := split_from_left(line, "Monkey ");
			if success {
				currentMonkey = array_add(*monkeys);
				continue;
			}
		}
		{
			success, _, values := split_from_left(line, "Starting items: ");
			if success {
				individualValues := split(values, ", ");
				for value : individualValues {
					item : *Item = array_add(*currentMonkey.items);
					item.worryLevel = string_to_int(value);
				}
				continue;
			}
		}
		{
			success, _, operation := split_from_left(line, "Operation: new = old ");
			if success {

				valueSplitSuccess, inputOperator, value := split_from_left(operation, " "); 
				assert(valueSplitSuccess);

				currentMonkey.operation.function = ifx inputOperator[0] == #char "*" then #procedure_of_call param_multiply(1,1) else
												   ifx inputOperator[0] == #char "+" then #procedure_of_call param_add(1,1) else
												   ifx inputOperator[0] == #char "-" then #procedure_of_call param_subtract(1,1) else
												   ifx inputOperator[0] == #char "/" then #procedure_of_call param_divide(1,1);

				if value == "old" {
					currentMonkey.operation.byOld = true;
				}
				else {
					currentMonkey.operation.param = string_to_int(value);
				}
												    
				assert(currentMonkey.operation.function != null);
			}
		}
		{
			success, _, testOperationValue := split_from_left(line, "Test: divisible by ");
			if success {
				currentMonkey.test.function = divisible_by;
				currentMonkey.test.param = string_to_int(testOperationValue);
				chineseRemainderTheoremDivisor *= currentMonkey.test.param;
			}
		}
		{
			success, _, trueOperationValue := split_from_left(line, "If true: throw to monkey ");
			if success {
				currentMonkey.trueOperation.function = throw_to;
				currentMonkey.trueOperation.targetMonkey = string_to_int(trueOperationValue);
				currentMonkey.trueOperation.currentMonkey = currentMonkey;
			}
		}
		{
			success, _, falseOperationValue := split_from_left(line, "If false: throw to monkey ");
			if success {
				currentMonkey.falseOperation.function = throw_to;
				currentMonkey.falseOperation.targetMonkey = string_to_int(falseOperationValue);
				currentMonkey.falseOperation.currentMonkey = currentMonkey;
			}
		}
	}


	loopCount := ifx taskNumber == 1 then 20-1 else 10000-1;
	for 0..loopCount {
		for * currentMonkey : monkeys {
			if shouldPrint print("Monkey:\n");
			itemIndex := 0;
			while currentMonkey.items.count > 0 {
				defer itemIndex += 1;


				item := *currentMonkey.items[itemIndex];

				if shouldPrint print("  Monkey inspects an item with a worry level of %.\n", item.worryLevel);
				currentMonkey.itemInspectionCount += 1;
				if shouldPrint print("\tWorry level is ");

				param : s64;
				if currentMonkey.operation.byOld
					param = item.worryLevel;
				else 
					param = currentMonkey.operation.param;

				item.worryLevel = currentMonkey.operation.function(item.worryLevel, param) % chineseRemainderTheoremDivisor; 
				if shouldPrint print(" to %\n", item.worryLevel);


				monkeyDivisor : s64 = 3;
				if taskNumber == 1 item.worryLevel /= monkeyDivisor;
				if shouldPrint && taskNumber == 1 print("\tMonkey gets bored with item. Worry level is divided by % to %\n", monkeyDivisor, item.worryLevel);

				divisibleBy := currentMonkey.test.function(item.worryLevel, currentMonkey.test.param);

				if divisibleBy {
					if shouldPrint print("\tCurrent worry level is divisible by %\n", currentMonkey.test.param);
					currentMonkey.trueOperation.function(*monkeys, currentMonkey.trueOperation.targetMonkey, currentMonkey, itemIndex);

					currentMonkey.items[itemIndex].worryLevel = currentMonkey.test.param;


				}
				else {
					if shouldPrint print("\tCurrent worry level not divisible by %\n", currentMonkey.test.param);
					currentMonkey.falseOperation.function(*monkeys, currentMonkey.falseOperation.targetMonkey, currentMonkey, itemIndex);
				}

				array_ordered_remove_by_index(*currentMonkey.items, itemIndex);
				itemIndex -= 1;

				if shouldPrint print("\n");
			}
		}
	}

	for monkey : monkeys {
		print("Monkey %: %\n", it_index, monkey.items);
		print("Monkey inspected items % times.\n", monkey.itemInspectionCount);
	}

	quick_sort(monkeys, monkey => -monkey.itemInspectionCount); 


	print("Top two: % and %\n", monkeys[0].itemInspectionCount, monkeys[1].itemInspectionCount);
	print("Monkey business: %\n", monkeys[0].itemInspectionCount * monkeys[1].itemInspectionCount); 


	


}

