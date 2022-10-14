import QtQuick 2.6
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView")

    Component.onCompleted: {
        var colores = ['orange', 'green','yellow','cyan','blue','red','black','white'];
        var jx = 0;
        var color_texto = 'black'
        for(var ix=0; ix<10;ix++){
            if(jx==colores.length){
                jx=0
            }
            if(colores[jx]==='blue'){
                color_texto = 'white'
            }
            else{
                color_texto = 'black'
            }
            myListView.model.append({valorTexto:'hola'+ix,
                                    colorFondo: colores[jx],
                                    colorTexto: color_texto
                                    });

            jx++;

        }
    }

    ListView{
        anchors.fill:  parent
        id : myListView
        model : ListModel {}
        spacing: 10
//        delegate: Text {
//            id: delegateText
//            text: valorTexto
//        }
        delegate: Rectangle{
            color: 'black'
            border.color : 'white'
            border.width: 4
            width: mainWindow.width
            height: mainWindow.height/10

            Text{
                anchors{
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                color: colorFondo
                font.pointSize: 20
                text: valorTexto
            }
        }
    }
}
