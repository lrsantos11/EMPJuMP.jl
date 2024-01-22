abstract type AbstractEMPModel <: JuMP.AbstractModel end


Base.broadcastable(emp_model::AbstractEMPModel) = Ref(emp_model)




"""
    NEP_EMPModel()
    Nash Equilibrium Problem written as a EMP model
"""

mutable struct EMPModel <: AbstractEMPModel
    # Structured data
    # JuMP models that hold data for each of the equilibrium problems
    mps::Vector{JuMP.AbstractModel}
    
end


# JuMP.object_dictionary(model::MathPrgm) = model.obj_dict




# """
# EMP master object 

#     EMPmodel()

# """
# mutable struct EMPmodel <: AbstractEMPModel
#     mps::Vector{JuMP.AbstractModel}
#     equils::Vector{Vector{JuMP.AbstractModel}}
#     root::Union{Nothing,JuMP.AbstractModel,Vector{JuMP.AbstractModel},Vector{Vector{JuMP.AbstractModel}}}
#     ovfs::Vector{OVF}
#     opts::Dict{String,Any}
#     NLoffset::Int

#     #
#     solver::Any#::MOI.ModelLike
#     mode::Any

#     # for completing the JuMP.Model API
#     objdict::Dict{Symbol,Any}    # Same that JuMP.Model's field `objdict`
#     function EMPmodel(solver::Any, 
#                         mps::Vector{JuMP.AbstractModel}, 
#                         equils::Vector{Vector{JuMP.AbstractModel}}, 
#                         root::Union{Nothing,JuMP.AbstractModel,Vector{JuMP.AbstractModel},
#                         Vector{Vector{JuMP.AbstractModel}}}, 
#                         ovfs::Vector{OVF}, 
#                         opts::Dict{String,Any}, 
#                         NLoffset::Int)
#         new(solver, mps, equils, root, ovfs, opts, NLoffset)
#     end
# end

# 



# """
#     EMPmaster([modeling_pkg = "JuMP", solver = "jams"])

# Create an EMP master object, using the modeling package given as argument to store the variables and equations.
# The solver argument is used to construct the ReSHOPSolver object.
# """
# function EMPmaster(; modeling_pkg="JuMP", solver="jams", kwargs...)
#     if modeling_pkg == "JuMP"
#         backend = direct_model(ReSHOP.Optimizer(; solver=solver))
#         emp = EMPmaster(backend)
#     elseif modeling_pkg == "Convex"
#         error("Convex.jl is WIP")
#     else
#         error("No valid modeling_pkg value passed. It should be either ``JuMP'' or ``Convex''")
#     end

#     return emp
# end

# """
#     EMPmaster(backend)

# Create an EMP master object and use the argument as the model data storage object
# """
# function EMPmaster(backend)
#     if !(backend.moi_backend isa ReSHOP.Optimizer)
#         error("The JuMP model must be direct solver, use JuMP.direct_model")
#     end

#     return EMPmaster(backend,
#         Vector{MathPrgm}(),
#         Vector{Vector{MathPrgm}}(),
#         nothing,
#         Vector{OVF}(),
#         Dict{String,Any}(),
#         -1)
# end