import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13

ChartViewBase {
    id:qt_chart
    title: chart_title
    function clear(){
    pieSeries.clear()
    }
    function reLoader(){
        //  重新加载
    pieSeries.clear()
        for(let index in chart_datas)
        {
         pieSeries.append(chart_datas[index]["label"],chart_datas[index]["value"])
        }
    }
    PieSeries {
        id: pieSeries
    }
    Component.onCompleted: reLoader()
}
