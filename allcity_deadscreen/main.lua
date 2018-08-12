-- MADE BY KALU AND KASHNAR
-- [ALL CITY]
-- version : 1.00
-- update : 16/06/2018
-- info: 

local isPlayerDead = false


Citizen.CreateThread(function()
    while true do
        if IsPlayerDead(PlayerId()) then
            if isPlayerDead == false then 
                isPlayerDead = true
                SendNUIMessage({
					setDisplay = true

	})
            end
        else 
            if isPlayerDead == true then
                isPlayerDead = false
                SendNUIMessage({
					setDisplay = false

	})
            end
        end
        Citizen.Wait(100)
    end
end)