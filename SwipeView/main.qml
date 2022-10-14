import QtQuick 2.6
import QtQuick.Controls 2.1


ApplicationWindow{
    visible: true
    width: 640
    height: 480
    title: "SwipView"

    SwipeView{
        id: view
        anchors.fill: parent
        currentIndex: 0
        Item{
            id: primerElement
            Rectangle {
                anchors.fill: parent
                color: 'red'
            }
        }
        Item{
            id: seconderElement
            Rectangle{
                anchors.fill: parent
                color: 'black'
            }
        }
        Item {
            id: triElement
            Rectangle {
                anchors.fill: parent
                color: 'orange'
            }
        }

    }

    PageIndicator{
        id: indicador
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
