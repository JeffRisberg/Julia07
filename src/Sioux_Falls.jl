#=
Sioux_Falls:
- Julia version: 1.5.3
- Author: jeff
- Date: 2021-03-08
=#
using PathDistribution, DelimitedFiles

filename = "Sioux_Falls"
data = readdlm("$(filename).csv", ',', header=true) #3,705
start_node = round.(Int64, data[1][:,1])
end_node = round.(Int64, data[1][:,2])
link_length = data[1][:,3]

origin = 10
destination = 11

path_enums = path_enumeration(origin, destination, start_node, end_node, link_length)

println(length(path_enums))
