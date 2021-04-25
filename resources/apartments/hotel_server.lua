local motels = {}
local houses = {}
local roomSV = 0

RegisterServerEvent('hotel:createRoom')
AddEventHandler('hotel:createRoom', function(cid)
    houses = {}
    motels = {}
    local src = source
    local pussy = 0
    --local number = math.random(1,88)
    local asshole = {}
    exports.ghmattimysql:execute("SELECT * FROM houses WHERE cid= ?", {cid}, function(data)
        asshole = data
        if data[1] == nil then
            roomSV = roomSV + 1
            table.insert(motels, {owner = cid, roomnumber = roomSV})
            exports.ghmattimysql:execute("SELECT * FROM houses WHERE cid= ?", {cid}, function(chicken)
                exports.ghmattimysql:execute("SELECT * FROM houses WHERE cid= ?", {cid}, function(chicken2)
                for k, r in pairs(chicken) do
                    if r ~= nil then
                        if r.housename ~= nil then
                            local random = math.random(1111,9999)
                            houses[random] = {}
                            table.insert(houses[random], {["house_name"] = r.housename, ["house_model"] = r.house_model, ["house_id"] = r.house_id})
                            end
                        end
                    end
                    for k, j in pairs(chicken2) do
                        if j ~= nil then
                            if j.housename ~= nil then
                                local random = math.random(1111,9999)
                                houses[random] = {}
                                table.insert(houses[random], {["house_name"] = j.housename, ["house_model"] = j.house_model, ["house_id"] = j.house_id})
                            end
                        end
                    end
                    for k, v in pairs(motels) do
                        if v.owner == cid then
                        pussy = v.roomnumber
                    end
                end
                    TriggerClientEvent('hotel:createRoom1', src, pussy, 1, houses)
                    TriggerClientEvent('hotel:SetID', src, cid)
                end)
            end)
        else
            exports.ghmattimysql:execute("SELECT * FROM houses WHERE cid= ?", {cid}, function(chicken)
                for k, v in pairs(chicken) do
                    if v ~= nil then
                        if v.housename ~= nil then
                            local random = math.random(1111,9999)
                            houses[random] = {}
                            table.insert(houses[random], {["house_name"] = v.housename, ["house_model"] = v.house_model, ["house_id"] = v.house_id})
                            TriggerClientEvent('hotel:createRoom1', src, asshole[1].roomNumber, asshole[1].roomType, houses)
                            TriggerClientEvent('hotel:SetID', src, cid)
                            return
                        end
                    end
                end
           
                TriggerClientEvent('hotel:createRoom1', src, asshole[1].roomNumber, asshole[1].roomType, 0)
                TriggerClientEvent('hotel:SetID', src, cid)
            end)
        end
    end)
end)

RegisterServerEvent('hotel:updatelocks')
AddEventHandler('hotel:updatelocks', function(status)
    local src = source
    TriggerClientEvent('hotel:updateLockStatus', src, status)
end)

RegisterServerEvent('hotel:clearStates')
AddEventHandler('hotel:clearStates', function(cid)
    for k, v in pairs(motels) do
        if v.owner == cid then
            table.remove(motels, k)
        end
    end
end)

RegisterServerEvent('hotel:upgradeApartment')
AddEventHandler('hotel:upgradeApartment', function(cid, roomType, roomNumber)
    local src = source
    local user = exports["np-base"]:getModule("Player"):GetUser(src)
    for k, v in pairs(motels) do
        if v.owner == cid then
            table.remove(motels, k)
        end
    end
    if user:getCash() >= 50000 then
        if roomType == 1 then
            user:removeMoney(50000)
            exports.ghmattimysql:execute('INSERT INTO houses(cid, roomType) VALUES(?, ?)', {cid, 2})
            TriggerClientEvent('newRoomType', src, 2)
            TriggerClientEvent('DoLongHudText', src, "Congratulations, your new Integrity Apartment is available!")
            roomSV = roomSV - 1
        else
            TriggerClientEvent('DoLongHudText', src, "You already have an Integrity Apartment!", 2)
        end
    else
        TriggerClientEvent('DoLongHudText', src, "You dont have enough money to buy an Integrity Apartment!", 2)
    end
end)

AddEventHandler('playerDropped', function()
    roomSV = (roomSV - 1)
    if roomSV == -1 then
        roomSV = 0
    end
end)