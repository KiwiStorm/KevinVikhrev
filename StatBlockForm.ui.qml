import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    id: element3
    width: 150
    height: 150
    property string second_color: "#f6e29a"
    property string stat_name: "DEX"

    Rectangle {
        id: rectangle
        height: parent.height
        color: "#f3b572"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left

        GridLayout {
            id: gridLayout
            anchors.fill: parent
            columns: 2
            rows: 2

            anchors.margins: 5

            Rectangle {
                id: statName

                color: second_color
                Layout.maximumWidth: 100
                Layout.maximumHeight: 100
                Layout.minimumHeight: 60
                Layout.minimumWidth: 60
                Layout.preferredHeight: 70
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: 70

                Text {
                    id: element1
                    anchors.fill: parent
                    text: qsTr(stat_name)
                    anchors.margins: 4
                    fontSizeMode: Text.HorizontalFit
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }
            }

            Rectangle {
                Layout.maximumWidth: 100
                Layout.maximumHeight: 100
                Layout.minimumHeight: 60
                Layout.minimumWidth: 60
                Layout.preferredHeight: 70
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: 70

                id: statNumber

                color: second_color
                clip: true
                Layout.topMargin: 0

                TextEdit {

                    id: textEdit
                    anchors.fill: parent
                    text: qsTr("10")
                    anchors.margins: 4
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }
            }

            Rectangle {
                id: statBonus

                Layout.maximumWidth: 100
                Layout.maximumHeight: 100
                Layout.minimumHeight: 60
                Layout.minimumWidth: 60
                Layout.preferredHeight: 70
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: 70

                color: second_color

                Text {
                    id: element
                    anchors.fill: parent
                    property int bonus: 1 //(parceInt(textEdit.text.toString())
                    text: qsTr("+" + "Text")

                    anchors.margins: 4
                    fontSizeMode: Text.HorizontalFit
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }
            }

            Rectangle {
                id: statSave
                Layout.maximumWidth: 100
                Layout.maximumHeight: 100
                Layout.minimumHeight: 60
                Layout.minimumWidth: 60
                Layout.preferredHeight: 70
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: 70

                color: second_color

                Text {
                    id: element2
                    text: qsTr("Text")

                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.margins: 4
                    fontSizeMode: Text.HorizontalFit
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                }
            }
        }
        Connections {
            target: textEdit
            editingFinished: {

            }
        }
    }
}
