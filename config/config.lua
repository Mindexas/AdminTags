-- Please don't remove this. 
print("^2| MDX-dev |^0^2 Script made by : ^0 Mindexas")
-- Please don't remove this. 

Config = {}
Config.CommandName = "tag" -- Specify the command name to use for toggling
Config.SeeOwnLabel = true -- Self explanitory
Config.SeeDistance = 160 -- The distance the tag is seeable from
Config.TextSize = 0.8
Config.ZOffset = 1.2
Config.NearCheckWait = 500
Config.TagByPermission = false --Using xPlayer.getPermissions() which is deprecated method for old ESX

Config.StaffIds = {
    ["steam:abcdefg123123"] = "label", -- ["steam_hex_id"] = "group"
}

Config.StaffRankLabels = {
    ["owner"] = "Owner",
    ["admin"] = "Administrator",
    ["mod"] = "Moderator",
}

-- Check README.MD for documentation