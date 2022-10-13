import QtQuick 2.0
import QtQuick.Controls 2.15
Item {
    width: 640
    height: 480

    Rectangle {
        color: "red"
        anchors.fill: parent

        BusyIndicator {
            id: busyIndicator
            x: 290
            y: 210
        }
    }
}
