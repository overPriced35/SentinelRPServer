RegisterServerEvent("character:loadspawns")
AddEventHandler("character:loadspawns", function()
    local src = source
    local user = exports["np-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()
    local cid = tonumber(char.id)
    
    exports.ghmattimysql:execute("SELECT cid, roomType FROM houses where cid = @cid ", {['cid'] = cid}, function(housingMotels)
        exports.ghmattimysql:execute("SELECT house_id FROM houses where cid = @cid", {['cid'] =  cid}, function(housing_keys)
            if housingMotels[1] then

                local spawnData = {
                    --["overwrites"] = checkOverwrites(char),
                    ["motelRoom"] = {
                        ["roomType"] = housingMotels[1].roomType,
                        ["cid"] = housingMotels[1].cid,
                    },
                    ["houses"] = {
                    },
                    ["keys"] = {    
                    }
                }

                for k,v in pairs(housingMotels) do 
                    if v.house_id ~= nil then
                        spawnData["houses"][v.house_id] = true
                    end 
                end

                for k,v in pairs(housing_keys) do 
                    if v.house_id ~= nil then
                        spawnData["keys"]["v.house_id"] = true
                    end
                end

                TriggerClientEvent("spawn:clientSpawnData", src, spawnData)

            else
                exports.ghmattimysql:execute("INSERT INTO houses (cid, roomType) VALUES (@cid, @roomType)", {['cid'] = cid, ['roomType'] = '1'})

                local spawnData = {
                    --["overwrites"] ="new",
                    ["motelRoom"] = {
                        ["roomType"] = 1,
                        ["cid"] = cid,
                    },
                    ["houses"] = {
                    },
                    ["keys"] = {
                    }
                }
                
                TriggerClientEvent("spawn:clientSpawnData", src, spawnData)
            end
        end)
    end)
end)

function checkOverwrites(char)
    local overwrite = nil
    return overwrite
end

RegisterServerEvent("np-spawn:newPlayerFullySpawned")
AddEventHandler("np-spawn:newPlayerFullySpawned", function()
    local src = source
    local user = exports["np-base"]:getModule("Player"):GetUser(src)
    local char = user:getCurrentCharacter()

    exports.ghmattimysql:execute([[UPDATE characters SET new = 0 WHERE id = @cid]], {["cid"] = char.id}, function() end)
end)