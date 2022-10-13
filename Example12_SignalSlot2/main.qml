import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {

        anchors.fill: parent
        color:  "red"
        visible: true

        MouseArea{
            anchors.fill: parent
            onClicked: {
                receiver.receiveSomething("Hello word");
            }
        }
    }
}
