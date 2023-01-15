#import "Basic";
#import "Math";
#import "Hash_Table";


asIndex		:: inline (input : Vector2, gridWidth : int) -> int {
	return xx (input.x + input.y * gridWidth); 
}

asVector2	:: inline (input : int, gridWidth : int) -> Vector2 {
	return make_vector2(xx (input % gridWidth), xx (input / gridWidth)); 
}

NodeData :: struct {
	totalCost			: float = 0; // "f"
	distanceFromStart	: float = 0; // "g"
	estimatedRemaining	: float = 0; // "h"

	gridIndex	: int = -1;
	parent		: int = -1;

	position	: Vector2;
}

runAStar :: (gridWidth : int, 
				gridHeight : int, 
				start : Vector2, 
				target : Vector2, 
				checkWalkable : (current : *NodeData,  parentNode : *NodeData, args : $T) -> bool, 
				args : T) 
				-> [..] int {

	allCreatedNodes		: Table(int, NodeData);
	openList			: Table(int, NodeData);
	closedList			: Table(int, NodeData);

	startIndex	:= asIndex(start, gridWidth);
	targetIndex := asIndex(target, gridWidth);

	startNode	: NodeData;
	startNode.gridIndex = asIndex(start, gridWidth);
	startNode.position	= start; 

	table_set(*openList,		startIndex, startNode);
	table_set(*allCreatedNodes, startIndex, startNode);

	directions : [4] Vector2;

	/*directions[0] = make_vector2(-1,-1);*/directions[0] = make_vector2(0,-1); /*directions[2] = make_vector2(1,-1);*/
	directions[1] = make_vector2(-1,0);				/*center*/					directions[2] = make_vector2(1,0);
	/*directions[5] = make_vector2(-1,-1);*/directions[3] = make_vector2(0,1);	/*directions[7] = make_vector2(1,1);*/
	
	inBounds :: inline (index : int, gridWidth : int, gridHeight : int) -> bool {
		return index > 0 && index < gridWidth * gridHeight - 1;
	}

	while openList.count != 0 {
		currentNode : NodeData = ---;

		currentNode.totalCost				= FLOAT32_MAX; 
		currentNode.distanceFromStart 		= FLOAT32_MAX;
		currentNode.estimatedRemaining 		= FLOAT32_MAX;
		currentNode.parent					= -1;

		for node : openList {
			if node.totalCost < currentNode.totalCost {
				currentNode = node; 
			}
		}

		openListRemoveSuccess : bool = table_remove(*openList, currentNode.gridIndex);
		assert(openListRemoveSuccess);

		table_set(*closedList, currentNode.gridIndex, currentNode);

		if currentNode.gridIndex == targetIndex {
			outputPath : [..] int;
			array_add(*outputPath, currentNode.gridIndex);

			while currentNode.parent != -1 {
				array_add(*outputPath, currentNode.parent);
				currentNode = table_find_pointer(*allCreatedNodes, currentNode.parent);
			}


			print("Found target. Current: % TargetIndex: % TargetPos: %\n ", currentNode.gridIndex, targetIndex, target);

			return outputPath;
		}

		currentPos := asVector2(currentNode.gridIndex, gridWidth);

		// Blergh
		for direction : directions {
			checkPos		:= currentPos + direction;
			checkNodeIndex	:= asIndex(checkPos, gridWidth);

			if checkPos.x >= 0 && xx checkPos.x < gridWidth &&
				checkPos.y >= 0 && xx checkPos.y < gridHeight {

				checkNode	: NodeData;

				checkNode.gridIndex				= checkNodeIndex;
				checkNode.position				= checkPos;
				checkNode.distanceFromStart		= currentNode.distanceFromStart + length(currentNode.position-checkNode.position);
				checkNode.estimatedRemaining	= length(checkNode.position-target);
				checkNode.totalCost				= checkNode.distanceFromStart + checkNode.estimatedRemaining;



				success	:= checkWalkable(*checkNode, *currentNode, args);

				if success {
					_, foundInClosedList := table_find(*closedList, checkNodeIndex);

					if checkNodeIndex == targetIndex {
						print("Adding target node to open list: %, coming from pos: % gridIndex: %\n", checkNodeIndex, currentNode.position, currentNode.gridIndex);
					}

					if !foundInClosedList {
						openListNode := table_find_pointer(*openList, checkNodeIndex);

						if openListNode {
							if checkNode.distanceFromStart < openListNode.distanceFromStart {
								checkNode.parent = currentNode.gridIndex;
								<< openListNode  = checkNode;
								table_set(*allCreatedNodes, checkNodeIndex, checkNode);
							}
						}
						else {
							checkNode.parent = currentNode.gridIndex;
							table_set(*openList, checkNodeIndex, checkNode);
							table_set(*allCreatedNodes, checkNodeIndex, checkNode);
						}
					}
				}
			}	
		}
	}


	empty : [..] int;
	return empty;
}

