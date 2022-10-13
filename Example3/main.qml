import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


//    Rectangle {
//        id: background
//        anchors.fill: parent
//        color: "red"

//        Rectangle {
//            id: childRectangle
//            x: 195
//            y: 115
//            width: 250
//            height: 250
//            color: "#ffffff"
//            anchors.centerIn: parent
//            rotation: 45

//        }
//        Rectangle{

//        }
//    }

    StackView {
        id: contentFrame
        width: 640
        height: 480
        initialItem: Qt.resolvedUrl("qrc:/loadPage.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/mainPage.qml")
    }
}
