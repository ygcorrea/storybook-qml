import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: sidebar
    width: 300
    color: "red"

    property var modelSidebar: [{
            "text": "Home",
            "url": "./content/views/Home.qml"
        }, {
            "text": "Buttons",
            "url": "./content/views/Buttons.qml"
        }, {
            "text": "Inputs",
            "url": "./content/views/Inputs.qml"
        }, {
            "text": "Tab 4",
            "url": "Tab4.qml"
        }]
    property string currentUrl: modelSidebar[0].url
    signal tabChanged(string url)

    ColumnLayout {
        anchors.fill: parent

        Repeater {
            model: modelSidebar
            delegate: RowLayout {
                Rectangle {
                    id: indicator
                    Layout.preferredHeight: 26
                    Layout.preferredWidth: 3
                    color: "#EC4046"
                    radius: 4
                    visible: sidebar.currentUrl === modelData.url
                }
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 36
                    Layout.margins: 5
                    Layout.leftMargin: indicator.visible ? 0 : 5
                    Layout.alignment: Qt.AlignHCenter
                    color: mouseareatab.containsMouse ? "#191D24" : sidebar.currentUrl
                                                        === modelData.url ? "#281519" : "#111317"
                    radius: 4

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        text: modelData.text
                        font.weight: indicator.visible ? 700 : 400
                        color: indicator.visible ? "#FFFFFF" : "#878D97"
                    }

                    MouseArea {
                        id: mouseareatab
                        anchors.fill: parent
                        onClicked: {
                            sidebar.tabChanged(modelData.url)
                            sidebar.currentUrl = modelData.url
                        }
                        cursorShape: Qt.PointingHandCursor
                        hoverEnabled: true
                    }
                }
            }
        }
    }
}
