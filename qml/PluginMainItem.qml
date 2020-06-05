import Felgo 3.0
import QtQuick 2.0
import "helper"
import "pages"

Item {
    anchors.fill: parent

    // app content with plugin list
    NavigationStack {
        id: pluginMainItem

        // initial page contains list if plugins and opens pages for each plugin when selected
        ListPage {
            id: page
            title: qsTr("Felgo Plugins")

            model: ListModel {
                ListElement { type: "Advertising"; name: "AdMob";
                    detailText: "Ad Monetization and Promotion"; image: "../assets/logo-admob.png" }
                ListElement { type: "Advertising"; name: "Chartboost"
                    detailText: "Ad Monetization and Promotion"; image: "../assets/logo-chartboost.png" }
                ListElement { type: "In-App Purchases"; name: "Soomla"
                    detailText: "In-App Purchases & Virtual Currency"; image: "../assets/logo-soomla.png" }
                ListElement { type: "Social"; name: "Facebook"
                    detailText: "Social Sharing & Friend Invites"; image: "../assets/logo-facebook.png" }
                ListElement { type: "Notifications"; name: "OneSignal Push Notifications"
                    detailText: "Targeted Push Notifications"; image: "../assets/logo-onesignal.png" }
                ListElement { type: "Database & Authentication"; name: "Firebase"
                    detailText: "Manage users and use Realtime Database"; image: "../assets/logo-firebase.png" }
            }

            delegate: PluginListItem {
                visible: name !== "GameCenter" || Theme.isIos

                onSelected: {
                    switch (name) {
                    case "AdMob":
                        page.navigationStack.push(Qt.resolvedUrl("pages/AdMobPage.qml"))
                        break
                    case "Chartboost":
                        page.navigationStack.push(Qt.resolvedUrl("pages/ChartboostPage.qml"))
                        break
                    case "Soomla":
                        page.navigationStack.push(soomlaPage)
                        break
                    case "Facebook":
                        page.navigationStack.push(facebookPage)
                        break
                    case "OneSignal Push Notifications":
                        page.navigationStack.push(Qt.resolvedUrl("pages/OneSignalPage.qml"))
                        break
                    case "Firebase":
                        page.navigationStack.push(firebasePage)
                        break
                    }
                }
            }

            section.property: "type"
            section.delegate: SimpleSection { }
        }
    }
}
