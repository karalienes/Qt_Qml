import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    Rectangle {
        anchors.fill: parent
        color: 'green'
        Button{
            anchors.centerIn: parent
            text: "Exit"
            onClicked: Qt.quit();
        }
    }
}
