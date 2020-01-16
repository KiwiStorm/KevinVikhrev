import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 380
    height: 500
    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 270
        height: 450
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
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
                anchors.left: parent.left
            }

            TextBlock {
                id: textBlock1

                _name: "Class"
                _text: "sorcerer 1"
                Layout.fillWidth: true
                anchors.right: parent.right
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
                Layout.fillWidth: true
                Layout.maximumHeight: 240
                Layout.maximumWidth: 120
                Layout.minimumHeight: 160
                Layout.minimumWidth: 80
                Layout.preferredHeight: 120
                Layout.preferredWidth: 100
                transformOrigin: Item.Center
                anchors.left: parent.left
                anchors.right: textblock6.left
                anchors.rightMargin: 10

                TextBlock {
                    id: textBlock2
                    _name: "AC"
                    _text: "10"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                    anchors.left: parent.left
                    anchors.right: parent.right
                }

                TextBlock {
                    id: textBlock3
                    _name: "Sp"
                    _text: "30"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                    anchors.left: parent.left
                    anchors.right: parent.right
                }
            }
            ColumnLayout {
                id: columnLayout1
                width: 70
                height: 100
                Layout.fillWidth: true
                Layout.maximumHeight: 240
                Layout.maximumWidth: 120
                Layout.minimumHeight: 160
                Layout.minimumWidth: 80
                Layout.preferredHeight: 200
                Layout.preferredWidth: 100
                transformOrigin: Item.Center
                anchors.right: parent.right

                TextBlock {
                    id: textBlock4
                    _name: "Mastery"
                    _text: "+2"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                    anchors.left: parent.left
                    anchors.right: parent.right
                }

                TextBlock {
                    id: textBlock5
                    _name: "Init"
                    _text: "+0"
                    Layout.fillWidth: true
                    Layout.minimumWidth: 50
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 120
                    Layout.minimumHeight: 60
                    anchors.left: parent.left
                    anchors.right: parent.right
                }
            }

            ColumnLayout {
                id: columnLayout2
                Layout.fillWidth: true
                anchors.left: columnLayout.right
                anchors.right: columnLayout1.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                TextBlock {
                    id: textBlock6
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    _name: "Health"
                    _text: "10"
                    Layout.minimumHeight: 90
                    Layout.preferredHeight: 90
                    Layout.minimumWidth: 80
                    Layout.preferredWidth: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    //anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                }

                Rectangle {
                    id: rectangle
                    anchors.left: parent.left
                    anchors.right: parent.right
                    Layout.fillHeight: true
                    Layout.minimumWidth: 80
                    Layout.preferredWidth: 100
                    Layout.minimumHeight: 64
                    Layout.preferredHeight: 80
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    color: "#dacefe"
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
        }
    }
}

/*##^##
Designer {
    D{i:5;anchors_height:141;anchors_width:270;anchors_x:0;anchors_y:0}D{i:8;anchors_width:195;anchors_x:0;anchors_y:97}
}
##^##*/

