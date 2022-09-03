"""
Defines route endpoints and sends back responses

Executes Service functions when receive requests

Models returned from Service functions are mapped into JSONs
and are returned in the reponse body
"""
module Service

using HTTP, JSON
include("EnergyConsumption.jl")
using .EnergyConsumption

const ROUTER = HTTP.Router()
parse_request(req) = JSON.parse(String(req.body))

runTest(req) = return parse_request(req)::Dict
HTTP.@register(ROUTER, "POST", "/test", runTest)

function runPowerFromRoom(req)
    payload = parse_request(req)
    occ = payload["occ"]
    lamps = payload["lamps"]
    tv = payload["tv"]
    ac = payload["ac"]

    return PowerFromRoom(occ, lamps, tv, ac)
end
HTTP.@register(ROUTER, "POST", "/powerFromRoom", runPowerFromRoom)

function runEnergyConsumptionDaily(req)
    payload = parse_request(req)
    occ = payload["occ"]
    lamps = payload["lamps"]
    tv = payload["tv"]
    ac = payload["ac"]

    return EnergyConsumptionDaily(occ, lamps, tv, ac)
end
HTTP.@register(ROUTER, "POST", "/energyConsumptionDaily", runEnergyConsumptionDaily)


function requestHandler(req)
    try
        obj = HTTP.handle(ROUTER, req)
        return HTTP.Response(200, json(obj))
    catch e
        if isdefined(e, :msg)
            return HTTP.Response(400, e.msg)
        else
            return HTTP.Response(400, "Houve um erro. Por favor, tente novamente mais tarde.")
        end
    end
end

function run()
    HTTP.serve(requestHandler, "0.0.0.0", 5000)
end

end # module