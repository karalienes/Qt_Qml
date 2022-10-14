import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    ListView {
        anchors.fill: parent
        model: ListModel {
            ListElement{
                name: "Dilek"
                age: 24
            }
            ListElement {
                name: "Enes"
                age: 24
            }
            ListElement {
                name: "Hüseyin"
                age:28
            }
        }
        delegate: Text {
            width: parent.width
            height: 10
            text: "Name: "+ name + "Age: "+ age
        }
    }
}
