import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true


    MyButton {
        xPos: 100
        yPos: 100
        w: parent.width/2
        h: parent.height/10
        btnText: "KARALİ Enes"

        onPressed: {
            console.log ( "button pressed")
        }

        onReleased: {
            console.log(("button released"))
        }

        onClicked: {
            console.log("button clicked")
        }
    }

}
