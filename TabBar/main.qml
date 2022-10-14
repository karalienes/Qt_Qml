import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow{
    visible: true
    width: 640
    height: 480
    title: "TabBar"
    // footer yaparsak alt kısım header yaparsak üst kısımda olacaktır.

    header: TabBar{
        id: bar

        TabButton {
            text: "Enes"
        }

        TabButton {
            text: "Karali"
        }

        TabButton {
            text: "KTÜ"
        }
    }

    StackLayout {
        anchors.fill: parent
        currentIndex: bar.currentIndex

        Item {
            id: primeryTab

        Rectangle {
            color: 'red'
            anchors.fill: parent
        }
        }
        Item {
            id: secondaryTab
            Rectangle {
                color: 'blue'
                anchors.fill: parent
            }
        }

        Item {
            id: triTab
            Rectangle {
                color: 'black'
                anchors.fill: parent
            }
        }

    }

}
