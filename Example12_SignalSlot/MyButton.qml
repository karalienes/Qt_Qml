import QtQuick 2.0

Item {
    id: rootItm
    property int w: 0
    property int h: 0
    property int xPos: 0
    property int yPos: 0
    property string colorNormal: "black"
    property string colorHighlighted: "gray"
    property string textColor: "white"
    property string btnText: "KARALİ"


    signal clicked()
    signal pressed()
    signal released()

    Rectangle {
        id: rect
        width: rootItm.w
        height: rootItm.h
        x: rootItm.xPos
        y: rootItm.yPos
        color: rootItm.colorNormal

        Text {
            id: text
            anchors.centerIn: parent
            color: rootItm.textColor
            text: rootItm.btnText

        }

        MouseArea {
            id: mA
            anchors.fill: parent

            onEntered: {
                rect.color = rootItm.colorHighlighted
                text.color = "blue"
                rootItm.pressed()
            }

            onReleased: {
                rect.color = rootItm.colorNormal
                text.color = rootItm.textColor
                rootItm.released()
                rootItm.clicked()
            }
        }
    }
}
