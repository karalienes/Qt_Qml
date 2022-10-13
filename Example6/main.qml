import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ScrollView{
        id:scrollView
        width: parent.width
        height: parent.height
        ScrollBar.vertical.policy :ScrollBar.AlwaysOn


        ListView {
            x: 120
            y:40
            width: 400
            height: 400
            anchors.fill: parent

            highlight: Rectangle{
                anchors.fill: parent
                color: "grey"
            }

            focus: true
            orientation: Qt.Vertical


            model: ListModel {
                ListElement{
                    name: "name 1"
                }
                ListElement{
                    name: "name 2"
                }
                ListElement{
                    name: "name 3"
                }
                ListElement{
                    name: "name 4"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
                ListElement{
                    name: "name 5"
                }
            }

            delegate: Rectangle {
                width: parent.width
                height: 50
                color: "green"
                Label {
                    anchors.centerIn: parent
                    text : name

                }
            }
        }
    }

}
