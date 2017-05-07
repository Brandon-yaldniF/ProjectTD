//create zoom variables
zoom_level = 1;
//get the starting view size to be used for interpolation later
zw = 384;
zh = 216;

//create camera
view_camera[0] = camera_create();

//set camera's view matrix and orthographic projection
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(zw,zh,1,10000);

camera_set_view_mat(view_camera[0], vm);
camera_set_proj_mat(view_camera[0], pm);

