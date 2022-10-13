import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")



    ListModel {
        id: fruitModel
        ListElement {
            name: "Apple"
            cost: 2.45

        }
        ListElement {
            name: "Orange"
            cost: 3.15
        }
        ListElement {
            name: "Banana"
            cost: 5.45
        }
    }
}
