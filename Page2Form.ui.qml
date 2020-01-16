import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: page
    width: 380
    height: 600

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Rectangle {
            id: rectangle

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
                anchors.fill: parent

                Item {
                    id: left_frame
                    Layout.preferredWidth: 170
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Layout.fillWidth: true

                    ScrollView {
                        id: scrollview
                        x: 10
                        y: 45
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 10
                        anchors.topMargin: 45
                        clip: true

                        ListView {
                            id: listView
                            anchors.rightMargin: 10
                            anchors.leftMargin: 10
                            anchors.bottomMargin: 10
                            anchors.topMargin: 45
                            property int element_spacing: 5
                            anchors.top: page.top
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            anchors.left: parent.left

                            model: ListComponentForm {}

                            ListComponentForm {
                                id: listComponentForm
                                anchors.top: parent.top
                                anchors.topMargin: element_spacing
                            }
                            ListComponentForm {
                                id: listComponentForm1
                                anchors.top: listComponentForm.bottom
                                anchors.topMargin: element_spacing
                            }
                            ListComponentForm {
                                id: listComponentForm2
                                anchors.top: listComponentForm1.bottom
                                anchors.topMargin: element_spacing
                            }
                        }
                    }
                }

                Item {
                    id: right_frame
                    Layout.fillWidth: true
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    Layout.preferredWidth: 170

                    ScrollView {
                        id: scrollviewr

                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 10
                        anchors.topMargin: 45
                        clip: true

                        ListView {
                            id: listView1
                            anchors.fill: parent
                            anchors.rightMargin: 10
                            anchors.leftMargin: 10
                            anchors.bottomMargin: 10
                            anchors.topMargin: 45
                            property int element_spacing: 5

                            model: ListComponentForm {}

                            ListComponentForm {
                                id: listComponentFormr
                                anchors.top: parent.top
                                anchors.topMargin: element_spacing
                            }
                            ListComponentForm {
                                id: listComponentForm1r
                                anchors.top: listComponentFormr.bottom
                                anchors.topMargin: element_spacing
                            }
                            ListComponentForm {
                                id: listComponentForm2r
                                anchors.top: listComponentForm1r.bottom
                                anchors.topMargin: element_spacing
                            }
                        }
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:11;invisible:true}D{i:12;invisible:true}D{i:13;invisible:true}D{i:9;invisible:true}
D{i:8;invisible:true}D{i:7;invisible:true}D{i:2;invisible:true}
}
##^##*/

