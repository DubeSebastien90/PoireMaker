spriteSize = 200

sprite_background = noone

function selectBackground(){
	if sprite_background != noone{
		sprite_delete(sprite_background)
	}
    var path = get_open_filename("Images|*.png;*.jpg", "");

    if (path != "") {
        var spr = sprite_add(path, 1, false, false, 0, 0);

        if (spr != -1) {
            var w = sprite_get_width(spr);
            var h = sprite_get_height(spr);
			
			var scaleX = room_width / w;
			var scaleY = room_height / h;
            
            var diff = max(scaleX, scaleY);
            
			sprite_set_offset(spr, w / 2, h / 2);
			
            with(obj_background) {
                sprite_index = spr;
                image_xscale = diff;
                image_yscale = diff;
            }
        }
		sprite_background = spr
    }
}


function selectPlayer(player){
    var path = get_open_filename("Images|*.png;*.jpg", "");

    if (path != "") {
        var spr = sprite_add(path, 1, false, false, 0, 0);

        if (spr != -1) {
            var w = sprite_get_width(spr);
            var h = sprite_get_height(spr);
            
            var maxSize = max(w, h);
            var diff = spriteSize / maxSize;
            
            sprite_set_offset(spr, w / 2, h / 2);
            
            sprite_collision_mask(spr, false, 0, 0, 0, 0, 0, bboxkind_precise, 0);
            
            player.sprite_index = spr;
            player.image_xscale = diff;
            player.image_yscale = diff;
        }
    }
}