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
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredHeight: 600
            Layout.preferredWidth: 380



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
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.minimumHeight: 600
                    Layout.minimumWidth: 170
                    Layout.preferredHeight: 600
                    Layout.preferredWidth: 170
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ScrollView {
                        id: scrollview

                        anchors.fill: parent
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 10
                        anchors.topMargin: 45
                        clip: true

                        ListView {
                            id: listView

                            anchors.fill: parent

                            model: ListComponentForm {}

                            ListComponent {
                                id: listComponent
                            }
                        }
                    }
                }

                Item {
                    id: right_frame
                    Layout.minimumHeight: 600
                    Layout.minimumWidth: 170
                    Layout.preferredHeight: 600
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    Layout.fillWidth: true
                    Layout.fillHeight: true
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

                            //                            anchors.rightMargin: 10
                            //                            anchors.leftMargin: 10
                            //                            anchors.bottomMargin: 10
                            //                            anchors.topMargin: 45
                            //                            property int element_spacing: 5
                            model: ListComponentForm {}
                        }
                    }
                }
            }
        }
    }
}
