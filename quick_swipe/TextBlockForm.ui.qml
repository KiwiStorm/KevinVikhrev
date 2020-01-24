import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    property string _text: "smth"
    property string _name: "name"
    property int _width: 100
    property int _height: 70

    width: _width
    height: _height
    Rectangle {
        id: rectangle
        color: "#dacefe"
        visible: true
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout
            spacing: 5
            anchors.fill: parent

            Text {
                id: blocknName
                text: _name
                fontSizeMode: Text.Fit
                Layout.minimumHeight: 20
                Layout.minimumWidth: 40
                Layout.preferredHeight: 30
                Layout.preferredWidth: 60
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
                Layout.fillWidth: true
                font.pixelSize: 35 - (30 - 0.4 * _height)
            }
            TextEdit {
                id: textEdit
                font.italic: true
                text: qsTr(_text)
                Layout.fillWidth: true
                Layout.minimumHeight: 20
                Layout.minimumWidth: 40
                Layout.preferredHeight: 30
                Layout.preferredWidth: 60

                //anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Tahoma"
                font.pixelSize: 35 - (30 - 0.4 * _height)
            }
        }
    }
}
