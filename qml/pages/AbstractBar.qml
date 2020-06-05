import QtQuick 2.13
import Felgo 3.0

ChartViewBase {
    id:root
    function clear(){
    root.series.clear()
    }
    function reLoader(){
        //  重新加载
    root.series.clear()
        initAxis()//初始化 坐标轴
        for(let index in chart_datas)
        {
         root.series.append(chart_datas[index]["label"],chart_datas[index]["values"])
        }
    }
}
