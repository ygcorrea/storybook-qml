import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import "../components"

ScrollView {
    anchors.fill: parent

    ColumnLayout {
        width: parent.width

        Item {
            Layout.preferredHeight: 40
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
            Text {
                text: "Buttons"
                font.pixelSize: 40
                font.weight: 700
                color: "#F8F8F8"
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            Layout.preferredHeight: collapsedRectangle.collapsed ? 210 : 100

            Layout.fillWidth: true
            color: "#333333"
            border.width: 2
            border.color: "#505050"
            radius: 6

            Behavior on Layout.preferredHeight {
                NumberAnimation {
                    duration: 300
                }
            }

            ColumnLayout {
                width: parent.width
                spacing: 5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 10
                RowLayout {
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: 40
                    Layout.topMargin: 5
                    Layout.alignment: Qt.AlignTop
                    ExtButton {
                        id: extButton
                        Layout.alignment: Qt.AlignLeft
                    }

                    ExtSwitch {
                        id: switchToggle
                        Layout.alignment: Qt.AlignRight
                        message: extButton.enabled ? "Enabled" : "Disabled"
                        onCheckedChanged: {
                            extButton.enabled = switchToggle.checked
                        }
                    }
                }

                ColumnLayout {
                    id: collapsedRectangle
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: collapsed ? sourceCodeContainer.height : 40

                    property bool collapsed: false
                    Rectangle {
                        Layout.preferredWidth: parent.width
                        Layout.preferredHeight: 40
                        color: "transparent"
                        border.width: 1
                        border.color: "#505050"
                        radius: 4
                        RowLayout {
                            anchors.fill: parent
                            Text {
                                id: title
                                text: "Source"
                                color: "#F5F5F5"
                                font.weight: 400
                                font.pixelSize: 14
                                Layout.alignment: Qt.AlignVCenter
                                Layout.fillWidth: true
                                Layout.leftMargin: 10
                            }
                            ToolButton {
                                icon.source: "../assets/icons/chevron.svg"
                                icon.color: "#878D97"
                                Layout.preferredWidth: 40
                                rotation: 90
                                background: null
                            }
                        }
                        MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                collapsedRectangle.collapsed = !collapsedRectangle.collapsed
                            }
                        }
                    }
                    Rectangle {
                        id: sourceCodeContainer
                        Layout.preferredWidth: parent.width
                        Layout.preferredHeight: sourceCode.contentHeight + 20
                        color: "transparent"
                        Layout.bottomMargin: 5
                        visible: collapsedRectangle.collapsed
                        RowLayout {
                            anchors.fill: parent

                            TextEdit {
                                id: sourceCode
                                textFormat: TextEdit.RichText
                                text: "<font color='#ff00ff'>ExtButton</font> {<br>&nbsp;&nbsp;&nbsp;&nbsp;text: \"Button\"<br>&nbsp;&nbsp;&nbsp;&nbsp;onClicked: { }<br>}"
                                readOnly: true
                                color: "#F5F5F5"
                                wrapMode: TextEdit.Wrap
                                Layout.fillWidth: true
                                Layout.bottomMargin: 5
                                Layout.leftMargin: 8
                                font.pixelSize: 14
                                selectByMouse: true
                            }
                            ToolButton {
                                icon.source: "../assets/icons/content-copy.svg"
                                icon.color: "#878D97"
                                Layout.preferredWidth: 40
                                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                                background: null

                                MouseArea {
                                    id: toolButtonMouseArea
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onClicked: {
                                        textEdit.text = sourceCode.text
                                        textEdit.selectAll()
                                        textEdit.copy()
                                    }
                                }
                                TextEdit {
                                    id: textEdit
                                    visible: false
                                    textFormat: TextEdit.RichText
                                }
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
        Rectangle {
            Layout.preferredHeight: 100
            Layout.fillWidth: true
            color: "darkgray"
            Text {
                anchors.centerIn: parent
                text: "Content 2"
                color: "white"
            }
        }
    }
}
