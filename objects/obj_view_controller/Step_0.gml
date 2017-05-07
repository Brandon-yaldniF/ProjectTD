var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var cspeed = 10;

//on key press, move camera
if (up) y -= cspeed;
if (down) y += cspeed;
if (left) x -= cspeed;
if (right) x += cspeed;

//move the zoom level based on mouse scrolling. Clamp the value to limit zoom.
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.5), 5, 10);

//get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//set the rate of interpolation
var rate = 0.2;

//get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * zw, rate);
var new_h = lerp(view_h, zoom_level * zh, rate);

//restrict camera movement to the room boundaries
x = clamp(x, 0 + (new_w/2), room_width - (new_w/2));
y = clamp(y, 0 + (new_h/2), room_height - (new_h/2));

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(new_w,new_h,1,10000);
camera_set_view_mat(view_camera[0], vm);
camera_set_proj_mat(view_camera[0], pm);