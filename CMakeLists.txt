cmake_minimum_required(VERSION 3.5)
project(GlTest)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenGL REQUIRED)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(${PROJECT_SOURCE_DIR}/lib/glew-2.1.0/build/cmake)
add_subdirectory(${PROJECT_SOURCE_DIR}/lib/glfw-3.3.2)

add_executable(GlTest ${PROJECT_SOURCE_DIR}/src/main.cpp src/device/display.h src/device/display.cpp src/render/Triangle.cpp src/render/Triangle.h src/render/Shader.cpp src/render/Shader.h src/util/FileUtil.cpp src/util/FileUtil.h include/stb_image.h src/render/Texture.cpp src/render/Texture.h)
target_include_directories(GlTest PRIVATE ${PROJECT_SOURCE_DIR}/include)

target_link_libraries(GlTest glew_s opengl32 glfw pthread)