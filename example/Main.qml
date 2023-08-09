import QtQuick
import QtQuick.Window
import IconFonts

Window {
    visible: true
    width: 720
    height: 420
    title: qsTr("QML IconFonts Preview")

    Rectangle {
        id: root
        anchors.fill: parent

        property var solidNames: ["bell", "bookmark", "building", "calendar", "clipboard", "comment", "file", "faceAngry", "faceGrin"]
        property var brandNames: ["android", "bitcoin", "bluetooth", "d-and-d", "discord", "empire", "python", "git", "linux"]

        Column {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 20

            IconRow {
                anchors.left: parent.left
                anchors.right: parent.right

                header: "FontAwesome Solid:"
                icons: [FontAwesome.bell, FontAwesome.bookmark, FontAwesome.building, FontAwesome.calendar, FontAwesome.clipboard, FontAwesome.comment, FontAwesome.file, FontAwesome.faceAngry, FontAwesome.faceGrin]
                descriptions: root.solidNames
                font: FontAwesome.fontSolid
            }

            IconRow {
                anchors.left: parent.left
                anchors.right: parent.right

                header: "FontAwesome Regular:"
                icons: [FontAwesome.bell, FontAwesome.bookmark, FontAwesome.building, FontAwesome.calendar, FontAwesome.clipboard, FontAwesome.comment, FontAwesome.file, FontAwesome.faceAngry, FontAwesome.faceGrin]
                descriptions: root.solidNames
                font: FontAwesome.fontRegular
            }

            IconRow {
                anchors.left: parent.left
                anchors.right: parent.right

                header: "FontAwesome Brands:"
                icons: [FontAwesome.android, FontAwesome.bitcoin, FontAwesome.bluetooth, FontAwesome.dAndD, FontAwesome.discord, FontAwesome.empire, FontAwesome.python, FontAwesome.git, FontAwesome.linux]
                descriptions: root.brandNames
                font: FontAwesome.fontBrands
            }
        }
    }
}
