using PyLogging
using PyLogging: @warning, @error, @info, @debug
using Test


const LOGGER = getLogger(string(@__MODULE__))

@warning LOGGER "Hello"
