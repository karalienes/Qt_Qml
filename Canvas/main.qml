import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Canvas")

    RowLayout {
        id: botones
        anchors.horizontalCenter: parent.horizontalCenter
        z: canvas.z+ 1;

        Button {

            text: "Clear"

            onClicked: {
                canvas.clear();
            }
        }

        Button {
            text: "Quit"
            onClicked: {
                Qt.quit();
            }
        }
    }

    Canvas {
        id: canvas
        anchors.fill: parent

        property int lastX: 0
        property int lastY: 0

        function clear(){
            var ctx = getContext('2d');
            ctx.reset();
            canvas.requestPaint();
        }

        MouseArea {
            id: area
            anchors.fill: parent

            onPressed:  {
                canvas.lastX = mouseX;
                canvas.lastY = mouseY;
            }
            onPositionChanged: {
                canvas.requestPaint();
            }
        }

        onPaint: {
            var ctx =getContext("2d");
            ctx.lineWidth = 10; //kalınlık ayarlamaktadır
            ctx.beginPath();
            ctx.moveTo(lastX,lastY); // Başlangıç noktası
            lastX = area.mouseX;
            lastY = area.mouseY;
            ctx.lineTo(lastX,lastY);
            ctx.stroke();
        }

    }


}
