/// Move Highlight and create Rocks

//Snap Highlight to mouse
x = mouse_x;
y = mouse_y;

//Snap hightlight to grid
move_snap(16, 16);

//Test the sprite's collision mask vs the collision map
var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
var t4 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;

//Change sprite to red and prevent tower creation
if (t1 != 0 || t2 != 0 || t3 != 0 || t4 != 0){
	sprite_index = spr_highlight2;
	cantPlace = 1;
} else {
	sprite_index = spr_highlight;
	cantPlace = 0;
}

//Limit and create Rocks
if(rockLimit == 0 && mouse_check_button(mb_left)){
	
	/// Check for tower collison
	if(place_meeting(x, y, obj_tower) > 0 || cantPlace == 1) {
		
	} else {
		instance_create_layer(x, y, "Towers", obj_tower); 
		rockLimit = 1;
	}
		
} else if (mouse_check_button_released(mb_left)){
	rockLimit = 0;
}



