import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3


ApplicationWindow {
    visible: true
    id : mainWindow
    height: 480
    width: 640
    title: "ToolBar"

    header: ToolBar {
        RowLayout{
            anchors.fill: parent
            ToolButton {
                text: "˙˙"
                onClicked: {
                    menu.open();
                }
            }

            Label {
                id: text_lbl
                text: "ToolBar Application"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton {
                text: '<'

                onClicked: {
                    stack.pop();
                }

            }
        }
    }
    StackView {
        id: stack
        anchors.fill: parent
    }

    Menu {
        id : menu
        MenuItem {
            text: "Option 1"
            onClicked: {
                text_lbl.text = "Option 1"
                stack.push(primerElement)
            }
        }
        MenuItem {
            text: "Option 2"
            onClicked:  {
                text_lbl.text = "Option 2"
                stack.push(secondaryElement)
            }
        }

        MenuItem {
            text: "Option 3"
            onClicked: {
                text_lbl.text = "Option 3"
                stack.push(triElement)
            }
        }
    }

    Component {
        id: primerElement
        Rectangle {
            anchors.fill: parent
            color: 'red'
        }
    }

    Component{
        id: secondaryElement
        Rectangle {
            anchors.fill: parent
            color: 'blue'
        }
    }

    Component {
        id: triElement
        Rectangle {
            anchors.fill: parent
            color: 'cyan'
        }
    }
}
