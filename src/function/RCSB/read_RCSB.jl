"""
Read an RCSB formated PDB file and 
return an object of type ``PDB``.


Arguments
-----------
:Type{RCSB}
    must be type ``RCSB``

file_name:AbstractString
    Name of the input PDB file.

system_name=""::AbstractString
    name of the output molecular system
"""
function read(::Type{RCSB}, file_name::AbstractString, system_name::AbstractString="")
    system= MolecularSystem(create_atoms(:rcsb, file_name, system_name); 
        crystal_symmetry=create_crystal_symmetry(file_name))
    return PDB(molecular_system=system)
end