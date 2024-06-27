import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

Button {
    objectName: "step6"
    id: primaryButton

    HoverHandler {
        cursorShape: Qt.PointingHandCursor
    }

    contentItem: Text {
        id: primaryButtonText

        anchors.centerIn: primaryButton
        text: qsTr("Button")
        width: contentWidth
        font {
            family: "Ubuntu"
            pixelSize: 14
            weight: 600
        }
        color: !enabled ? "#be7575" : "#EBECED"
    }

    background: Rectangle {
        id: buttonRectangle
        radius: 4
        color: !enabled ? "#931919" : "#F52929"
        width: primaryButtonText.width + 20
        height: 32
    }

    MouseArea {
        id: buttonMouseArea
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        anchors.fill: parent
    }
}
