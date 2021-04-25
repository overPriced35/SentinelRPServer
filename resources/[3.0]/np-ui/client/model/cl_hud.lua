local compassEnabled = true
local compassRoadNamesEnabled = true
local compassWaitTime = 16
local speedometerWaitTime = 64
local showCompassFromWatch = false
local showCompassFromCar = false
local minimapEnabled = true
local wasMinimapEnabled = true

local inVehicle = false
local engineOn = false
local isDead = false
local area = ""
local street = ""
local runningRoadNames = false
local compassRunning = false
local speed = 0

--
local cmdsSet = {}
RegisterNUICallback("np-ui:hudSetPreferences", function(data, cb)
    cb({ data = {}, meta = { ok = true, message = "done" } })
    compassEnabled = data["hud.compass.enabled"]
    compassWaitTime = data["hud.compass.fps"]
    compassRoadNamesEnabled = data["hud.compass.roadnames.enabled"]
    speedometerWaitTime = data["hud.vehicle.speedometer.fps"]
    minimapEnabled = data["hud.vehicle.minimap.enabled"]

    if data["hud.presets"] then
      local idx = 0
      for _, p in pairs(data["hud.presets"]) do
        idx = idx + 1
        if not cmdsSet[idx] then
          local eventOptions = {
            changeHud = idx,
          }
          local s = tostring(idx)
          --exports["np-keybinds-1"]:registerKeyMapping("", "HUD", "Enable " .. s, "+hud_enable_" .. s, "-hud_enable_" .. s)
          RegisterCommand('+hud_enable_' .. s, function()
            exports["np-ui"]:sendAppEvent("preferences", eventOptions)
          end, false)
          RegisterCommand('-hud_enable_' .. s, function() end, false)
          cmdsSet[idx] = true
        end
      end
    end
end)

-- RegisterNUICallback("np-ui:getRTCSettings", function(data, cb)
--   local data = exports["np-fiber"]:getRTCSettings()
--   cb({ data = data, meta = { ok = true, message = "done" } })
-- end)

--

local function toggleCompass()
    sendAppEvent("hud.compass", {
        showCompass = showCompassFromWatch or (compassEnabled and showCompassFromCar),
        showRoadNames = compassRoadNamesEnabled and inVehicle,
    })
end

--

AddEventHandler("np-ui:watch", function()
    showCompassFromWatch = not showCompassFromWatch
    if showCompassFromWatch then
        generateCompass()
    end
    toggleCompass()
end)

AddEventHandler("np:voice:proximity", function(proximity)
    sendAppEvent("hud", {
        voiceRange = proximity,
    })
end)

AddEventHandler("np:voice:transmissionStarted", function(data)
    sendAppEvent("hud", {
        voiceActive = not data.radio,
        voiceActiveRadio = data.radio,
    })
end)

AddEventHandler("np:voice:transmissionFinished", function()
    sendAppEvent("hud", {
        voiceActive = false,
        voiceActiveRadio = false,
    })
end)

AddEventHandler("pd:deathcheck", function()
    isDead = not isDead
    sendAppEvent("game", {
        isAlive = not isDead
    })
end)



--

