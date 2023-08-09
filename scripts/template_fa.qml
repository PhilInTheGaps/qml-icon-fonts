// Copyright 2023 Phil Hoffmann.
// SPDX-License-Identifier: GPL-3.0-or-later

pragma Singleton

import QtQuick

Object {
    readonly property alias fontSolid: solid_loader.font
    readonly property alias fontRegular: regular_loader.font
    readonly property alias fontBrands: brands_loader.font

    FontLoader {
        id: solid_loader
        source: "qrc:/fonts/thirdparty/Font-Awesome/webfonts/fa-solid-900.ttf"
    }

    FontLoader {
        id: regular_loader
        source: "qrc:/fonts/thirdparty/Font-Awesome/webfonts/fa-regular-400.ttf"
    }

    FontLoader {
        id: brands_loader
        source: "qrc:/fonts/thirdparty/Font-Awesome/webfonts/fa-brands-400.ttf"
    }

    // Icons
