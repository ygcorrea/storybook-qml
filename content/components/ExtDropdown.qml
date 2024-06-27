import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../components"

Rectangle {
    id: root
    width: parent.width
    color: "#111317"
    border.color: "#333"
    radius: 4

    property alias text: sectionTitle.text
    property alias source: sourceCode.text
    property bool collapsed: true

    signal toggled(bool collapsed)

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        RowLayout {
            width: parent.width
            height: 40
            Layout.alignment: Qt.AlignTop

            Text {
                id: sectionTitle
                font.pixelSize: 20
                font.weight: 600
                color: "#FFFFFF"
                Layout.fillWidth: true
            }

            ExtSwitch {
                Layout.alignment: Qt.AlignRight
                onCheckedChanged: {
                    root.collapsed = !checked
                    root.toggled(root.collapsed)
                }
            }
        }

        MenuSeparator {
            Layout.fillWidth: true
            height: 1
        }

        Text {
            id: sourceCode
            Layout.fillWidth: true
            color: "#878D97"
            visible: !root.collapsed
            wrapMode: Text.Wrap
        }
    }
}
