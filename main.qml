import QtQuick 2.12
import QtQuick.Controls 2.5



ApplicationWindow {
    visible: true
    width: screen.width
    height: screen.height
    title: qsTr("Tabs")
    FontLoader {
        id: localFont;
        source: "/home/kevin/Документы/Fonts/17885.ttf"
    }

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
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page1Form {
            id: firstPage
            anchors.fill: parent
        }
        Page2Form {
            id: secondPage
            anchors.fill: parent

        }
        Page3Form {
            id: thirdPage
            anchors.fill: parent
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
        TabButton {
            text: qsTr("Page 3")
    }
}
}
