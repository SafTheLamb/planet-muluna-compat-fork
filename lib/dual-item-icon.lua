local Public = {}

local function generate_void_icons(fluid_icons)
    local icons = fluid_icons
    if not icons then return end

    icons = table.deepcopy(icons)
    table.insert(icons, 1, {
        icon = "__core__/graphics/filter-blacklist.png",
        icon_size = 101,
        scale = 0.35*64/101
    })
    return icons
end

function Public.dual_icon(item_1,item_2)
    local icon = {}
    local type_1 = "item"
    local type_2 = "item"
    if data.raw["fluid"][item_1] then type_1 = "fluid" end
    if data.raw["fluid"][item_2] then type_2 = "fluid" end
    if data.raw[type_1][item_1].icon then
        icon[1]={
            icon=data.raw[type_1][item_1].icon,
            icon_size=data.raw[type_1][item_1].icon_size,
            scale=0.35,
            draw_background = true
        }
        if data.raw[type_1][item_1].icon_size then
            icon[1].scale=icon[1].scale * 64 /data.raw[type_1][item_1].icon_size
        end
    elseif data.raw[type_1][item_1].icons then
        

        icon[1]={
            icon=data.raw[type_1][item_1].icons[1].icon,
            icon_size=data.raw[type_1][item_1].icons[1].icon_size,
            scale=0.35,
            draw_background = true,
        }
    else 
        log(type_1 .. " \"".. data.raw[type_1][item_1].name .. "\" icon not found. Using a placeholder in composite icon instead." )
        icon[1]={
            icon = "__core__/graphics/filter-blacklist.png",
            icon_size = 101,
            scale = 0.35,
            draw_background = true,
        }
    end
    if data.raw[type_2][item_2].icon then
        icon[2]={
            icon=data.raw[type_2][item_2].icon,
            icon_size=data.raw[type_2][item_2].icon_size,
            scale=0.30,
            shift = {10,-10},
            draw_background = true,
            }
            if data.raw[type_2][item_2].icon_size then
                icon[2].scale=icon[2].scale* 64 /data.raw[type_2][item_2].icon_size
            end
    elseif data.raw[type_2][item_2].icons then
        icon[2]={
            icon=data.raw[type_2][item_2].icons[1].icon,
            icon_size=data.raw[type_2][item_2].icons[1].icon_size,
            scale=0.30,
            shift = {10,-10},
            draw_background = true,
            }
    else
        icon[2]={
            log(type_2 .. " \"".. data.raw[type_2][item_2].name .. "\" icon not found. Using a placeholder in composite icon instead." ),
            icon = "__core__/graphics/filter-blacklist.png",
            icon_size = 101,
            scale = 0.30,
            shift = {10,-10},
            draw_background = true,
        }

    end
    
    
    return icon
end

    function Public.dual_icon_reversed(item_1,item_2)
        local icon = {}
        local type_1 = "item"
        local type_2 = "item"
        if data.raw["fluid"][item_1] then type_1 = "fluid" end
        if data.raw["fluid"][item_2] then type_2 = "fluid" end
        if data.raw[type_1][item_1].icon then
            icon[1]={
                icon=data.raw[type_1][item_1].icon,
                icon_size=data.raw[type_1][item_1].icon_size,
                scale=0.35,
                draw_background = true,
                shift = {10,0},
            }
            if data.raw[type_1][item_1].icon_size then
                icon[1].scale=icon[1].scale * 64 /data.raw[type_1][item_1].icon_size
            end
        else
            icon[1]={
                icon=data.raw[type_1][item_1].icons[1].icon,
                icon_size=data.raw[type_1][item_1].icons[1].icon_size,
                scale=0.35,
                draw_background = true,
            }
        end
        if data.raw[type_2][item_2].icon then
            icon[2]={
                icon=data.raw[type_2][item_2].icon,
                icon_size=data.raw[type_2][item_2].icon_size,
                scale=0.30,
                shift = {0,-10},
                draw_background = true,
                }
                if data.raw[type_2][item_2].icon_size then
                    icon[2].scale=icon[2].scale* 64 /data.raw[type_2][item_2].icon_size
                end
        else
            icon[2]={
                icon=data.raw[type_2][item_2].icons[1].icon,
                icon_size=data.raw[type_2][item_2].icons[1].icon_size,
                scale=0.30,
                shift = {10,-10},
                draw_background = true,
                }
        end
        
        
        return icon
    end





return Public