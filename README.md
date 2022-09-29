# OXY3N MENU
Menu System STANDALONE Inspired in QB-Menu and NH Context Menu

This is a modified version of **[NH Context](https://forum.cfx.re/t/no-longer-supported-standalone-nerohiro-s-context-menu-dynamic-event-firing-menu/2564083)** by **[NeroHiro](https://github.com/nerohiro)**

This is a modified version of **[QB-Menu](https://github.com/qbcore-framework/qb-menu)** by **[qbcore-framework](https://github.com/qbcore-framework)**

--[[
EXAMPLE MENU
--]]

```
RegisterCommand("oxy3ntestmenu", function(source, args, raw)
    openMenu({
        {
            header = "Main Title",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Sub Menu Button",
            txt = "This goes to a sub menu",
            params = {
                event = "oxy3n_menu:testMenu2",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Sub Menu Button",
            txt = "This goes to a sub menu",
            disabled = true,
            -- hidden = true, -- doesnt create this at all if set to true
            params = {
                event = "oxy3n_menu:testMenu2",
                args = {
                    number = 1,
                }
            }
        },
    })
end)
```
```
RegisterNetEvent('oxy3n_menu:testMenu2', function(data)
    local number = data.number
    openMenu({
        {
            header = "< Go Back",
        },
        {
            header = "Number: "..number,
            txt = "Other",
            params = {
                event = "oxy3n_menu:testButton",
                args = {
                    message = "This was called by clicking this button"
                }
            }
        },
    })
end)
```
```
RegisterNetEvent('oxy3n_menu:testButton', function(data)
    -- NOTIFy System
end)
```
