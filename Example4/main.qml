import QtQuick 2.15
import QtQuick.Window 2.15
import QtCharts 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    ChartView {
        id:pie
        x:170
        y:90
        width: 300
        height: 300
        PieSeries{
            name:"PieSeries"
            size: 4
            holeSize: 0.7
            PieSlice{
                value: 13.5
                label: "Slice1"
            }
            PieSlice {
                value: 10.9
                label: "Slice2"
            }
            PieSlice {
                value: 8.6
                label: "Slice3"
            }
        }
    }
}
