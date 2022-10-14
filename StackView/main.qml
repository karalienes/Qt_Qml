import QtQuick 2.15
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: maninWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {
        RowLayout{
            anchors.fill: parent
            ToolButton{
                text: qsTr("<")
                onClicked: mystackview.pop()
            }
            Label {
                text: "Stackview Example App"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
//            ToolButton{
//                text: qsTr(":");
//                onClicked: menu.open()
//            }
        }
    }

    StackView {
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: parent.top
        }

        id: mystackview
        initialItem:starting_page
    }

    Component {
        id:starting_page
        StartingPage{}
    }
    Component {
        id: second_page
        SecondPage{}

    }
    Component {
        id:third_page
        ThirdPage{}
    }
    Component {
        id:fourth_page
        FourthPage {}
    }


    function load_page(page){
        switch(page){
        case 'Page-1':
            mystackview.push(starting_page);
            break;
        case 'Page-2':
            mystackview.push(second_page);
            break;
        case 'Page-3':
            mystackview.push(third_page);
            break;
        case 'Page-4':
            mystackview.push(fourth_page);
            break;
        }
    }
}
