cmake_minimum_required(VERSION 3.10)
project(diagnostics_framework C CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(Threads REQUIRED)

# Include directories
include_directories(
    ${PROJECT_SOURCE_DIR}/src
    ${PROJECT_SOURCE_DIR}/src/core
    ${PROJECT_SOURCE_DIR}/src/interfaces
    ${PROJECT_SOURCE_DIR}/src/utils
)

# Add source files
file(GLOB_RECURSE SOURCES 
    "src/core/*.cpp"
    "src/interfaces/*.cpp"
    "src/utils/*.cpp"
)

# Add header files
file(GLOB_RECURSE HEADERS 
    "src/core/*.h"
    "src/interfaces/*.h"
    "src/utils/*.h"
)

# Create executable
add_executable(diagnostics_framework ${SOURCES} ${HEADERS})

# Link libraries
target_link_libraries(diagnostics_framework
    PRIVATE
    Threads::Threads
)

# Install targets
install(TARGETS diagnostics_framework
    RUNTIME DESTINATION bin
)

# Enable testing
enable_testing()
add_subdirectory(tests) 