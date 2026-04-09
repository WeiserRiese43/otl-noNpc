Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)

    -- Set Pedestrians and Vehicle Density to 0
    SetPedDensityMultiplierThisFrame(0.0)
    SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
    SetVehicleDensityMultiplierThisFrame(0.0)
    SetRandomVehicleDensityMultiplierThisFrame(0.0)
    SetParkedVehicleDensityMultiplierThisFrame(0.0)

    -- Disable specific scenarios that spawn NPCs
    SetGarbageTrucks(false)
    SetRandomBoats(false)
    SetCreateRandomCops(false)
    SetCreateRandomCopsNotOnScenarios(false)
    SetCreateRandomCopsOnScenarios(false)

    -- Delete generated parked Vehicles nearby
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    RemoveVehiclesFromGeneratorsInArea(playerCoords.x - 500.0, playerCoords.y - 500.0, playerCoords.z - 500.0, playerCoords.x + 500.0, playerCoords.y + 500.0, playerCoords.z + 500.0)

    for i = 1, 15 do
        EnableDispatchService(i, false)
    end
end
end)