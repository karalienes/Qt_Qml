import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true


    Rectangle {

        property int someProperty: 0
        id: rect1
        state:"default"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(rect1.state == "default"){
                    rect1.state = "rightPosition"
                }
                else{
                    rect1.state = "default"
                }
                console.log("Custom Integer:"+ rect1.someProperty)
            }
        }

        states: [
        State {
                name:"default"
                PropertyChanges {
                    target: rect1
                    x: 0
                    color: "blue"
                    width: 300
                    height: 300
                    someProperty: 0
                }
            },
            State {
                    name:"rightPosition"
                    PropertyChanges {
                        target: rect1
                        x: 300
                        color: "black"
                        width: 100
                        height: 100
                        someProperty: 100
                    }
                }
        ]
    }

}
