import QtQuick 2.12
import QtQuick.Controls 2.5



ApplicationWindow {
    width: 380
    height: 600
    visible: true
    minimumWidth: screen.width
    minimumHeight: screen.height

    title: qsTr("Tabs")
//    FontLoader {
//        id: localFont;
//        source: "/home/kevin/Документы/Fonts/17885.ttf"
//    }

    menuBar : MenuBar  {
        id : menu
        width: 84
        height: 40
        Menu {
            title : qsTr("File")
            Action {text : qsTr("New") }
            Action {text : qsTr("Save") }
            Action {text : qsTr("Open") }
            Action {text : qsTr("Delete") }
        }
    }


    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1
        Page1Form {
            id: firstPage

        }
        Page2Form {
            id: secondPage


        }
        Page3Form {
            id: thirdPage

        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
