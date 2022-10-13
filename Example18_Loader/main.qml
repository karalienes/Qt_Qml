import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true


    Loader {

        id: loader1
        sourceComponent: component1
        active: false

        onProgressChanged: {
            console.log("progess:"+ loader1.progress)
        }
    }

    Component{
        id: component1
        Rectangle {
            id: rect2
            width: 200
            height: 200
            color: "yellow"
            x: 300
            y: 300
        }
    }



    Rectangle {

        property int someProperty: 0
        id: rect1
        state:"default"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(rect1.state == "default"){
                    rect1.state = "rightPosition"
                    loader1.active = true
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

        transitions: [

            Transition {
                from: "rightPosition"
                to: "default"
                ParallelAnimation {
                    NumberAnimation{
                        properties:"x,y,width,height"
                        duration: 500
                        easing.type: Easing.InOutBack
                    }


                    ColorAnimation {
                        duration: 500
                    }

                }
            },
            Transition {
                from: "default"
                to: "rightPosition"
                ParallelAnimation {
                    NumberAnimation{
                        properties:"x,y,width,height"
                        duration: 500
                        easing.type: Easing.InOutBack
                    }


                    ColorAnimation {
                        duration: 500
                    }

                }
            }

        ]
    }

}