function roundedRadar()
    if not minimapEnabled or not inVehicle then
        DisplayRadar(0)
        SetRadarBigmapEnabled(true, false)
        Citizen.Wait(0)
        SetRadarBigmapEnabled(false, false)
        return
    end
    Citizen.CreateThread(function()
        RequestStreamedTextureDict("circlemap", false)
        while not HasStreamedTextureDictLoaded("circlemap") do
            Citizen.Wait(0)
        end
        AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "circlemap", "radarmasksm")
        --AddReplaceTexture("platform:/textures/graphics", "radarmasklg", "circlemap", "radarmasklg")

        SetBlipAlpha(GetNorthRadarBlip(), 0.0)
        SetBlipScale(GetMainPlayerBlipId(), 0.7)
        -- for k,v in pairs(exports["np-base"]:getModule("Blips")) do
        --     SetBlipScale(v["blip"], 0.7)
        -- end

        local screenX, screenY = GetScreenResolution()
        local modifier = screenY / screenX

        local baseXOffset = -0.01
        local baseYOffset = 0.00

        local baseSize    = 0.28 -- 20% of screen

        local baseXWidth  = 0.200 -- baseSize * modifier -- %
        local baseYHeight = baseSize -- %

        local baseXNumber = screenX * baseSize  -- 256
        local baseYNumber = screenY * baseSize  -- 144

        local radiusX     = baseXNumber / 2     -- 128
        local radiusY     = baseYNumber / 2     -- 72
        
        local innerSquareSideSizeX = math.sqrt(radiusX * radiusX * 2) -- 181.0193
        local innerSquareSideSizeY = math.sqrt(radiusY * radiusY * 2) -- 101.8233

        local innerSizeX = ((innerSquareSideSizeX / screenX) - 0.01) * modifier
        local innerSizeY = innerSquareSideSizeY / screenY

        local innerOffsetX = (baseXWidth - innerSizeX) / 2
        local innerOffsetY = (baseYHeight - innerSizeY) / 2

        local innerMaskOffsetPercentX = (innerSquareSideSizeX / baseXNumber) * modifier
        local  posX = -0.0085
        local  posY = -0.010 -- 0.0152
        
        local  width = 0.128
        local  height = 0.221 --0.354
        local function setPos(type, posX, posY, sizeX, sizeY)
            SetMinimapComponentPosition(type, "L", "B", posX, posY, sizeX, sizeY)
        end
        SetMinimapComponentPosition('minimap', 'L', 'B', -0.037, -0.024, 0.180, 0.221)
        SetMinimapComponentPosition('minimap_mask', 'L', 'B', -0.017, 0.021, 1.203, 0.305)
        SetMinimapComponentPosition('minimap_blur', 'L', 'B', -0.0155, 0.020, 0.218, 0.305)
        --setPos("minimap",       baseXOffset - (0.025 * modifier), baseYOffset - 0.025, baseXWidth + (0.05 * modifier), baseYHeight + 0.05)
        --setPos("minimap_blur",  baseXOffset, baseYOffset, baseXWidth + 0.001, baseYHeight)
        -- setPos("minimap_mask",  baseXOffset + innerOffsetX, baseYOffset + innerOffsetY, innerSizeX, innerSizeY)
        -- The next one is FUCKING WEIRD.
        -- posX is based off top left 0.0 coords of minimap - 0.00 -> 1.00
        -- posY seems to be based off of the top of the minimap, with 0.75 representing 0% and 1.75 representing 100%
        -- sizeX is based off the size of the minimap - 0.00 -> 0.10
        -- sizeY seems to be height based on minimap size, ranging from -0.25 to 0.25
        --setPos("minimap_mask", 0.1, 0.95, 0.09, 0.15)
        -- setPos("minimap_mask", 0.0, 0.75, 1.0, 1.0)
        -- setPos("minimap_mask",  baseXOffset, baseYOffset, baseXWidth, baseYHeight)

        SetMinimapClipType(1)
        DisplayRadar(0)
        SetRadarBigmapEnabled(true, false)
        Citizen.Wait(0)
        SetRadarBigmapEnabled(false, false)
        DisplayRadar(1)
    end)
end

function generateRoadNames()
    if not compassRoadNamesEnabled or runningRoadNames then return end
    Citizen.CreateThread(function()
        runningRoadNames = true
        while compassRoadNamesEnabled and inVehicle do
            Citizen.Wait(500)

            local playerCoords = GetEntityCoords(PlayerPedId(), true)
            local currentStreetHash, intersectStreetHash = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z, currentStreetHash, intersectStreetHash)
            currentStreetName = GetStreetNameFromHashKey(currentStreetHash)
            intersectStreetName = GetStreetNameFromHashKey(intersectStreetHash)
            zone = tostring(GetNameOfZone(playerCoords))
            area = GetLabelText(zone)

            if area == "Fort Zancudo" then
                area = "Williamsburg"
            end

            if intersectStreetName ~= nil and intersectStreetName ~= "" then
                playerStreetsLocation = currentStreetName .. " [" .. intersectStreetName .. "]"
            elseif currentStreetName ~= nil and currentStreetName ~= "" then
                playerStreetsLocation = currentStreetName
            else
                playerStreetsLocation = ""
            end
            
            street = playerStreetsLocation
        end
        runningRoadNames = false
    end)
