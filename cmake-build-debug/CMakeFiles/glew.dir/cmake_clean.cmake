file(REMOVE_RECURSE
  "libglew.a"
  "libglew.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/glew.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
