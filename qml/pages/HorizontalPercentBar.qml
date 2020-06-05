import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13

AbstractBar {
    //代码冗余
    id:qt_chart
    title: chart_title
    series:barSeries
    function clear(){
    barSeries.clear()
    }
    function reLoader(){
        //  重新加载
    barSeries.clear()
        initAxis()//初始化 坐标轴
        for(let index in chart_datas)
        {
         barSeries.append(chart_datas[index]["label"],chart_datas[index]["values"])
        }
    }
     HorizontalPercentBarSeries{
        id:barSeries
    }
}
