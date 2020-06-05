
import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.Material  2.13
import QtQml.Models 2.13
import Felgo 3.0

import "pages"
import "helper"

/*/////////////////////////////////////
  NOTE:
  Additional integration steps are needed to use Felgo Plugins, for example to add and link required libraries for Android and iOS.
  Please follow the integration steps described in the plugin documentation of your chosen plugins:
  - AdMob: https://felgo.com/doc/plugin-admob/
  - Chartboost: https://felgo.com/doc/plugin-chartboost/
  - Soomla: https://felgo.com/doc/plugin-soomla/
  - Facebook: https://felgo.com/doc/plugin-facebook/
  - OneSignal: https://felgo.com/doc/plugin-onesignal/
  - Firebase: https://felgo.com/doc/plugin-firebase/

  To open the documentation of a plugin item in Qt Creator, place your cursor on the item in your QML code and press F1.
  This allows to view the properties, methods and signals of Felgo Plugins directly in Qt Creator.

/////////////////////////////////////*/

App {
    id:app

    Material.theme: Material.Dark
    Material.accent: Material.color("red")
    onInitTheme: {
        Theme.platform="ios"// 模仿 风格
        Theme.colors.tintColor = "#57adee"
        Theme.colors.backgroundColor = "#eee"
        Theme.navigationBar.backgroundColor = Theme.tintColor
        Theme.navigationBar.titleColor = "white"
        Theme.navigationBar.itemColor = "white"
        Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite
        //        Theme.navigationBar.height=0//隐藏导航条
    }
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    // This item contains example code for the chosen Felgo Plugins
    // It is hidden by default and will overlay the QML items below if shown
    Page{
    Navigation {
        // enable both tabs and drawer for this demo
        // by default, tabs are shown on iOS and a drawer on Android
        navigationMode:navigationModeTabs
        NavigationItem {
            title: qsTr("主页")
            icon: IconType.home
            NavigationStack {
                id:mainStack
               Page {
                     title: "Demo"
                 MainPage{
                     rootStack:mainStack
                 anchors.fill: parent
                 }
                }
            }
        }
        NavigationItem {
            title: qsTr("附页")
            icon: IconType.list


            NavigationStack {
                ListPage {
                    title: "Lists"
                }
            }
        }
    }
   }
    FpsMeter{
        id:fps_m
    width:100
    height: 100
    x:-300
    y:-300
    z:-10
    }
    AppText{
        y:70
      text: "FPS :"+fps_m.fps
              DragHandler{}
    }
//    PluginMainItem {
//        //各种登录模块
//        id: pluginMainItem
//        z: 1           // display the plugin example above other items in the QML code below
//        visible: false // set this to true to show the plugin example

//        // keep only one instance of these plugin-pages alive within app
//        // this prevents crashes due to destruction of plugin items when popping pages from the stack
//        property alias soomlaPage: soomlaPage
//        property alias facebookPage: facebookPage
//        property alias firebasePage: firebasePage

//        SoomlaPage {
//            id: soomlaPage
//            visible: false
//            onPushed: soomlaPage.listView.contentY = soomlaPage.listView.originY
//            onPopped: { soomlaPage.parent = pluginMainItem; visible = false }
//        }

//        FacebookPage {
//            id: facebookPage
//            visible: false
//            onPopped: { facebookPage.parent = pluginMainItem; visible = false }
//        }

//        FirebasePage {
//            id: firebasePage
//            visible: false
//            onPopped:  { firebasePage.parent = pluginMainItem; visible = false }
//        }
//    }
}
