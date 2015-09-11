    if global.stone >= 5
    {
        if (distance_to_point(par_gui.x,par_gui.y)>=16)
        {
            if(ctrl_grid.grid[x div 64, y div 64] == eStatus.EMPTY){
               instance_create(x,y,obj_stone_block) //Create a block at the cursor position
               instance_create(x+64,y,obj_hammer) //Create a hammer at the cursor position
               
               ctrl_grid.grid[x/64, y/64] = eStatus.WOOD;
               
               with(instance_place(x, y-1, obj_stone_block)){
                  event_user(0);
               }
               with(instance_place(x+ctrl_grid.cell_width, y, obj_stone_block)){
                  event_user(0);
               }
               with(instance_place(x, y+ctrl_grid.cell_height, obj_stone_block)){
                  event_user(0);
               }
               with(instance_place(x-1, y, obj_stone_block)){
                  event_user(0);
               }
               global.stone -= 5;
            } else { 
               show_message("Can't place block there!");
            }
        }
    }
