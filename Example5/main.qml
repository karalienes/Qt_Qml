import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    property var iniITEM: "qrc:/Item1.qml"
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    StackView {
        id: stackView
        width: 200
        height: 200
        initialItem: iniITEM
    }

//    Component.onCompleted: {
//        stackView.replace(Qt.resolvedUrl("qrc:/Item2.qml"))
//    }

    Button {
        anchors.centerIn: parent
        width:50
        height: 50
        text: "Click"
        onClicked: {
            stackView.replace("qrc:/Item2.qml")
        }
    }
}
