import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true


    Rectangle {
        id: rect1
        width: 500
        height: 500
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                moveReight.start()
            }
        }

    }

    PropertyAnimation {
        id: moveReight
        target:rect1
        properties: "x,y"
        from: rect1.x
        to:rect1.x+200
        duration: 1000

        easing: {
            easing.type = Easing.InOutBack
        }

        onStopped: {
            moveLeft.start()
            changeColor.start()
        }
    }

    PropertyAnimation {
        id: moveLeft
        target: rect1
        properties: "x,y"
        from: rect1.x
        to: rect1.x -200
        duration: 1000
        easing: {
            easing.type = Easing.InOutBack
        }
    }


    PropertyAnimation {
        id: changeColor
        target: rect1
        property: "color"
        from: rect1.color
        to: "black"
        duration: 1000
        easing: {
            easing.type = Easing.InOutBack
        }
    }

}
