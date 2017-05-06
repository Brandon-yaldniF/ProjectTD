/// Define variables

//Tile map info
var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

//temp vars
cantPlace = 0;
rockLimit = 0;
mine = 0;