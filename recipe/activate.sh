ABI_DUMPER_FLAGS="-g -Og -fno-eliminate-unused-debug-types"

export CFLAGS="$(echo "$CFLAGS" | sed -E 's/(^|[ ,])-O[0-9]+([ ,]|$)/ /g') ${ABI_DUMPER_FLAGS}"
export CPPFLAGS="$(echo "$CPPFLAGS" | sed -E 's/(^|[ ,])-O[0-9]+([ ,]|$)/ /g') ${ABI_DUMPER_FLAGS}"
export CXXFLAGS="$(echo "$CXXFLAGS" | sed -E 's/(^|[ ,])-O[0-9]+([ ,]|$)/ /g') ${ABI_DUMPER_FLAGS}"

export CMAKE_ARGS="$(echo "$CMAKE_ARGS" | sed -E 's/CMAKE_BUILD_TYPE=Release/CMAKE_BUILD_TYPE=Debug/g')"
export MESON_ARGS="$(echo "$MESON_ARGS" | sed -E 's/Dbuildtype=release/Dbuildtype=debug/g')"
