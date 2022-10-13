import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    color: "gray"

    Rectangle{
        x: 20
        y: 20
        width: 100
        height: 30
        color:  "yellow"

        TextInput {
            id: textInput
            anchors.fill: parent
            horizontalAlignment:  TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter
            color: "blue"
        }


    }


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
            myText.changeText(textInput.text)
        }
    }

    MyText {
        id: myText
        x: textInput.x + textInput.width+20
        y: textInput.y
        width:100
        height:30
    }

}
