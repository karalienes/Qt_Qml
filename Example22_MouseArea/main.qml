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
            height: rootRectangle.height/8
            anchors.centerIn: rootRectangle
            border.color: "#000000"
            border.width: 7
            radius: 20
//            gradient: Gradient{
//                GradientStop{position: 0.0; color: "lightsteelblue" }
//                GradientStop{position: 1.0; color: "blue" }
//            }

        }

        Text {
            id: text1
            anchors.centerIn: blueRectangle
            text: "Enes KARALİ"
            color: "black"
            font.pixelSize: Math.round((blueRectangle.height/2))

        }


//        Text {
//            anchors.centerIn: parent
//            text: "KARALİ"
//        }

//        MouseArea {
//           anchors.fill: parent

//           onClicked: {
//               Qt.quit();
//               console.log(blueRectangle.height)
//               console.log(Math.round((blueRectangle.height/2)))
//           }
//        }

        MouseArea {

            id: blueRecMouseArea

            onEntered: {
                blueRectangle.color = "brown"
                blueRectangle.rotation = 45
                text1.rotation = 45

            }
            onClicked: {
                blueRectangle.color = "#654123"
                blueRectangle.rotation = 45
                text1.rotation = 45
            }

            anchors.fill: blueRectangle
        }

    }

}

