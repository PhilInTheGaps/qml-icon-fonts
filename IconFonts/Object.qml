// Copyright 2016 Ben Lau.
// SPDX-License-Identifier: Apache-2.0

import QtQuick 2.0

QtObject {
    id: object
    default property alias children: object.__children

    property list<QtObject> __children: [QtObject {}]
}
