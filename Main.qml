import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls
import "./content/components"

Window {
    visible: true
    width: 1024
    minimumWidth: 600
    height: 680
    title: "ExtUI"
    color: "#0B0C0F"
    Image {
        id: logo
        source: "./content/assets/images/logo.svg"
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.leftMargin: 10
    }
    RowLayout {
        anchors.fill: parent
        anchors.top: parent.top
        anchors.topMargin: 40
        spacing: 0
        // Sidebar
        ExtSidebar {
            id: sidebar
            onTabChanged: url => loader.source = url
            Layout.preferredWidth: 300

            Layout.alignment: Qt.AlignTop
        }

        // Content Area
        Loader {
            id: loader
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: "./content/views/Buttons.qml"
        }
    }
}
