import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick 2.6
import QtQuick.Controls 2.2

Window {
    id : mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id : openMenu
        text : "Menu"

        onClicked: {
            menu.open();
        }

    }
    Label {
        id: menulabel
        anchors.centerIn: parent
        text:" Selection option del menu"
        font.pointSize: 30
    }

    Menu{
        id : menu
        y: openMenu.height
        MenuItem{
            text: "Option1"

            onClicked: {
                menulabel.text = "Option 1"
            }
        }
        MenuItem{
            text : "Option2"

            onClicked: {
                menulabel.text = "Option 2"
            }

        }
        MenuItem {
            text: "Option3"

            onClicked:{
                menulabel.text = "Option 3"
            }

        }
        MenuItem {
            text : "Quit"

            onClicked: {
                Qt.quit();
            }
        }

    }
}
