local rro = require("lib.remove-replace-object")

local iron_ore=data.raw["item"]["iron-ore"]
data:extend{{
    type="item",
    name="alumina",
    icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-1.png",
    stack_size=iron_ore.stack_size,
    order="a[alumina]",
    subgroup="muluna-products",
    group="intermediate-products",
    weight=iron_ore.weight,
},
{
    type="item",
    name="alumina-crushed",
    icons={
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-1.png",
            scale=0.25,
            shift={0.25,0}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-3.png",
            scale=0.25,
            shift={0,0.25}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-2.png",
            scale=0.25,
            shift={0,-0.25}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-2.png",
            scale=0.25,
            shift={-0.25,0}
        },
    },
    stack_size=iron_ore.stack_size*2,
    order="b[alumina-crushed]",
    subgroup="muluna-products",
    --recipe_group="intermediate-products",
    weight=iron_ore.weight*2/3,
    default_import_location = "muluna",
},
{
    type="item", --Intended to be compatible with Bio-industries, whenever it gets updated to 2.0
    name="stone-crushed",
    icon="__planet-muluna__/graphics/icons/crushed-stone.png", --icon from bio-industries crushed stone
    icon_size=32,
    -- icons ={
    --     {
            
    --     }
        
    -- },
    
    stack_size=data.raw.item["stone"].stack_size*2,
    order="c[stone-crushed]",
    subgroup="muluna-products",
    group=data.raw.item["stone"].group,
    weight=data.raw.item["stone"].weight/2,
},
{
    type="item",
    name="aluminum-plate",
    icon="__planet-muluna__/graphics/icons/metal-plate-aluminium.png",
    icon_size=64,
    -- icons ={
    --     {
            
    --     }
        
    -- },
    
    stack_size=data.raw.item["iron-plate"].stack_size,
    order=data.raw.item["iron-plate"].order,
    subgroup="muluna-products",
    group=data.raw.item["iron-plate"].group,
    weight=data.raw.item["iron-plate"].weight,
    default_import_location = "muluna",
},
{
    type="item",
    name="muluna-sapling",
    icon="__base__/graphics/icons/tree-01.png",
    icon_size=64,
    -- icons ={
    --     {
            
    --     }
        
    -- },
    
    stack_size=1,
    order=data.raw.item["tree-seed"].order .. "a",
    subgroup=data.raw.item["tree-seed"].subgroup,
    group=data.raw.item["tree-seed"].group,
    weight=10*10^12,
    default_import_location = "nauvis",
    --plant_result = "tree-01",
    place_result = "muluna-placed-tree",
},
-- {
--     type="item",
--     name="aluminum-cable",
--     icon="__planet-muluna__/graphics/icons/aluminum-cable.png",
--     icon_size=64,
--     -- icons ={
--     --     {
            
--     --     }
        
--     -- },
    
--     stack_size=data.raw.item["copper-cable"].stack_size,
--     order=data.raw.item["copper-cable"].order,
--     subgroup="muluna-products",
--     group=data.raw.item["copper-cable"].group,
--     weight=data.raw.item["copper-cable"].weight,
--     default_import_location = "muluna",
-- },
{
    type="item",
    name="cellulose",
    icons={
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-1.png",
            --scale=0.25,
            --shift={0.25,0}
            tint = {1,0.8,0.4}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-2.png",
            --scale=0.25,
            --shift={0.25,0}
            tint = {1,0.8,0.4}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-3.png",
            --scale=0.25,
            --shift={0.25,0}
            tint = {1,0.8,0.4}
        },
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-1.png",
            --scale=0.25,
            --shift={0.25,0}
            tint = {1,0.8,0.4}
        },
        
    },
    stack_size=iron_ore.stack_size*4,
    order="b[cellulose]",
    subgroup="muluna-products",
    --recipe_group="intermediate-products",
    weight=iron_ore.weight*1/2,
    fuel_value = "1MJ",
    fuel_category=data.raw["item"]["wood"].fuel_category,
},
{
    type="item",
    name="wood-crushed",
    icons={
        {
            icon="__planet-muluna__/graphics/icons/scrap-metal-aluminium-1.png",
            --scale=0.25,
            --shift={0.25,0}
            tint = {1,0.8,0.4}
        },
    },
    stack_size=iron_ore.stack_size*4,
    order="b[cellulose]",
    subgroup="muluna-products",
    --recipe_group="intermediate-products",
    weight=iron_ore.weight*1/2,
    fuel_value = "1MJ",
    fuel_category=data.raw["item"]["wood"].fuel_category,
},
}

local placed_tree = table.deepcopy(data.raw["plant"]["tree-plant"])

placed_tree.name = "muluna-placed-tree"
placed_tree.growth_ticks = 1
-- end
--     {
--     name = "muluna-placed-tree",
--     growth_ticks = 1,
--     type = "plant",




-- })

data:extend{placed_tree}
    



-- rro.soft_insert(data.raw["tree"]["tree-01"].flags,"placeable-player")

-- data.raw["tree"]["tree-01"].autoplace =
-- {
--   probability_expression = 0,
--   -- required to show agricultural tower plots
--   tile_restriction =
--   {
--     "grass-1", "grass-2", "grass-3", "grass-4",
--     "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
--     "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3"
--   }
-- }