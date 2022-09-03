"""
Defines route endpoints and sends back responses

Executes Service functions when receive requests

Models returned from Service functions are mapped into JSONs
and are returned in the reponse body
"""
module Resource

using HTTP, JSON

const ROUTER = HTTP.Router()
parse_request(req) = JSON.parse(String(req.body))

runTest(req) = return parse_request(req)::Dict
HTTP.@register(ROUTER, "POST", "/forecast", runTest)

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