end

function generateCompass()
    if compassRunning then return end
    compassRunning = true
    Citizen.CreateThread(function()
        local function shouldShowCompass()
            return showCompassFromWatch or (compassEnabled and showCompassFromCar)
        end
        local function shouldShowSpeed()
            return inVehicle and minimapEnabled
        end
        while shouldShowCompass() or shouldShowSpeed() do
            local cWait = shouldShowCompass() and compassWaitTime or 1000
            local sWait = shouldShowSpeed() and speedometerWaitTime or 1000
            Citizen.Wait(math.min(cWait, sWait))
            local s = GetGameTimer()
            local heading = math.floor(-GetFinalRenderedCamRot(0).z % 360)

            sendAppEvent("hud.compass", {
                area = area,
                heading = heading,
                speed = speed,
                street = street,
            })

        end
        compassRunning = false
    end)
end

-- SPEEDOMETER
local beltShow = false
local harnessDurability = 0
AddEventHandler("seatbelt", function(belt)
    beltShow = belt
end)

-- AddEventHandler("harness", function(belt, dur)
--     beltShow = belt
--     harnessDurability = dur
-- end)

local nos = 0

local nosEnabled = false

RegisterNetEvent("noshud")
AddEventHandler("noshud", function(_nos, _nosEnabled)
    if _nos == nil then
        nos = 0
    else
        nos = _nos
    end
    nosEnabled = _nosEnabled
end)



