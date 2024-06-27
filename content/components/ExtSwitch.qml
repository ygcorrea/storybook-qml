import QtQuick
import QtQuick.Window
import QtQuick.Controls

Switch {

    id: switchToggle

    property string message: ""
    property var controller
    property bool isChecked: true

    signal change(string action, bool value)

    text: qsTr("")
    font.weight: 600
    font.pixelSize: 14
    checked: switchToggle.isChecked
    onToggled: (action, value) => {

                   switchToggle.change(action, value)
               }

    indicator: Rectangle {
        implicitWidth: 40
        implicitHeight: 20
        x: switchToggle.leftPadding
        y: parent.height / 2 - height / 2
        width: 40
        height: 20
        radius: 13
        color: !switchToggle.enabled ? "#555C68" : switchToggle.checked ? "#1BBC82" : "#242933"
        Rectangle {
            x: switchToggle.checked ? parent.width - width : 0
            width: 20
            height: 20
            radius: 13
            color: !switchToggle.enabled ? "#878D97" : switchToggle.down ? "#cccccc" : "#ffffff"
        }
        HoverHandler {
            cursorShape: Qt.PointingHandCursor
        }
    }
    contentItem: Text {
        text: switchToggle.message
        font: switchToggle.font
        color: "#ffffff"
        verticalAlignment: Text.AlignVCenter
        leftPadding: switchToggle.indicator.width + switchToggle.spacing
    }

    function test() {
        switchToggle.toggled()
    }
}
