spriteSize = 200

sprite_background = noone

function copy_file(path, data_type){
	var filename = filename_name(path);
		
	var dest_path = obj_project.dir + obj_project.project_name+ "/custom_assets/" + filename;
	if (!directory_exists( obj_project.dir + obj_project.project_name+ "/custom_assets/")) {
		directory_create( obj_project.dir + obj_project.project_name+ "/custom_assets/");
	}
	file_copy(path, dest_path);
	
	obj_project.edit_json_project_file(data_type,"custom_assets\\" + filename)
}

function selectMusic(path){
	if path = ""{
		path = get_open_filename("Sound|*.ogg", "");
		if path != ""{
			copy_file(path, dataType.MUSIC)
		}
	}
    if (path != "") {
		if (obj_maker.audio_stream != -1) {
			audio_destroy_stream(obj_maker.audio_stream);
			obj_maker.audio_stream = -1;
		}
		
        obj_maker.audio_stream = audio_create_stream(path);
		return true
		
    }
	return false
}

function selectBackground(background, path){
	if path = ""{
		path = get_open_filename("Images|*.png;*.jpg", "");
		if path != ""{
			copy_file(path, dataType.BACKGROUND)
		}
	}

    if (path != "") {
        var spr = sprite_add(path, 1, false, false, 0, 0);

        if (spr != -1) {
            var w = sprite_get_width(spr);
            var h = sprite_get_height(spr);
			
			var scaleX = room_width / w;
			var scaleY = room_height / h;
            
            var diff = max(scaleX, scaleY);
            
			sprite_set_offset(spr, w / 2, h / 2);
			
            with(background) {
                sprite_index = spr;
                image_xscale = diff;
                image_yscale = diff;
            }
        }
		return true
    }
	return false
}


function selectPlayer(player, path){
	if path = ""{
		path = get_open_filename("Images|*.png;*.jpg", "");
		if path != ""{
			copy_file(path, dataType.PLAYER)
		}
	}

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
		return true
    }
	return false
}