local speedoRunning = false
function generateSpeedo()
    makeHudDirty()
    if speedoRunning then return end
    speedoRunning = true
    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
    local flyer = IsPedInAnyPlane(PlayerPedId()) or IsPedInAnyHeli(PlayerPedId())


    local altitude = false
    local engineDamageShow = false
    local gasDamageShow = false

    Citizen.CreateThread(function()
        while engineOn do
            if flyer then
                altitude = math.floor(GetEntityHeightAboveGround(veh) * 3.28084)
            end
            local veh = GetVehiclePedIsIn(PlayerPedId(), false)
            local fuelcek = exports["LegacyFuel"]:GetFuel(veh) 
            setHudValue("altitude", altitude)
            setHudValue("altitudeShow", altitude ~= false)
            setHudValue("beltShow", not beltShow)
            setHudValue("engineDamageShow", engineDamageShow)
            setHudValue("fuel", math.ceil(fuelcek))
            setHudValue("gasDamageShow", gasDamageShow)
            --setHudValue("harnessDurability", harnessDurability)
           --setHudValue("nos", nos)
           --setHudValue("nosEnabled", nosEnabled)
           --setHudValue("nosShow", nos > 0)
            
            if IsWaypointActive() then
              local dist = (#(GetEntityCoords(PlayerPedId()) - GetBlipCoords(GetFirstBlipInfoId(8))) / 1000) * 0.715 -- quick conversion maff
              setHudValue("waypointActive", true)
              setHudValue("waypointDistance", dist)
            else
              setHudValue("waypointActive", false)
            end

            Citizen.Wait(500)
        end
        speedoRunning = false
    end)
    
    Citizen.CreateThread(function()
        while engineOn do
            if GetVehicleEngineHealth(veh) < 400.0 then
                engineDamageShow = true
            end
            if GetVehiclePetrolTankHealth(veh) < 3002.0 then
                gasDamageShow = true
            end
            
            --if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
            --    harnessDurability = exports["np-vehicles"]:GetVehicleMetadata(veh, 'harness')
            --end

            Citizen.Wait(10000)
        end
    end)
    
    Citizen.CreateThread(function()
        while engineOn do
            speed = math.ceil(GetEntitySpeed(veh) * 2.236936)
            Citizen.Wait(speedometerWaitTime)
        end
    end)
end

-- HEALTH/ARMOR
local startedHealthArmorUpdates = false
function startHealthArmorUpdates1()
    makeHudDirty()
    if startedHealthArmorUpdates then return end
    local prevHealth = -1
    local prevArmor = -1
    Citizen.CreateThread(function()
        startedHealthArmorUpdates = true
        while true do
            local player = PlayerPedId()
            local armor = GetPedArmour(player)
            if armor < 0 then armor = 0 end
            if armor > 100 then armor = 100 end
            local health = (GetEntityHealth(player) - 100)
            if health > 100 then health = 100 end
            if health < 0 or isDead then health = 0 end

            setHudValue("armor", armor)
            setHudValue("health", health)
            Citizen.Wait(500)
        end
    end)
end

-- VEHICLE CHECKS
Citizen.CreateThread(function()
    while true do
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        if veh ~= 0 and not inVehicle then
            inVehicle = true
            setGameValue("vehicle", { hash = GetEntityModel(veh) })
        elseif veh == 0 and inVehicle then
            inVehicle = false
            setGameValue("vehicle", -1)
            --setHudValue("harnessDurability", 0)
            setHudValue("nos", 0)
            setHudValue("nosShow", false)
        end
        
        local eon = IsVehicleEngineOn(veh)
        if eon and not engineOn then
            engineOn = true
            showCompassFromCar = true

            generateSpeedo()
            generateCompass()
            generateRoadNames()
            toggleCompass()

            roundedRadar()
            
            sendAppEvent("hud", {                       
                display = true,                         
                radarShow = minimapEnabled,  -- carhud                       
            })                      

        elseif not eon and engineOn then
            engineOn = false
            showCompassFromCar = false

            toggleCompass()

            sendAppEvent("hud", {
                radarShow = false --carhud
            })

            Citizen.Wait(32)
            DisplayRadar(0)
        elseif wasMinimapEnabled ~= minimapEnabled then
            wasMinimapEnabled = minimapEnabled
            roundedRadar()
        end

        Citizen.Wait(250)
    end
end)

--RADAR / MINIMAP STUFF
local pauseActive = false
Citizen.CreateThread(function()
    while true do
        -- DontTiltMinimapThisFrame()
        local isPMA = IsPauseMenuActive()
        if isPMA and not pauseActive then
            pauseActive = true
            sendAppEvent("hud", { display = false })
            -- SetBlipScale(GetFirstBlipInfoId(8), 1.0) -- WAYPOINT BLIP
        elseif not isPMA and pauseActive then
            pauseActive = false
            -- SetBlipScale(GetFirstBlipInfoId(8), 0.0)
            sendAppEvent("hud", { display = true })
        end
        Citizen.Wait(250)
    end
end)


-- No idle cams
Citizen.CreateThread(function()
    while true do
      InvalidateIdleCam()
      N_0x9e4cfff989258472() -- Disable the vehicle idle camera
      Wait(10000) --The idle camera activates after 30 second so we don't need to call this per frame
    end 
end)

-- idk
function lerp(min, max, amt)
    return (1 - amt) * min + amt * max
end
function rangePercent(min, max, amt)
    return (((amt - min) * 100) / (max - min)) / 100
end

--hud menu
RegisterCommand("hud", function(source, args)
    openApplication("preferences")
end)

local wearingHarness = false
local wearingSeatbelt = false

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
     if GetVehiclePedIsIn(PlayerPedId(), false) then
        if IsControlJustReleased(0, 246) then
            toggleSeatbelt()
        end
     end
    end
end)

  
local function isDriver()
  return GetPedInVehicleSeat(currentVehicle, -1) == PlayerPedId()
end
  
