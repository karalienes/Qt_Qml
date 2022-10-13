import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    id: root


    Rectangle {
        id: rect1
        width: 360
        height: 360
        color: "red"

        Text {
            id: text1
            x: root.height/2
            y: root.width/2
            color:"#ffffff"
            anchors.centerIn: parent
            opacity: 1
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            font.strikeout: false
            font.italic: false
            font.bold: true
            text: "KARALİ"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit();
            }
        }

    }

}
