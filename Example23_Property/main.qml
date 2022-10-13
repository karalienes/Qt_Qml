import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true

    Rectangle {
        id: rootRectangle
        width: 360
        height: 360
        color: "black"

        Rectangle {
            id: blueRectangle
            width: rootRectangle.width/2
            height: rootRectangle.height/6
            color: "blue"
            anchors.fill: rootRectangle
            radius: 20
            border.color: "green"
            border.width: 7

        }

        MouseArea {
            id: blueRecMouseArea
            anchors.fill: blueRectangle
            hoverEnabled: true

            onEntered: {
                blueRectangle.scale = 1.5
                blueRectangle.color = "green"
                blueRectangle.border.color = "blue"

            }

            onExited: {
                blueRectangle.color = "blue"
                blueRectangle.border.color = "green"
            }

            onClicked: {
                console.log("mouse Area Clicked")
            }
        }

        Text {
            id: mainText
            font.pixelSize: Math.round(rootRectangle.height/18)
            anchors.centerIn: blueRecMouseArea
            text: "Enes"
            color:"white"
            wrapMode: Text.WordWrap
        }
    }
}
