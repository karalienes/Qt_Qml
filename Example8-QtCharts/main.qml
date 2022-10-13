import QtQuick 2.15
import QtQuick.Window 2.15
import QtCharts 2.15

Window {
    id: root
    visible: true
    width: 800
    height: 800

    Rectangle {
        id: rect1
        width: root.width/2
        height: root.height/2
        x: root.width/4
        y: root.height/8
        color: "red"
        border {
            color: "black"
            width: 5
        }
        radius: root.width/20

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Red renctangle is clicked")
            }
            onDoubleClicked: {
                console.log("Red rectangle is double-clicked")
            }

            onExited: {
                console.log("Red rectangle is onExited")
            }
        }
    }

    Rectangle {
        id: rect2
        width: root.width/4
        height: root.height/4
        anchors.top: rect1.bottom
        anchors.left: rect1.left
        color: "blue"
        border {
            color: "black"
            width: 5
        }
        radius: root.width/20
    }


    Rectangle {
        id: rect3
        width: root.width/4
        height: root.height/4
        anchors.top: rect1.bottom
        anchors.left: rect2.right
        color: "yellow"
        border {
            color: "black"
            width: 5
        }
        radius: root.width/20
    }
}
