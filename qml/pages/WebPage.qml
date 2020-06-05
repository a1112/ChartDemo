import Felgo 3.0
import QtQuick 2.0
import QtWebView 1.1
Item{
    function clear(){
    pieSeries.clear()
    }
    function reLoader(){
        //  重新加载
    }
    WebView {
        id:web
        anchors.fill: parent
        url:"https://sklearn.apachecn.org/docs/master/2.html"
      }
}