badv12 :: () {
	data		: [..] string;
	grid		: [..] u8; 

	testCase	:= 2;
	task		:= 2;

	start		: Vector2;
	target		: Vector2;

	if testCase == 1 {
		array_add(*data, "Sabqponm");
		array_add(*data, "abcryxxl");
		array_add(*data, "accszExk");
		array_add(*data, "acctuvwj");
		array_add(*data, "abdefghi");
		start	= make_vector2(0,0);
		target	= make_vector2(5,2);
	}
	else if testCase == 2 {
		array_add(*data, "abcccccccaaaaaccccaaaaaaaccccccccccccccccccccccccccccccccccccaaaaa");
		array_add(*data, "abaacccaaaaaaccccccaaaaaaaaaaaaaccccccccccccccccccccccccccccaaaaaa");
		array_add(*data, "abaacccaaaaaaaccccaaaaaaaaaaaaaacccccccccccccaacccccccccccccaaaaaa");
		array_add(*data, "abaacccccaaaaaacaaaaaaaaaaaaaaaacccccccccccccaacccccccccccccacacaa");
		array_add(*data, "abaccccccaaccaacaaaaaaaaaacccaacccccccccccccaaacccccccccccccccccaa");
		array_add(*data, "abcccccccaaaacccaaaaaaaaacccccccccccccaaacccaaacccccccccccccccccaa");
		array_add(*data, "abccccccccaaaccccccccaaaacccccccccccccaaaaacaaaccacacccccccccccccc");
		array_add(*data, "abccccccccaaacaaacccccaaacccccccccccccaaaaaaajjjjjkkkcccccaacccccc");
		array_add(*data, "abcccccaaaaaaaaaacccccaaccccccccccciiiiiijjjjjjjjjkkkcaaaaaacccccc");
		array_add(*data, "abcccccaaaaaaaaacccccccccccccccccciiiiiiijjjjjjjrrkkkkaaaaaaaacccc");
		array_add(*data, "abcccccccaaaaaccccccccccccccccccciiiiiiiijjjjrrrrrppkkkaaaaaaacccc");
		array_add(*data, "abcccaaccaaaaaacccccccccccaacaaciiiiqqqqqrrrrrrrrpppkkkaaaaaaacccc");
		array_add(*data, "abccaaaaaaaaaaaaccccacccccaaaaaciiiqqqqqqrrrrrruuppppkkaaaaacccccc");
		array_add(*data, "abcccaaaaaaacaaaacaaacccccaaaaaahiiqqqqtttrrruuuuupppkkaaaaacccccc");
		array_add(*data, "abcaaaaaaaccccaaaaaaacccccaaaaaahhqqqtttttuuuuuuuuuppkkkccaacccccc");
		array_add(*data, "abcaaaaaaaaccccaaaaaacccccaaaaaahhqqqtttttuuuuxxuuuppkklcccccccccc");
		array_add(*data, "abcaaaaaaaacaaaaaaaaaaacccccaaachhhqqtttxxxuuxxyyuuppllllccccccccc");
		array_add(*data, "abcccaaacaccaaaaaaaaaaaccccccccchhhqqtttxxxxxxxyuupppplllccccccccc");
		array_add(*data, "abaacaacccccaaaaaaaaaaaccccccccchhhqqtttxxxxxxyyvvvpppplllcccccccc");
		array_add(*data, "abaacccccccccaaaaaaacccccccccccchhhpppttxxxxxyyyvvvvpqqqlllccccccc");
		array_add(*data, "SbaaccccccaaaaaaaaaaccccccccccchhhppptttxxxEzzyyyyvvvqqqlllccccccc");
		array_add(*data, "abaaaaccccaaaaaaaaacccccccccccchhhpppsssxxxyyyyyyyyvvvqqqlllcccccc");
		array_add(*data, "abaaaacccccaaaaaaaacccccccccccgggpppsssxxyyyyyyyyyvvvvqqqlllcccccc");
		array_add(*data, "abaaacccaaaacaaaaaaaccccccccccgggpppsswwwwwwyyyvvvvvvqqqllllcccccc");
		array_add(*data, "abaaccccaaaacaaccaaaacccccccccgggppssswwwwwwyyywvvvvqqqqmmmccccccc");
		array_add(*data, "abaaccccaaaacaaccaaaaccaaaccccggpppssssswwswwyywvqqqqqqmmmmccccccc");
		array_add(*data, "abcccccccaaacccccaaacccaaacaccgggpppssssssswwwwwwrqqmmmmmccccccccc");
		array_add(*data, "abcccccccccccccccccccaacaaaaacgggppooosssssrwwwwrrrmmmmmcccccccccc");
		array_add(*data, "abcccccccccccccccccccaaaaaaaacggggoooooooorrrwwwrrnmmmdddccaaccccc");
		array_add(*data, "abaccccccccccccaacccccaaaaaccccggggoooooooorrrrrrrnmmddddcaaaccccc");
		array_add(*data, "abaccccccccaaaaaaccccccaaaaaccccggfffffooooorrrrrnnndddddaaaaccccc");
		array_add(*data, "abaacccccccaaaaaacccccaaaaaacccccffffffffoonrrrrrnnndddaaaaaaacccc");
		array_add(*data, "abaaccccccccaaaaaaaccacaaaacccccccccffffffonnnnnnnndddaaaaaaaacccc");
		array_add(*data, "abccccccccccaaaaaaaaaaaaaaaccccccccccccfffennnnnnnddddccaaaccccccc");
		array_add(*data, "abcccccccccaaaaaaacaaaaaaaaaacccccccccccffeennnnnedddccccaaccccccc");
		array_add(*data, "abcccccccccaaaaaaccaaaaaaaaaaaccccccccccaeeeeeeeeeedcccccccccccccc");
		array_add(*data, "abccccccccccccaaaccaaaaaaaaaaaccccccccccaaaeeeeeeeecccccccccccccaa");
		array_add(*data, "abcccccccaaccccccccaaaaaaaacccccccccccccaaaceeeeecccccccccccccccaa");
		array_add(*data, "abaaccaaaaaaccccccccaaaaaaaacccccccccccccaccccaaacccccccccccaaacaa");
		array_add(*data, "abaaccaaaaacccccaaaaaaaaaaacccccccccccccccccccccacccccccccccaaaaaa");
		array_add(*data, "abaccaaaaaaaaccaaaaaaaaaaaaaacccccccccccccccccccccccccccccccaaaaaa");

		start	= make_vector2(0, 20);
		target	= make_vector2(43, 20);

	}


	for dataString : data {
		for 0..dataString.count-1 {
			array_add(*grid, dataString[it]);
		}
	}

	gridWidth	:= data[0].count;
	gridHeight	:= data.count;

	checkWalkable :: (current : *NodeData, parentNode : *NodeData, grid : *[..] u8) -> bool {
		assert(parentNode.gridIndex >= 0	&& parentNode.gridIndex < grid.count);
		assert(current.gridIndex >= 0		&& current.gridIndex < grid.count);

		parentTile	:= (<< grid)[parentNode.gridIndex];
		currentTile := (<< grid)[current.gridIndex];
		

		replaceStartAndEnd :: (char : u8) -> u8{
			if char == #char "S"
				return #char "a";
			else if char == #char "E"
				return #char "z";


			return char;
		}

		parentTile	= replaceStartAndEnd(parentTile);
		currentTile = replaceStartAndEnd(currentTile);

		success := currentTile <= parentTile + 1;

		return success;

	}

	replaceStartAndEnd :: (char : u8) -> u8 {
		if char == #char "S"
		return #char "a";
		else if char == #char "E"
		return #char "z";

		return char;
	}

	path : [..] int;
	if task == 1 {
		path = runAStar(gridWidth, gridHeight, start, target, checkWalkable, *grid);


		print("Path: %\n", path);
		ifx path.count > 0 then print("Path vectors: ");

		for step : path {
			print("% ", asVector2(step, gridWidth));
		}

		print("\n");
		print("Num nodes in path: % Step count therefore being: %\n", path.count, path.count-1);

	}
	else if task == 2 {
		for tile : grid {
			if replaceStartAndEnd(tile) == #char "a" {
				currentPath := runAStar(gridWidth, gridHeight, asVector2(it_index, gridWidth), target, checkWalkable, *grid);

				if currentPath.count != 0 && (currentPath.count < path.count || path.count == 0) {
					path = currentPath;
				}
			}
		}

		print("Num nodes in path: % Step count therefore being: %\n", path.count, path.count-1);
	}



	for tile : grid {
		if it_index % gridWidth == 0 print("\n");

		isPath, pathIndex := array_find(path, it_index); 

		pathIndex = path.count - pathIndex;

		if isPath {
			{
				toPrint := replaceStartAndEnd(tile);
				print("%  ", to_string(*toPrint));
			}

		}
		else 
			print("   ");
	}
}













