cmake_minimum_required(VERSION 3.19)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick Qml)

list(APPEND QML_IMPORT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

qt_add_executable(icon-fonts-example main.cpp)

qt_add_qml_module(icon-fonts-example
    URI ExampleUi
    VERSION 1.0
    QML_FILES
        Main.qml
        IconRow.qml
)

target_link_libraries(icon-fonts-example PRIVATE
    qml-icon-fontsplugin
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::Qml
)
