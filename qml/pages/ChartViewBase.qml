import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13
import "../Core"
import "../"
ChartView {
    theme:Core.chartTheme
    id: root
    anchors.fill: parent
    antialiasing: true
    animationOptions:Core.chartAnimationOptions
    localizeNumbers:true
    property QtObject series
    function getAxisByData(data,parent_obj)
    {
        //获取坐标系
        let comp=()=>{switch(data["type"]){
                case "BarCategoryAxis":
                    return barCategoryAxis
                case "CategoryAxis":
                    return categoryAxis
                case "DateTimeAxis":
                    return dateTimeAxis
                case "LogValueAxis":
                    return logValueAxis
                case "ValueAxis":
                    return valueAxis
            }
        }
        comp=comp()
        if(comp)
        {
            let parent_=parent_obj?parent_obj:root
            return comp.createObject(parent_,data["properties"])
        }
        return null
    }
    Component{
        id:barCategoryAxis
        BarCategoryAxis{
        }
    }
    Component{
        id:categoryAxis
        CategoryAxis{
        }
    }
    Component{
        id:dateTimeAxis
        DateTimeAxis{
        }
    }
    Component{
        id:logValueAxis
        LogValueAxis{
        }
    }
    Component{
        id:valueAxis
        ValueAxis{
        }
    }

    function initAxis(){
         Array().concat([chart_axisX,chart_axisY],axis).forEach((value,key)=>{
                            console.log(value)
                            if(value)
                               series[value["key"]]=getAxisByData(value,series)
                              })
    }
Component.onCompleted: {
for(let key in chart_properties)
    root[key]=chart_properties[key]

}

}
