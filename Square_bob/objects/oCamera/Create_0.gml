// Target
target = oPlayer;

// Camera size must match game resolution
view_width = 320;
view_height = 180;

// Create camera
cam = camera_create_view(0, 0, view_width, view_height, 0, -1, -1, view_width, view_height);

// Assign camera to viewport 0
view_camera[0] = cam;