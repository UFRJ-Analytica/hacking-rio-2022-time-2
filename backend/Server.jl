module Server

include("Service.jl")
using .Service

function run()
    Service.run()
end
end