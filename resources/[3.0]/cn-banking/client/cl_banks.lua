local closedBanks = {}
local listening = false
local isBankInterfaceOpen = false

local Banks1 = BoxZone:Create(vector3(1175.8, 2706.82, 38.09), 2.95, 0.8, {
    name = "banking",
    heading = 271,
    minZ = 36.99,
    maxZ = 40.59
})

local Banks2 = BoxZone:Create(vector3(-2962.62, 482.18, 15.7), 2.95, 0.8, {
    name = "banking",
    heading = 177,
    minZ = 14.6,
    maxZ = 18.2
})

local Banks3 = BoxZone:Create(vector3(252.63, 221.23, 106.29), 2.95, 0.8, {
    name = "banking",
    heading = 70,
    minZ = 105.19,
    maxZ = 108.79
})

local Banks4 = BoxZone:Create(vector3(242.22, 224.99, 106.29), 2.95, 0.8, {
    name = "banking",
    heading = 70,
    minZ = 105.19,
    maxZ = 108.79
})

local Banks5 = BoxZone:Create(vector3(-1213.29, -331.08, 37.78), 2.95, 0.8, {
    name = "banking",
    heading = 118,
    minZ = 36.58,
    maxZ = 40.18,
})

local Banks6 = BoxZone:Create(vector3(-351.63, -49.67, 49.04), 2.95, 0.8, {
    name = "banking",
    heading = 71,
    minZ = 47.99,
    maxZ = 51.39
})

local Banks7 = BoxZone:Create(vector3(313.58, -278.91, 53.92), 2.95, 0.8, {
    name = "banking",
    heading = 70,
    minZ = 52.87,
    maxZ = 56.27
})

local Banks8 = BoxZone:Create(vector3(149.22, -1040.5, 29.37), 2.95, 0.8, {
    name = "banking",
    heading = 70,
    minZ = 28.32,
    maxZ = 31.72,
    
})

local insideBank = false
Citizen.CreateThread(function()
    while true do
        local plyPed = PlayerPedId()
        local coord = GetEntityCoords(plyPed)
        insideBank = Banks1:isPointInside(coord)
        insideBank = Banks2:isPointInside(coord)
        insideBank = Banks3:isPointInside(coord)
        insideBank = Banks4:isPointInside(coord)
        insideBank = Banks5:isPointInside(coord)
        insideBank = Banks6:isPointInside(coord)
        insideBank = Banks7:isPointInside(coord)
        insideBank = Banks8:isPointInside(coord)
        Citizen.Wait(500)
    end
end)

local listening = false
local function listenForKeypress()
    listening = true
    Citizen.CreateThread(function()
        while listening do
            if IsControlJustReleased(0, 38) then
                listening = false
                exports["cn-ui"]:Clear("cn-ui:drawnotify")
                TriggerEvent("banking:open-bank")
            end
            Wait(0)
        end
    end)
end

Banks1:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks2:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks3:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks4:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks5:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks6:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks7:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

Banks8:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
    if isPointInside then
        exports["cn-ui"]:DrawNotify("cn-ui:drawnotify", "[E] Use Bank", "#147efb", "fas fa icons")
        listenForKeypress()
    else
        exports["cn-ui"]:Clear("cn-ui:drawnotify")
    end
end)

