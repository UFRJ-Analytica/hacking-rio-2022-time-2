module EnergyConsumption

export PowerFromRoom, EnergyConsumptionDaily

function PowerFromRoom(occ::Int, lamps::Int, tv::Bool, ac::Bool)::Int
    return lamps*200 + tv*400 + ac*1600
end

function EnergyConsumptionDaily(occ::Int, lamps::Int, tv::Bool, ac::Bool)::Int
    power = PowerFromRoom(occ, lamps, tv, ac)
    return (power/1000)*24
end
end