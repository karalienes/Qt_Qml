import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        text: "Denemedir"
        anchors.centerIn: parent
    }

    Button {
        id:button
        x: 270
        y: 220
        text: qsTr("CLICK")
        onClicked: {
            label.text =textField.text
        }
    }
    Label {
        id:label
        x: 267
        y: 303
        width: 107
        height: 49
        text: qsTr("Label")

    }
    TextField {
        id: textField
        x: 220
        y: 113
        text: qsTr("Text Field")
    }
}
