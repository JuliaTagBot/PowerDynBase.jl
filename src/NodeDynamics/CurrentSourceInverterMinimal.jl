@doc doc"""
```Julia
CSIMinimal(;τ_v,τ_P,τ_Q,K_P,K_Q,E_r,P,Q)
```

A node type that keeps the current fixed as a desired values `I_r`.

`CSIMinimal` models an inverters as an ideal current source. This can be the
most simple representation of an inverter in grid-feeding mode, according to
Rocabert, Joan, et al. "Control of power converters in AC microgrids." (2012).
Here, additionally to `u`, there are no internal dynamic variables.


# Keyword Arguments
- `I_r`: reference/ desired current


# Mathematical Representation
Using `CSIMinimal` for node ``a`` gives:
```math
i_a = I_r
```

"""
@DynamicNode CSIMinimal(I_r) <: OrdinaryNodeDynamics() begin
end [] begin
    du = abs(i) - I_r
end

export CSIMinimal