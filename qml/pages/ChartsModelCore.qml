/*
#   数据源
*/

import QtQuick 2.13
import Felgo 3.0

QtObject{
    property var model: localModel    //当前的模型
    id: item
    /*
        数据规则
          1，Chart 类型。
          2，Chart 提供商，（qt,echarts,自定义）
          3，Chart 风格。（不一定有效）
          4，数据集 （符合相应约束）
          5，更新频率（Web）
          ps:Felgo 存在一些无法使用的类型
    */
    property JsonListModel localModel: JsonListModel{
        //本地测试
        keyField: "chart_type"


        fields: [
            "chart_supplier",
            "chart_properties",
            "chart_type",
            "chart_title",
            "chart_datas",
            "chart_axisX",
            "chart_axisY",
            "axis"
        ]
    }

    property ListModel webModel: ListModel{
        //正式网络环境
        dynamicRoles: true
    }

    Component.onCompleted: {
        //1   Pie
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"Pie",    //类型,可以优化（减少代码量）
                        chart_title:"Pie",
                        chart_properties:{
                            title:"Pie"
                        },//ChartView 参数
                        chart_datas:[
                            {
                                label:"数据A",
                                value:18
                                //颜色，突出？...
                            },{
                                label:"数据B",
                                value:45
                            },{
                                label:"数据C",
                                value:15
                            }
                        ],
                        chart_axisX:{
                            //虽然用不上，但是需要有，因为模型的原因
                        }
                    }
                    )


        // 2 Bar
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"Bar"   ,    //类型
                        chart_properties:{
                            title:"Bar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        chart_axisX:{
                            key:"axisY",
                            type:"ValueAxis",
                            properties:{
                                max:14,
                                min:0
                            }
                            //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                        },
                        chart_axisY:{
                            key:"axisX",
                            type:"BarCategoryAxis",
                            properties:{
                                categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                            }
                            //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                        }
                    }
                    )
        //3 HorizontalBar
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"HorizontalBar"   ,    //类型
                        chart_properties:{
                            title:"HorizontalBar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        chart_axisX:{
                            key:"axisX",
                            type:"ValueAxis",
                            properties:{
                                max:14,
                                min:0
                            }
                            //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                        },
                        chart_axisY:{
                            key:"axisY",
                            type:"BarCategoryAxis",
                            properties:{
                                categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                            }
                            //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                        }
                    }
                    )
        //4 PercentBarSeries
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"PercentBar"   ,    //类型
                        chart_properties:{
                            title:"PercentBar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        axis:[{// axis 改进方案
                                key:"axisY",
                                type:"ValueAxis",
                                properties:{
                                    max:100,
                                    min:0
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            },
                            {
                                key:"axisX",
                                type:"BarCategoryAxis",
                                properties:{
                                    categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            }
                        ]
                    }
                    )
        //5 HorizontalPercentBarSeries
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"HorizontalPercentBar"   ,    //类型
                        chart_properties:{
                            title:"HorizontalPercentBar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        axis:[{// axis 改进方案
                                key:"axisX",
                                type:"ValueAxis",
                                properties:{
                                    max:100,
                                    min:0
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            },
                            {
                                key:"axisY",
                                type:"BarCategoryAxis",
                                properties:{
                                    categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            }
                        ]
                    }
                    )
        //6 StackedBarSeries
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"StackedBar"   ,    //类型
                        chart_properties:{
                            title:"StackedBar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        axis:[{// axis 改进方案
                                key:"axisY",
                                type:"ValueAxis",
                                properties:{
                                    max:30,
                                    min:0
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            },
                            {
                                key:"axisX",
                                type:"BarCategoryAxis",
                                properties:{
                                    categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            }
                        ]
                    }
                    )
        //7 StackedBarSeries
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"HorizontalStackedBar"   ,    //类型
                        chart_properties:{
                            title:"HorizontalStackedBar"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
                        ],
                        axis:[{// axis 改进方案
                                key:"axisX",
                                type:"ValueAxis",
                                properties:{
                                    max:21,
                                    min:0
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            },
                            {
                                key:"axisY",
                                type:"BarCategoryAxis",
                                properties:{
                                    categories: ["2007", "2008", "2009", "2010", "2011", "2012" ]
                                }
                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
                            }
                        ]
                    }
                    )
