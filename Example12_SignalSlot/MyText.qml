import QtQuick 2.0

Item {

    Text {
        id: displayingText
        anchors.fill: parent
        x: parent.x
        y: parent.y
        text: "QML"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }


    function changeText(text){
        displayingText.text = text;

    }
}
