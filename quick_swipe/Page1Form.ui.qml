import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 400
    height: 500
    Rectangle {
        id: rectangle1
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#df89b5"
            }

            GradientStop {
                position: 1
                color: "#bfd9fe"
            }
        }

        RowLayout {
            id: rowLayout
            width: parent.width
            height: textBlock.height
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10

            TextBlock {
                id: textBlock
                _name: "Name"
                _text: "John"

                Layout.fillWidth: true
                Layout.minimumHeight: 50
                Layout.minimumWidth: 100
                Layout.preferredHeight: 70
                Layout.preferredWidth: 150
            }

            TextBlock {
                id: textBlock1
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

                _name: "Class"
                _text: "sorcerer 1"
                Layout.fillWidth: true

                Layout.minimumHeight: 50
                Layout.minimumWidth: 100
                Layout.preferredHeight: 70
                Layout.preferredWidth: 150
            }
        }

        RowLayout {
            id: rowLayout1
            height: 200 + (screen.height - 200) * 0.5
            anchors.top: rowLayout.bottom
            anchors.topMargin: 24
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10

            ColumnLayout {
                id: columnLayout
                width: 50
                height: 100
                Layout.topMargin: 10
                Layout.bottomMargin: 10
                Layout.rowSpan: 20
                spacing: 10
                Layout.fillWidth: true
                Layout.maximumHeight: 240
                Layout.maximumWidth: 120
                Layout.minimumHeight: 160
                Layout.minimumWidth: 80
                Layout.preferredHeight: 120
                Layout.preferredWidth: 110
                transformOrigin: Item.Center

                TextBlock {
                    id: textBlock2
                    Layout.topMargin: 15
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    _name: "AC"
                    _text: "10"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                }

                TextBlock {
                    id: textBlock3
                    Layout.bottomMargin: 15
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    _name: "Speed"
                    _text: "30"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                }
            }

            ColumnLayout {
                id: columnLayout2
                Layout.preferredWidth: 140
                Layout.rowSpan: 5
                Layout.fillWidth: true

                TextBlock {
                    id: textBlock6
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    _name: "Health"
                    _text: "10"
                    Layout.minimumHeight: 90
                    Layout.preferredHeight: 90
                    Layout.minimumWidth: 80
                    Layout.preferredWidth: 100
                    Layout.margins: 10
                }

                Rectangle {
                    id: rectangle

                    Layout.fillHeight: true
                    Layout.minimumWidth: 80
                    Layout.preferredWidth: 100
                    Layout.minimumHeight: 64
                    Layout.preferredHeight: 80
                    Layout.margins: 10
                    color: "#dacefe"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    Layout.fillWidth: true

                    TextEdit {
                        id: textEdit
                        text: "10"

                        font.italic: true
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Tahoma"
                        font.pixelSize: 35 - (30 - 0.8 * this.height)
                        anchors.fill: parent
                    }
                }
            }
            ColumnLayout {
                id: columnLayout1
                Layout.bottomMargin: 10
                Layout.topMargin: 10

                Layout.fillWidth: true
                Layout.maximumHeight: 240
                Layout.maximumWidth: 120
                Layout.minimumHeight: 160
                Layout.minimumWidth: 80
                Layout.preferredHeight: 120
                Layout.preferredWidth: 110
                transformOrigin: Item.Center

                TextBlock {
                    id: textBlock4
                    Layout.topMargin: 15
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    _name: "Mastery"
                    _text: "+2"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                }

                TextBlock {
                    id: textBlock5
                    Layout.bottomMargin: 15
                    Layout.preferredHeight: 70
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    _name: "Init"
                    _text: "+0"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:5;anchors_height:141;anchors_width:270;anchors_x:0;anchors_y:0}D{i:8;anchors_width:195;anchors_x:0;anchors_y:97}
}
##^##*/

