import QtQuick 2.13
import Felgo 3.0
import QtQml.Models 2.13
import QtQuick.Layouts 1.13
import "Chart3D"
Item{
    //主页面
    property NavigationStack rootStack

    AppDrawer {
      //all items inside AppDrawer will be placed in the drawer area

      id: drawer

      z: 1 //put drawer on top of other content

      Rectangle { //background for drawer
        anchors.fill: parent
        color: "white"

        AppButton {
          anchors.centerIn: parent
          text: qsTr("待定")
          onClicked: {
            drawer.close()
          }
        }
      }

    } //end of AppDrawer
    anchors.fill: parent
    AppListView{
        id:listview
      anchors.fill: parent

      spacing : dp(20)
      model: ObjectModel{
          AppButton {
            text: qsTr("打开侧栏")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: drawer.open()
          }
          ChartMainView{

          }
          ChartMainView{

          }
          Bar3D{}

      }

    }

}
