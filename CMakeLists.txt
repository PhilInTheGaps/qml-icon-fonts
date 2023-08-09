cmake_minimum_required(VERSION 3.19)

project(qml-icon-fonts LANGUAGES CXX)

include(CMakePrintHelpers)

find_package(Qt6 COMPONENTS Core REQUIRED)
qt_standard_project_setup(REQUIRES 6.5)
set(CMAKE_AUTORCC ON)

option(BUILD_QIF_EXAMPLE "Build example application" OFF)
cmake_print_variables(BUILD_QIF_EXAMPLE)

add_subdirectory(IconFonts)

set(QML_IMPORT_PATH ${QML_IMPORT_PATH} CACHE STRING "Qt Creator extra qml import paths" FORCE)

if (BUILD_QIF_EXAMPLE)
    add_subdirectory(example)
endif()
