//Board List
module basicBoard(board){
	difference(){
		union(){
			square([board[0],board[1]]);
		}
		drillHoles(board[2],1.5);
		drillSlots(board[4],1.5);
	}
}

module drillHoles(holes,radius){
	for(i = [0:len(holes)-1]){
		translate([holes[i][0],holes[i][1],0])
		circle(r=radius,$fn=20);
	}
}

module drillSlots(slots){
	for(i = [0:len(slots)-1]){
		translate(slots[i][0])
		square(slots[i][1]);
	}
}

module modelBlocks(blocks){
	for(i = [0:len(blocks)-1]){
		translate(blocks[i][0])
		cube(blocks[i][1]);
	}
}
//Streamboard
streamboard=[
	50,
	100,
	[
		[3,5,3],
		[3,96.5,3],
		[46.5,5,3],
		[46.5,96.5,3]
	],
	[],
	[]
];
hdmi_splitter=[
	54.5,
	57,
	[
		[2.25,3.75,3.5],
		[2.25,37.75,3.5],
		[52.25,3.75,3.5],
		[52.25,37.75,3.5]
	],
	[
		[[13,47,2],[15,12,5.5]],
		[[34.5,45,1.5],[8.5,13.5,11]]
	],
	[]
];
poe_board=[
	74,
	22.8,
	[],
	[],
	[
		[[7.4,0],[1.2,2.5]],
		[[7.4,20.3],[1.2,2.5]],
		[[66.4,0],[1.2,2.5]],
		[[66.4,20.3],[1.2,2.5]]
	]
];
/*
cube([74,22.8,1]);
linear_extrude(height=4.5) drillSlots(poe_board[4]);
cube([74,1,3]);
translate([0,21.8,0]) cube([74,1,3]);*/