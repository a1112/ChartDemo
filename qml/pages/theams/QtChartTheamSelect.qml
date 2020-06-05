import QtQuick 2.13
import QtCharts 2.13
import Felgo 3.0
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13
ListPage{
    title:"样式选择"
    id:root
    signal theamChise(var chartTheam,bool globModel)
    property bool globModel: true
AppListView {
    anchors.fill: parent
    //添加动画
    spacing: dp(10)
    model: [
        ChartView.ChartThemeLight,
        ChartView.ChartThemeBlueCerulean,
        ChartView.ChartThemeDark,
        ChartView.ChartThemeBrownSand,
        ChartView.ChartThemeBlueNcs,
        ChartView.ChartThemeHighContrast,
        ChartView.ChartThemeBlueIcy,
        ChartView.ChartThemeQt
    ]


    header:RowLayout{
        height: dp(30)
        width: parent.width
        Item{
        width: dp(60)
        }
        RadioButton{
        text: qsTr("全部应用")
        id:glob_radio_id
        checked: true
        onCheckedChanged: {
        globModel=!globModel
        }
        }
        RadioButton{
        text: qsTr("应用当前")
        }
    }
    delegate: TheamDelegate{
        onClick: {
            theamChise(modelData,globModel)
        }
    }

}
}