function toggleSeatbelt()
  currentVehicle = GetVehiclePedIsIn(PlayerPedId())
  isInsideVehicle = currentVehicle ~= 0

  if isInsideVehicle then
    --local harnessLevel = exports['np-vehicles']:GetVehicleMetadata(currentVehicle, 'harness') or 0
    --local hasHarness = harnessLevel > 0
    if wearingSeatbelt and not wearingHarness then -- Wearing seatbelt but no harness, taking off
    TriggerEvent('InteractSound_CL:PlayOnOne', 'unbuckle', 0.7)
      wearingSeatbelt = false
      SetFlyThroughWindscreenParams(10.0, 1.0, 1.0, 1.0)
    --elseif wearingSeatbelt and wearingHarness and isDriver() then -- Wearing seatbelt/harness, taking off
    --  toggleHarness(false)
    --elseif not wearingSeatbelt and not wearingSeatbelt and isDriver() and hasHarness then -- Not wearing anything and have harness
    --  toggleHarness(true)
    elseif not wearingSeatbelt and not wearingHarness then
        TriggerEvent('InteractSound_CL:PlayOnOne', 'buckle', 0.7)
        wearingSeatbelt = true
      SetFlyThroughWindscreenParams(45.0, 1.0, 1.0, 1.0)
    end
    --TriggerEvent('harness', wearingHarness, exports['np-vehicles']:GetVehicleMetadata(currentVehicle, 'harness'))
    TriggerEvent('seatbelt', wearingSeatbelt)
  end
end

function toggleHarness(pState)
  local defaultSteering = GetVehicleHandlingFloat(currentVehicle, 'CHandlingData', 'fSteeringLock')
  toggleTurning(currentVehicle, false, defaultSteering)
  local harnessTimer = exports['np-taskbar']:taskBar(5000, (pState and 'Putting on Harness' or 'Taking off Harness'), true)
  if harnessTimer == 100 then
    wearingHarness = pState
    wearingSeatbelt = pState
    TriggerEvent('InteractSound_CL:PlayOnOne', (pState and 'seatbelt' or 'seatbeltoff'), 0.7)
  end
  toggleTurning(currentVehicle, true, defaultSteering)
end

-- PRE SPAWN
local charSpawned = false

Citizen.CreateThread(function()
    while not charSpawned do
        DisplayRadar(0)
        Citizen.Wait(0)
    end
end)

RegisterCommand('ahbe', function()
    charSpawned = true
    Citizen.CreateThread(function()
        DisplayRadar(0)
        SetRadarBigmapEnabled(true, false)
        Citizen.Wait(0)
        SetRadarBigmapEnabled(false, false)
        DisplayRadar(0)
        Citizen.Wait(0)
        --sendCharacterData()
        --local systemSettings = RPC.execute("GetSystemSettings")
        --sendAppEvent("system", systemSettings) -- SYSTEM DATA HERE
        sendAppEvent("hud", {
            display = true,
        })
        startHealthArmorUpdates1()
    end)
end)

AddEventHandler('playerSpawned', function()
    Citizen.Wait(5000)
    ExecuteCommand('ahbe')
end)

RegisterNetEvent("timeheader")
AddEventHandler("timeheader", function(pHour, pMinutes)
    setGameValue("time", ("%s:%s"):format(pHour > 9 and pHour or "0" .. pHour, pMinutes > 9 and pMinutes or "0" .. pMinutes))
end)

RegisterNetEvent("kWeatherSync")
AddEventHandler("kWeatherSync", function(pWeather)
    setGameValue("weather", pWeather)
    setGameValue("weatherIcon", getWeatherIcon(pWeather))
end)

-- Please lua, get yourself a GOD DAMN FUCKING SWITCH CASE FUCKING IDIOT PIECE OF SHIT
function getWeatherIcon(pWeather)
    if pWeather == "EXTRASUNNY" or pWeather == "CLEAR" then
        return "sun"
    elseif pWeather == "THUNDER" then
        return "poo-storm"
    elseif pWeather == "CLEARING" or pWeather == "OVERCAST" then
        return "cloud-sun-rain"
    elseif pWeather == "CLOUD" then
        return "cloud"
    elseif pWeather == "RAIN" then
        return "cloud-rain"
    elseif pWeather == "SMOG" or pWeather == "FOGGY" then
        return "smog"
    end
