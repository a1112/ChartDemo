import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13
import QtQml.Models 2.13

import "theams"
import "../Core"
Item{
    height: dp(400)
    width: listview.parent.width
    SwipeView{
        currentIndex: 0
        height: parent.height
        width: parent.width
        id:view
        Repeater{
            property var modelspbj: ChartsModelCore{}
            model: modelspbj.model
               delegate:Item{
                    ChartDelegate{}
                }
        }

    }
    PageIndicator{
        scale: 2.0
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Component{
        id:thramSelect
    QtChartTheamSelect{
            onTheamChise: {
            rootStack.pop()
                        if(globModel)
                        {
                            Core.chartTheme=chartTheam
                        }
            }
    }
    }
    IconButton{
        icon : IconType.plane
        scale: 1.5
        width: dp(20)
        height: width
        x:dp(30)
        y:dp(10)
        onClicked: {
            //打开 theam选择 界面
       rootStack.push(thramSelect)
        }
    }
}
