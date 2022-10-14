import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3


Item {
    ListView {
        anchors.fill:  parent
//                model:[
//                {mytext: "Button1"},
//                {mytext: "Button2"},
//                {mytext: "Button3"},
//                {mytext: "Button4"},
//                {mytext: "Button5"}
//                ]
        model: ListModel {
            ListElement {
                myText: "Enes"
            }
            ListElement {
                myText: "Dilek"
            }
            ListElement {
                myText: "Hüseyin"
            }
        }

        delegate: Button{
            text: myText
        }
    }
}
