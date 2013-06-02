import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0

Rectangle {
    id: rectangle1
    width: 800
    height: 600

    ColumnLayout {
        id: column_layout1
        spacing: 0
        anchors.fill: parent


        ToolBar {
            id: tool_bar1
            x: 0
            y: 0
            height: 32
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
            Layout.fillWidth: true

            RowLayout {
                id: row_layout2
                width: 100
                spacing: 2
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.top: parent.top

                ToolButton {
                    id: tool_button1
                    text: "启动"
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                }
                ToolButton {
                    id: tool_button2
                    text: "停止"
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                }


            }
        }

        Flickable {
            id: flickable1
//            width: 800
//            height: 147
//            x: 0
//            y: 50
//            width: 800
            height: 454
            opacity: 1
            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: column_layout2
                height: 100
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top

                Rectangle {
                    id: rectangle2
                    height: 60
                    width: 10
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                    color: "#c84242"
                    border.width: 1
                }

                Rectangle {
                    id: rectangle3
                    height: 60
                    width: 10
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                    color: "#62a41b"
                    border.color: "#000000"
                }
            }

        }

        StatusBar {
            id: status_bar1
//            x: 0
//            y: 580
//            width: 800
            height: 20
            Layout.alignment: Qt.AlignBottom | Qt.AlignLeft
            Layout.fillWidth: true

            RowLayout {
                id: row_layout1
                anchors.fill: parent
                spacing: 0

                ProgressBar {
                    id: progress_bar1
//                    x: 526
//                    y: 0
                    width: 274
                    height: 16
                    value: 0.3
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
                }
            }
        }
    }
}