//        //* AreaSeries
//        localModel.append(
//                    {
//                        chart_supplier:"QT",  //提供商
//                        chart_type:"Area"   ,    //类型
//                        chart_title:"Area",     //自动查找视图
//                        chart_theam:{
//                            // 样式，如颜色，风格，标题位置，字体...
//                        },
//                        chart_datas:[
//                            { label: "Bob", values: [2, 2, 3, 4, 5, 6] },
//                            { label: "Susan", values: [5, 1, 2, 4, 1, 7] },
//                            { label: "James", values: [3, 5, 8, 13, 5, 8] }
//                        ],
//                        axis:[{// axis 改进方案
//                                key:"axisX",
//                                type:"ValueAxis",
//                                properties:{
//                                    max:2011,
//                                    min:2000,
//                                    tickCount:12,
//                                    labelFormat: "%.0f"
//                                }
//                                //BarCategoryAxis, CategoryAxis, DateTimeAxis, LogValueAxis,ValueAxis
//                            },
//                            {
//                                key:"axisY",
//                                type:"ValueAxis",
//                                properties:{
//                                    max:4,
//                                    min:0,
//                                }
//                            }
//                        ]
//                    }
//                    )

        //* BoxPlot
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"BoxPlot"   ,    //类型
                        chart_properties:{
                            title:"BoxPlot"
                        },//ChartView 参数
                        chart_datas:[
                            { label: "Jan", values: [3, 4, 5.1, 6.2, 8.5]},
                            { label: "Feb", values: [5, 6, 7.5, 8.6, 11.8] },
                            { label: "Mar", values: [3.2, 5, 5.7, 8, 9.2]},
                            { label: "Apr", values: [3.8, 5, 6.4, 7, 8]},
                            { label: "May", values: [4, 5, 5.2, 6, 7] }
                        ],
                        axis:[
                            {
                                key:"axisY",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:12,
                                    min:0,
                                }
                            }
                        ]
                    }
                    )

        //* Line
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"Line"   ,    //类型
                        chart_properties:{
                            title:"Line"
                        },//ChartView 参数
                        chart_datas:[
                            { x: 0, y: 0},
                            {  x: 1.1, y: 2.1 },
                            {  x: 1.9, y: 3.3},
                            {  x: 2.1, y: 2.1},
                            {  x: 2.9, y: 4.9},
                            {  x: 3.4, y: 3.0},
                            { x: 4.1, y: 3.3 }
                        ],
                        axis:[
                            {
                                key:"axisY",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.1,
                                    min:0,
                                }
                            },
                            {
                                key:"axisX",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.9,
                                    min:0,
                                }
                            }
                        ]
                    }
                    )
        //* Scatter
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"Scatter"   ,    //类型
                        chart_properties:{
                            title:"Scatter"
                        },//ChartView 参数
                        chart_datas:[
                            { x: 0, y: 0},
                            {  x: 1.1, y: 2.1 },
                            {  x: 1.9, y: 3.3},
                            {  x: 2.1, y: 2.1},
                            {  x: 2.9, y: 4.9},
                            {  x: 3.4, y: 3.0},
                            { x: 4.1, y: 3.3 }
                        ],
                        axis:[
                            {
                                key:"axisY",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.1,
                                    min:0,
                                }
                            },
                            {
                                key:"axisX",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.9,
                                    min:0,
                                }
                            }
                        ]
                    }
                    )

        // Spline
        localModel.append(
                    {
                        chart_supplier:"QT",  //提供商
                        chart_type:"Spline"   ,    //类型
                        chart_properties:{
                            title:"Spline"
                        },//ChartView 参数
                        chart_datas:[
                            { x: 0, y: 0},
                            {  x: 1.1, y: 2.1 },
                            {  x: 1.9, y: 3.3},
                            {  x: 2.1, y: 2.1},
                            {  x: 2.9, y: 4.9},
                            {  x: 3.4, y: 3.0},
                            { x: 4.1, y: 3.3 }
                        ],
                        axis:[
                            {
                                key:"axisY",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.1,
                                    min:0,
                                }
                            },
                            {
                                key:"axisX",//axisXTop,axisY,axisYRight,axisX
                                type:"ValueAxis",
                                properties:{
                                    max:4.9,
                                    min:0,
                                }
                            }
                        ]
                    }
                    )
    }
}
//axisX: BarCategoryAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
//BarSet { label: "Bob"; values: [2, 2, 3, 4, 5, 6] }
//BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 7] }
//BarSet { label: "James"; values: [3, 5, 8, 13, 5, 8] }
