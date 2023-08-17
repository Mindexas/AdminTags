# mdx-AdminTags

A script that's useful to ESX Server owners and admins, when a situation calls for them. Show to everyone that you're the admind and stand out, so you don't get mixed up!

Have fun with it. 


## Editing the config

You may edit the config as you need. You'll find it in config.lua

## How to add more admins/staff?

The config contains the StaffIds.

You can add more admins by using this template
```lua
["steam_hex_id"] = "rank",
```
Example
```lua
Config.StaffIds = {
    ["steam:abcdefg123123"] = "owner",
}
```

## Changing/Adding ranks

The config also contains the StaffRankLabels
```lua
Config.StaffRankLabels = {
    ["owner"] = "Owner",
    ["admin"] = "Administrator",
    ["mod"] = "Moderator",
}
```
You may add them and remove them as you please
```lua
["rank"] = "Rank/Name (This will be shown to everyone)"
```
Make sure the rank matches the rank that the staff has, so in StaffIds "owner" (as provided in my example), must match `["owner"]` in front of the shown string




## Contributing

Contributions are always welcome!

Please submit an issue if you have any bugs/suggestions for the code.


## License

[GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/)

#RespectTheLicense

