pragma Singleton
import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
QtObject{
    //单例，存储一些固定对象
    property var chartTheme:ChartView.ChartThemeLight
    property var chartAnimationOptions: ChartView.AllAnimations

}
