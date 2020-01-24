import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    width: 220
    height: 90

    property string item_name: "item_name"
    property string description: "Description"
    property string image_source: "potion.png"
    property bool is_usable: false

    Rectangle {
        id: rectangle
        width: 220
        height: 90
        color: "#d7c6a7"

        anchors.fill: parent

        GridLayout {
            id: grid
            width: 220
            height: 90
            anchors.fill: parent
            rows: 2
            columns: 2
            columnSpacing: 0
            rowSpacing: 0

            Image {
                id: image
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumWidth: 130
                Layout.preferredHeight: 90
                Layout.preferredWidth: 90
                Layout.rowSpan: 2
                fillMode: Image.PreserveAspectFit
                source: image_source
            }
            Text {
                id: itemName

                text: qsTr(item_name)
                Layout.maximumHeight: 60
                font.family: "Tahoma"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: 40
                Layout.preferredWidth: 110
                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                fontSizeMode: Text.HorizontalFit
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere

                font.pixelSize: 17
            }

            Text {
                id: descriptiontext
                text: qsTr(description)
                font.family: "Tahoma"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredHeight: 50
                Layout.preferredWidth: 110
                fontSizeMode: Text.HorizontalFit
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                Layout.alignment: Qt.AlignRight | Qt.AlignTop

                font.pixelSize: 15
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:480;width:640}
}
##^##*/

