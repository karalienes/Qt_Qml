import QtQuick 2.15
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


ApplicationWindow{
    visible: true
    id: mainWindow
    width: 640
    height: 480
    title: "QProperty"

    ListView {
        anchors.fill: parent
        model: people
        delegate: Rectangle{
            width: parent.width
            height: 30

            RowLayout {
                spacing: 10
                width: parent.width
                height: inc_age_button.height

                Text {
                    width: mainWindow/3
                    Layout.fillWidth: true
                    text: name

                }
                Text {
                    width: mainWindow/3
                    Layout.fillWidth: true
                    text: age

                }

                Button {
                    width: mainWindow/3
                    id: inc_age_button
                    Layout.fillWidth: true
                    text: "Age +1"
                    onClicked: {
                        age = age+1;
                    }
                }

                Button {
                    id: dec_age_button
                    text: "Age-1"
                    onClicked: {
                        age = age-1 ;
                    }
                }

                TextField {
                    id: name_textfield
                    width: mainWindow/3
                    placeholderText: "Enter Name"
                    Button {
                        text: "OK"
                        width: mainWindow/5
                        anchors {
                            right: parent.right
                            top: parent.top
                            bottom: parent.bottom
                        }

                        onClicked: {
                            name =name_textfield.text
                        }
                    }

                }
            }
        }
    }

}
