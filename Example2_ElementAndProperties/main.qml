import QtQuick 2.15
import QtQuick.Window 2.15


Window{
    width: 360
    height: 360
    visible: true

    Rectangle {

        id:rootRectangle
        width: 360
        height: 360
        color: "red"

        Rectangle {

            id: blueRectangle
            width: rootRectangle.width/2
            height: 64
            anchors.centerIn: rootRectangle
            border.color: "#000000"
            border.width: 7
            radius: 20
            gradient: Gradient{
                GradientStop{position: 0.0; color: "lightsteelblue" }
                GradientStop{position: 1.0; color: "blue" }
            }

        }

        Text {
            anchors.centerIn: parent
            text: "KARALİ"
        }

        MouseArea {
           anchors.fill: parent

           onClicked: {
               Qt.quit();
           }
        }

    }

}

