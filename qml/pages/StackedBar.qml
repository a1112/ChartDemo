import QtQuick 2.13
import Felgo 3.0
import QtCharts 2.13
import QtQuick.Controls 2.13

AbstractBar {
    //代码冗余
    id:qt_chart
    title: chart_title
    series:barSeries
     StackedBarSeries{
        id:barSeries
    }
}
