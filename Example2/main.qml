import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 300
    maximumWidth: 400
    minimumWidth: 400
    height: 300
    maximumHeight: 400
    minimumHeight: 400
    visible: true
    title: qsTr("Hello World")
    id: mainWindow


//    Button {
//        text: "Button"
//        width: 100
//        height: 100
//        onClicked: {
//            mainWindow.setTitle("Denemedir")
//        }
//    }
    Rectangle {
        id: background
        gradient: Gradient{
            GradientStop{
                position: 0
                color :"cyan"
            }
            GradientStop{
                position: 1
                color: "blue"
            }
        }
        anchors.fill: parent
    }
}
