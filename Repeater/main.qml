import QtQuick 2.15
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 1080
    height: 1080
    visible: true
    title: qsTr("Hello World")

    header: Rectangle {
        width: parent.width
        height: 50
        color: 'green'
        Label {
            anchors.centerIn: parent
//            width: parent.width
//            height: parent.height/2
            color: 'white'
            id: mytitle
            font.pointSize: 20
            text: "Repeater"
        }
    }

    ColumnLayout{
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.top
        }

        spacing: 5
        Repeater {
            model:5
            RowLayout {
                Layout.fillHeight: true
                width: parent.width
                height: 10
                spacing: 5
                Repeater {
                    model: ListModel {
                        ListElement {
                            mytext: "Button 1"
                        }
                        ListElement {
                            mytext: "Button 2"
                        }
                        ListElement {
                            mytext: "Button 3"
                        }
                        ListElement {
                            mytext: "Button 4"
                        }
                        ListElement {
                            mytext: "Button 5"
                        }
                    }

                    Button {
                        Layout.fillWidth: true
                        text: mytext

                        onClicked: {
                            mytitle.text = text
                        }
                    }
                }
            }
        }
    }



}
