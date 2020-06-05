/*
视图分发/解析
*/

import QtQuick 2.13
import QtCharts 2.13
import QtQuick.Controls 2.13
import QtQml.Models 2.13
import Felgo 3.0
AppPaper {
    x:dp(15)
    width: parent.width-dp(30)
    elevated:true
    radius:dp(10)
    height: parent.height
    id: root
    property bool iscurent: index==view.currentIndex //当前视图
    onIscurentChanged: {
        if(iscurent)
            main_loader.item.chart.reLoader()
        else{
            main_loader.item.chart.clear()
        }
    }
    Component{
        id:qt_chart_comp
        Item{
            width: root.width
            height: root.height
            property var chart: chart_load.item
            Component{
                id:bar_com
                Bar{
                }
            }
            Component{
                id:pie_com
                Pie{
                }
            }
            Loader{
                id:chart_load
                width: root.width
                height: root.height
                sourceComponent:{
                    switch(chart_type){
                    //手动匹配
                    case "Bar":
                        return bar_com
                    case "Pie":
                        return pie_com
                        //自动匹配
                    default:
                        return Qt.createComponent(chart_type+".qml")//可能会出错
                    }
                }
            }
        }
    }
    Component{
        id:youTube_comp
        //YouTubeWebPlayer {
        //    //需要VPN
        //    id:qt_chart
        //     videoId: "KQgqTYCfJjM"
        //    visible: chart_supplier=="YouTube"
        //}
        Item{}
    }
    //    AppCardSwipeArea {
    //        onSwipedOut:{
    //            console.log(direction)
    //        }
    //        Component.onCompleted: swipedOut()
    //    }

    Loader{
        id:main_loader
        sourceComponent:  chart_supplier=="QT"?qt_chart_comp:youTube_comp
    }


    Component.onCompleted: {
    }
}
