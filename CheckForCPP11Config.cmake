if ( CMAKE_COMPILER_IS_GNUCC OR "${CMAKE_C_COMPILER_ID}" MATCHES "Clang")
	add_definitions(-W -Wall -Wno-unused-function -pipe)
	set(CPP11_DEFS -std=c++0x -D__USE_CPP0X__ -D__USE_CPP11__)
else()
	set(CPP11_DEFS -D__USE_CPP0X__ -D__USE_CPP11__)
endif()

try_compile( CPP11
				${CMAKE_BINARY_DIR}
				${CMAKE_CURRENT_LIST_DIR}/CheckForCPP11.cpp
				COMPILE_DEFINITIONS ${CPP11_DEFS} )
