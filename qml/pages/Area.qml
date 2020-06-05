import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13

Abstract {
    id:qt_chart
    title: chart_title
    series: areaSeries
    function clear(){
    areaSeries.clear()
    }
    function reLoader(){
        //  重新加载
    pieSeries.clear()
        for(let index in chart_datas)
        {
         areaSeries.append(chart_datas[index]["label"],chart_datas[index]["value"])
        }
    }
    AreaSeries {
        id: areaSeries
    }
    Component.onCompleted: reLoader()
}
