pragma Singleton

import QtQuick 2.0

Item {

    // AdMob
    readonly property string admobBannerAdUnitId: "ca-app-pub-9155324456588158/9913032020"
    readonly property string admobInterstitialAdUnitId: "ca-app-pub-9155324456588158/9075427220"
    readonly property var admobTestDeviceIds: [ "d17ba18ff075e7c20c5ce081813d9666", "28CA0A7F16015163A1C70EA42709318A" ]

    // Chartboost
    readonly property string chartboostIosAppId: "53609edd89b0bb726b46c6e0"
    readonly property string chartboostAndroidAppId: "53609f3789b0bb72b4b95836"
    readonly property string chartboostIosAppSignature: "6fed94ffeaf6abb3d5aa85781e59fa2fb83354b8"
    readonly property string chartboostAndroidAppSignature: "c87b4e51a85b76a4bbe41ee880634fc9ae875ca8"

    // OneSignal
    readonly property string oneSignalAppId: "a23e646c-0d6f-4611-836e-5bf14ee96e98"
    readonly property string oneSignalGoogleProjectNumber: "522591647137"

    // Soomla
    property string soomlaSecret: "<your-game-secret>"
    property string soomlaAndroidPublicKey: "<android-public-key>"
    property string creditsCurrencyItemId: "net.vplay.demos.PluginDemo.credits"
    property string creditsPackItemId: "net.vplay.demos.PluginDemo.creditspack"
    property string goodieItemId: "net.vplay.demos.PluginDemo.goodie"
    property string noAdsItemId: "net.vplay.demos.PluginDemo.noads"

    // Facebook
    property string facebookAppId: "1014223965320966"

}
