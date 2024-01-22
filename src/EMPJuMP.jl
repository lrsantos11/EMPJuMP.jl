module EMPJuMP

import Reexport
Reexport.@reexport using JuMP

import MathOptInterface
const MOI = MathOptInterface
const MOIU = MathOptInterface.Utilities

import Complementarity
import Dualization
import LinearAlgebra, SparseArrays
import PATHSolver

export EMPModel
    
# export @vipair, @NLvipair, EMPmaster, solveEMP, _solveEMP, MathPrgm, EquilibriumProblem, BilevelProblem
# export addovf!, getsolution, status, termination_status, primal_status
# export dual_status, get_model_result_num, getobjval, get_JuMP_model




    # include("intervals.jl")
    # include("moi.jl")
    # include("modes/sos1.jl")
    # include("modes/big_m.jl")
    # include("modes/complement.jl")
    # include("modes/indicator.jl")
    # include("modes/product.jl")
    # include("modes/strong_duality.jl")
    # include("modes/mixed.jl") # must be last because uses others
    # include("moi_utilities.jl")

    include("jump.jl")
    # include("jump_variables.jl")
    # include("jump_constraints.jl")
    # include("jump_objective.jl")
    # include("jump_print.jl")
    # include("jump_attributes.jl")
    # include("jump_nlp.jl")
    # include("mibs.jl")


end
