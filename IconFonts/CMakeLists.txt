cmake_minimum_required(VERSION 3.19)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Qml)

list(APPEND QML_IMPORT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

qt_add_library(qml-icon-fonts STATIC)

qt_add_resources(qml-icon-fonts "fonts"
    PREFIX "/fonts"
    FILES
        ../thirdparty/Font-Awesome/webfonts/fa-solid-900.ttf
        ../thirdparty/Font-Awesome/webfonts/fa-regular-400.ttf
        ../thirdparty/Font-Awesome/webfonts/fa-brands-400.ttf)

set_source_files_properties(FontAwesome.qml PROPERTIES
    QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(qml-icon-fonts
    URI IconFonts
    VERSION 1.0
    QML_FILES
        Object.qml
        FontAwesome.qml
)







