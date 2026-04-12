Citizen.CreateThread(function()
    SetGarbageTrucks(false)
    SetRandomBoats(false)
    SetCreateRandomCops(false)
    SetCreateRandomCopsNotOnScenarios(false)
    SetCreateRandomCopsOnScenarios(false)
    SetRandomTrains(false)

    for i = 1, 15 do
        EnableDispatchService(i, false)
    end

    while true do
        Citizen.Wait(0)
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetPedDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        RemoveVehiclesFromGeneratorsInArea(
        playerCoords.x - 500.0, playerCoords.y - 500.0, playerCoords.z - 500.0,
        playerCoords.x + 500.0, playerCoords.y + 500.0, playerCoords.z + 500.0
        )
    end
end)