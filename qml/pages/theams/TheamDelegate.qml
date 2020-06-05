import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.13
import Felgo 3.0
import QtCharts 2.13
import "../"
Item{
    width: parent.width
    height: width
    id:root
    signal click()

ChartViewBase {
    anchors.fill: parent
    theme:modelData
    PieSeries {
        id: pieSeries
                PieSlice { label: "Volkswagen"; value: 13.5 }
                PieSlice { label: "Toyota"; value: 10.9 }
                PieSlice { label: "Ford"; value: 8.6 }
                PieSlice { label: "Skoda"; value: 8.2 }
                PieSlice { label: "Volvo"; value: 6.8 }
    }
}
MouseArea{
anchors.fill: parent
onClicked: root.click()
}
}
