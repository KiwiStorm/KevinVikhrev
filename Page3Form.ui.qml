import QtQuick 2.4

Item {
    width: 270
    height: 400
    transformOrigin: Item.Center

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 270
        height: 400
        anchors.fill : parent
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
    }
}
