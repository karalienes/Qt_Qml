import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {

//    //ilk yapılan işlem
//    GridView {
//        id:mygridview
//        cellWidth:  parent.width /3
//        cellHeight: 10
//        anchors.fill: parent
//        model: ListModel {
//            ListElement {
//                name: "Dilek"
//                age: 24
//            }
//            ListElement {
//                name: "Enes"
//                age: 24
//            }
//            ListElement {
//                name: "Hüseyin"
//                age: 28
//            }
//        }
//        delegate: Text {
//            width: mygridview.cellWidth
//            height: mygridview.cellHeight
//            text: "Name: "+ name + "Age: "+ age
//        }
//    }

    GridView {
        id: mygridview
        cellWidth: parent.width/4
        cellHeight: 5
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }

        model: ListModel{
            ListElement{
                name: "Page-1"
            }
            ListElement {
                name: "Page-2"
            }
            ListElement {
                name: "Page-3";
            }
            ListElement {
                name: "Page-4";
            }
        }
        delegate:  Button {
            id:mybutton
            text: name
            onClicked: load_page(text)
        }
    }
}
