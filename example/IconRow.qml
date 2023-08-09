import QtQuick

Column {
    id: root
    property string header: "Icons:"
    property var icons: []
    property var descriptions: []
    property var font: undefined

    spacing: 20

    Text {
        text: root.header
        font.bold: true
    }

    Row {
        anchors.left: parent.left
        anchors.right: parent.right

        Repeater {
            model: icons

            Column {
                spacing: 10
                width: parent.width / 9

                Text {
                    text: modelData
                    font.family: root.font.family
                    font.styleName: root.font.styleName

                    font.pointSize: 36
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    text: root.descriptions[index]
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