end

Citizen.CreateThread(function()
    while true do
        pedId = PlayerPedId()
        SetPedMinGroundTimeForStungun(pedId, 5000)

        
        plyId = PlayerId()
        SetPlayerHealthRechargeMultiplier(plyId, 0.0)
        SetPedMinGroundTimeForStungun(pedId, 5000)
        SetPlayerHealthRechargeMultiplier(plyId, 0.0)
        --SetRadarBigmapEnabled(false, false)
        Wait(2000)
    end
end)

-- DISABLE BLIND FIRING
Citizen.CreateThread(function()
    while true do
        if IsPedInCover(PlayerPedId(), 0) and not IsPedAimingFromCover(PlayerPedId()) then
            DisablePlayerFiring(PlayerPedId(), true)
        end
        Citizen.Wait(0)
    end
end)

local gameDirty = false
local gameValues = {}
local hudDirty = false
local hudValues = {}

function makeHudDirty()
    hudDirty = true
end
function setHudValue(k, v)
    if hudValues[k] == nil or hudValues[k] ~= v then
        hudDirty = true
    end
    hudValues[k] = v
end
function setGameValue(k, v)
    if gameValues[k] == nil or gameValues[k] ~= v then
        gameDirty = true
    end
    gameValues[k] = v
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(256)
        if hudDirty then
            hudDirty = false
            sendAppEvent("hud", hudValues)
        end
        Citizen.Wait(256)
        if gameDirty then
            gameDirty = false
            sendAppEvent("game", gameValues)
        end
    end
end)

-- CLOSE APP
function SetUIFocus(hasKeyboard, hasMouse)
    --  HasNuiFocus = hasKeyboard or hasMouse
    
      SetNuiFocus(hasKeyboard, hasMouse)
    
      -- TriggerEvent("np-voice:focus:set", HasNuiFocus, hasKeyboard, hasMouse)
      -- TriggerEvent("np-binds:should-execute", not HasNuiFocus)
    end
    
    exports('SetUIFocus', SetUIFocus)
    
    RegisterNUICallback("np-ui:closeApp", function(data, cb)
        SetUIFocus(false, false)
        cb({data = {}, meta = {ok = true, message = 'done'}})
    end)
    
    RegisterNUICallback("np-ui:applicationClosed", function(data, cb)
        TriggerEvent("np-ui:application-closed", data.name, data)
        cb({data = {}, meta = {ok = true, message = 'done'}})
    end)
    
    -- FORCE CLOSE
    RegisterCommand("np-ui:force-close", function()
        SendUIMessage({source = "np-nui", app = "", show = false});
        SetUIFocus(false, false)
    end, false)
    
    local function restartUI()
      SendUIMessage({ source = "np-nui", app = "main", action = "restart" });
      Wait(5000)
      SendUIMessage({ app = "hud", data = { display = true }, source = "np-nui" })
    end
    RegisterCommand("np-ui:restart", restartUI, false)
    RegisterNetEvent("np-ui:server-restart")
    AddEventHandler("np-ui:server-restart", restartUI)
    
    RegisterCommand("np-ui:debug:show", function()
        SendUIMessage({ source = "np-nui", app = "debuglogs", data = { display = true } });
    end, false)
    
    RegisterCommand("np-ui:debug:hide", function()
        SendUIMessage({ source = "np-nui", app = "debuglogs", data = { display = false } });
    end, false)
    
    RegisterNUICallback("np-ui:resetApp", function(data, cb)
        SetUIFocus(false, false)
        cb({data = {}, meta = {ok = true, message = 'done'}})
        sendCharacterData()
    end)
    
    RegisterNetEvent("isJudge")
    AddEventHandler("isJudge", function()
      sendAppEvent("character", { job = "judge" })
    end)
    
    RegisterNetEvent("isJudgeOff")
    AddEventHandler("isJudgeOff", function()
      sendAppEvent("character", { job = nil })
    end)
    