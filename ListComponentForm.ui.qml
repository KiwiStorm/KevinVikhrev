import QtQuick 2.4
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    width: 200
    height: 90
    property string item_name: "item_name"
    property string description: "Description"
    property string image_source: "potion.png"

    Rectangle {
        id: rectangle
        color: "#d7c6a7"

        anchors.fill: parent

        Grid {
            id: grid
            anchors.fill: parent

            Image {
                id: image
                width: 70
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                fillMode: Image.PreserveAspectFit
                source: image_source
            }
            Text {
                id: itemName
                height: 31
                text: qsTr(item_name)
                anchors.left: image.right
                anchors.leftMargin: 10
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                font.pixelSize: 17
            }

            Text {
                id: descriptiontext
                text: qsTr(description)
                anchors.leftMargin: 10
                anchors.top: itemName.bottom

                anchors.topMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.left: image.right

                font.pixelSize: 15
            }
        }
    }
}



