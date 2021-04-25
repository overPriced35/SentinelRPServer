ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

local firstname = ""
local lastname = ""

RegisterServerEvent("banking:get-infos")
AddEventHandler("banking:get-infos", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    bank = xPlayer.getAccount('bank').money
    cash = xPlayer.getAccount('money').money
    local result = MySQL.Sync.fetchAll("SELECT firstname, lastname, job, accounts, bankid FROM users WHERE identifier = @identifier", {
        ['@identifier'] = xPlayer.getIdentifier()
    })
    firstname = result[1]['firstname']
    lastname = result[1]['lastname']
    job = result[1]['job']
    bankid= result[1]['bankid']
    TriggerClientEvent("banking:infos", src, firstname, lastname, job, bank, cash, bankid)
end)

RegisterServerEvent("banking:withdraw")
AddEventHandler("banking:withdraw", function(amount, comment, date)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local type = "neg"
    local iden = "WITHDRAW"
    local sender = firstname.. " " ..lastname
    local target = sender
    local ply = ESX.GetPlayerFromId(src).getIdentifier()

    xPlayer.removeAccountMoney('bank', amount)
    xPlayer.addAccountMoney('money', amount)

    TriggerEvent("banking:updaterecent", ply, amount, comment, date, type, sender, target, iden)
    TriggerClientEvent("banking:refresh", src)
    if comment == nil then
        comment = ""
    end
end)

RegisterServerEvent("banking:deposit")
AddEventHandler("banking:deposit", function(amount, comment, date)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local type = "pos"
    local iden = "DEPOSIT"
    local sender = firstname.. " " ..lastname
    local target = sender
    local ply = ESX.GetPlayerFromId(src).getIdentifier()

    xPlayer.removeAccountMoney('money', amount)
    xPlayer.addAccountMoney('bank', amount)

    TriggerEvent("banking:updaterecent", ply, amount, comment, date, type, sender, target, iden)
    TriggerClientEvent("banking:refresh", src)
    if comment == nil then
        comment = ""
    end
end)

RegisterServerEvent("banking:transfer")
AddEventHandler("banking:transfer", function(amount, comment, id, date)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local zPlayer = ESX.GetPlayerFromId(id)
    local type = "neg"
    local iden = "TRANSFER"
    local sender = firstname.. " " ..lastname
    local ply = ESX.GetPlayerFromId(src).getIdentifier()
    local result = MySQL.Sync.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", {
        ['@identifier'] = zPlayer.getIdentifier()
    })
    local fn2 = result[1]['firstname']
    local ln2 = result[1]['lastname']
    local target = fn2.. " ".. ln2
   
   if id == source then
    TriggerClientEvent('DoLongHudText', source, "You can't transfer money yourself!", 2)
   else
    
    TriggerClientEvent("banking:refresh", src)

    if comment == nil then
        comment = ""
    end
    xPlayer.removeAccountMoney('bank', amount)
    zPlayer.addAccountMoney('bank', amount)
    TriggerEvent("banking:updaterecent", ply, amount, comment, date, type, sender, target, iden)
    ply = ESX.GetPlayerFromId(id).getIdentifier()
    type = "pos"
   end 
end)

ESX.RegisterServerCallback('banking:getRecent', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT id, sender, target, label, amount, iden, type, date FROM account_recent WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		cb(result)

	end)
end)

AddEventHandler('esx:playerLoaded',function(playerId, xPlayer)
    local sourcePlayer = playerId
    local identifier = xPlayer.getIdentifier()

    getOrGenerateBankId(identifier, function(bankid)
    end)
end)

function generateBankId()
    local numBase0 = math.random(100000, 999999)
    local num = string.format(numBase0)

	return num
end

function getBankId(identifier)
    local result = MySQL.Sync.fetchAll("SELECT users.bankid FROM users WHERE users.identifier = @identifier", {
        ['@identifier'] = identifier
    })
    if result[1] ~= nil then
        return result[1].bankid
    end
    return nil
end

function getOrGenerateBankId(identifier, cb)
    local identifier = identifier
    local myBankId = getBankId(identifier)

    if myBankId == '0' or myBankId == nil then
        repeat
            myBankId = generateBankId()
            local id = getPlayerFromBankId(myBankId)

        until id == nil

        MySQL.Async.insert("UPDATE users SET bankid = @myBankId WHERE identifier = @identifier", { 
            ['@myBankId'] = myBankId,
            ['@identifier'] = identifier

        }, function()
            cb(myBankId)
        end)
    else
        cb(myBankId)
    end
end

function getPlayerFromBankId(bankid)
    local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE bankid = @bankid', {
		['@bankid'] = bankid
    })
    
    if result[1] and result[1].identifier then
        return ESX.GetPlayerFromIdentifier(result[1].identifier)
    end

    return nil
end