var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var cspeed = 10;

//x += (xTo - x)/25;
//y += (yTo - y)/25;

if (up) y -= cspeed;
if (down) y += cspeed;
if (left) x -= cspeed;
if (right) x += cspeed;

//if (follow != noone){
//	xTo = follow.x;
//	yTo = follow.y;
//}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera,vm);