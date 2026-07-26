squash = false;
scale_y = 1;
angle = 0;
target = 0;
scale = 1;

global.music_emitter = audio_emitter_create();
global.music_fx = audio_bus_create();
audio_emitter_bus(global.music_emitter, global.music_fx);

can_show_hud = false;
glow_alpha = 0;
alpha_hud = 0;

hud_scale = 0;
hud_sub_scale = 0;
clear_scale = 200;
can_glow = false;