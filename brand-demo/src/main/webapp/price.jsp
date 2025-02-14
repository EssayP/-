<%--
  Created by IntelliJ IDEA.
  User: 小屁的爱机
  Date: 2023/2/25
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="//unpkg.com/layui@2.6.8/dist/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="//unpkg.com/layui@2.6.8/dist/layui.js"></script>
    <!-- echarts -->
    <script src="./src/echarts.min.js"></script>
    <!-- jquery -->
    <script src="./src/jquery.min.js"></script>
    <title>Document</title>
    <style>
        body {
            background-color: rgb(141, 153, 204);
        }

        #main1 {
            width: 680px;
            height: 300px;
            background-color: rgba(237, 229, 229, 0.5);
            border-radius: 30px;
            position: absolute;
            top: 10px;
            margin: 10px;
            padding-top: 20px;
            padding-left: 20px;
        }

        #main1:hover,
        #main2:hover,
        #main3:hover,
        #info:hover {
            background-color: rgba(237, 229, 229, 0.8);
        }

        #main2 {
            width: 680px;
            height: 400px;
            position: absolute;
            background-color: rgba(237, 229, 229, 0.5);
            border-radius: 30px;
            margin: 10px;
            bottom: 10px;
            padding-top: 40px;
            padding-left: 30px;
        }

        #main3 {
            width: 810px;
            height: 400px;
            position: absolute;
            right: 20px;
            background-color: rgba(237, 229, 229, 0.5);
            border-radius: 30px;
            padding-top: 10px;
            margin-top: 10px;
        }

        .all {
            display: flex;
            flex-flow: row;
        }

        #info {
            background-color: rgba(237, 229, 229, 0.5);
            border-radius: 30px;
            width: 800px;
            height: 300px;
            position: absolute;
            right: 20px;
            bottom: 20px;
            padding: 20px;
            display: flex;
            flex-flow: row;
        }

        span {
            font-weight: bolder;
            font-size: larger;
        }

        ul li {
            line-height: 30px;
            text-align: center;
            font-size: 15px;
        }


        .infol {
            margin-left: 10px;
            margin-right: 80px;
        }
    </style>
</head>

<body>
<div class="all">
    <div class="left">
        <div id="main1"></div>
        <div id="main2"></div>
    </div>
    <div class="right">
        <div id="main3"></div>
        <div id="info">
            <span>最<br>新<br>消<br>息</span>
            <div class="infol">
                <ul class="list-unstyled" id="price_list">
                    <%--<li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.gov.cn/shuju/2021-08/18/content_5631840.htm"
                           target="_blank">上周食用农产品和生产资料价格略有上涨</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>--%>
                    <c:forEach items="${Address}" var="addr">
                        <c:if test="${addr.part==1}">
                            <li><a href="${addr.addr}"
                                   target="_blank">${addr.theme}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>

            </div>
            <div class="infor">
                <ul class="list-unstyled" id="price-list">
                    <%--<li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.gov.cn/shuju/2021-08/18/content_5631840.htm"
                           target="_blank">上周食用农产品和生产资料价格略有上涨</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915535.htm"
                           target="_blank">11月17日南方销区玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>
                    <li><a href="http://www.agri.cn/V20/SC/scjghq/gnhq/202211/t20221122_7915532.htm"
                           target="_blank">11月17日南北港口玉米价格行情</a>
                    </li>--%>

                        <c:forEach items="${Address}" var="addr">
                            <c:if test="${addr.part==1}">
                                <li><a href="${addr.addr}"
                                       target="_blank">${addr.theme}</a>
                                </li>
                            </c:if>
                        </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    var chartDom = document.getElementById('main1');
    var myChart = echarts.init(chartDom);
    console.log(myChart);
    var option;

    option = {
        title: {
            text: '小麦'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['Email', 'Union Ads', 'Video Ads', 'Direct', 'Search Engine']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: 'Email',
                type: 'line',
                stack: 'Total',
                data: [120, 132, 101, 134, 90, 230, 210]
            },
            {
                name: 'Union Ads',
                type: 'line',
                stack: 'Total',
                data: [220, 182, 191, 234, 290, 330, 310]
            },
            {
                name: 'Video Ads',
                type: 'line',
                stack: 'Total',
                data: [150, 232, 201, 154, 190, 330, 410]
            },
            {
                name: 'Direct',
                type: 'line',
                stack: 'Total',
                data: [320, 332, 301, 334, 390, 330, 320]
            },
            {
                name: 'Search Engine',
                type: 'line',
                stack: 'Total',
                data: [820, 932, 901, 934, 1290, 1330, 1320]
            }
        ]
    };

    option && myChart.setOption(option);
</script>
<script>
    var chartDom = document.getElementById('main2');
    var myChart = echarts.init(chartDom);
    console.log(myChart);
    var option;
    option = {
        title: {
            text: '稻谷',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'left'
        },
        series: [
            {
                name: 'Access From',
                type: 'pie',
                radius: '50%',
                data: [
                    { value: 1048, name: 'Search Engine' },
                    { value: 735, name: 'Direct' },
                    { value: 580, name: 'Email' },
                    { value: 484, name: 'Union Ads' },
                    { value: 300, name: 'Video Ads' }
                ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    option && myChart.setOption(option);
</script>

<script type="text/javascript">
    var dt = [
        { name: '芙蓉区', value: 40000.34, text: '价格：54412<br/>需求：468452.35万', selected: true },
        { name: '岳麓区', value: 38000, text: '价格：32412' },
        { name: '开福区', value: 18000, text: '价格：22412' },
        { name: '天心区', value: 15092, text: '价格：42412' },
        { name: '雨花区', value: 28000, text: '价格：52412' },
        { name: '望城区', value: 12000, text: '价格：72412' },
        { name: '长沙县', value: 32000, text: '价格：82412' },
        { name: '宁乡县', value: 5100, text: '价格：6412' },
        { name: '浏阳市', value: 2200, text: '价格：3412' },
        { name: '分中心', value: 4918, text: '价格：66412' }

    ];
    var option = {


        title: {
            text: '长沙市玉米价格',
            subtext: '各区县',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            type: 'cross',
            /*   backgroundColor:"#ff7f50",//提示标签背景颜色
             textStyle:{color:"#fff"}, //提示标签字体颜色
             formatter:function(param){
             return dt[param.dataIndex].name + "<br />" +dt[param.dataIndex].text;
             } */
            alwaysShowContent: false,
            bordeRadius: 4,
            borderWidth: 1,
            borderColor: 'rgba(0,0,0,0.2)',
            backgroundColor: 'rgba(255,255,255,0.9)',
            padding: 0,
            // position: "top",
            textStyle: {
                fontSize: 12,
                color: '#333'
            },
            formatter: function (params) {
                var color = "#FFB84D";
                var a = "<div style='background-color:" + color + ";padding: 5px 10px;text-align:center;color:white;font-size: 16px;'>" + dt[params.dataIndex].name + "</div>";
                var num = Math.ceil(params.data.name[1].length / 10);
                a += "<div style='padding:3px;'>";
                for (var i = 0; i < num; i++) {
                    a += dt[params.dataIndex].text + "<br>";
                }
                a += "</div>";

                return a;
            }


        },
        visualMap: {
            min: 800,
            max: 50000,
            text: ['High', 'Low'],
            x: 'left',
            y: 'center',
            realtime: false,
            calculable: true,
            inRange: {
                color: ['lightskyblue', 'yellow', 'orangered']
            }
        },
        toolbox: {
            show: true,
            orient: 'vertical',
            x: 'right',
            y: 'center',
            borderColor: '#FFF',       // 工具箱边框颜色
            borderWidth: 0,            // 工具箱边框线宽，单位px，默认为0（无边框）
            padding: 5,                // 工具箱内边距，单位px，默认各方向内边距为5，
            showTitle: false,
            feature: {
                saveAsImage: {
                    show: true,
                    title: '保存为图片',
                    type: 'jpeg'
                },
                restore: { show: true },
            }
        },
        series: [{
            name: '长沙',
            type: 'map',
            map: 'cs',
            // symbol:'../images/shine.jpg',
            //  symbolSize: 41,
            roam: true,
            label: {
                normal: {
                    show: true
                },
                emphasis: {
                    show: true
                }
            },

            layoutCenter: ['50%', '50%'],   //属性定义地图中心在屏幕中的位置，一般结合layoutSize 定义地图的大小
            //            layoutSize: 11200,
            itemStyle: {
                normal: { label: { show: true } },
                emphasis: { label: { show: true } }
            },
            data: dt
        }]
    };
    $.get('src/cs.json', function (csJson) {
        echarts.registerMap('cs', csJson);
        var chart = echarts.init(document.getElementById('main3'));
        chart.setOption(option);
    });
</script>

<!-- <script>

    var chartDom = document.getElementById('main3');
    var myChart = echarts.init(chartDom);
    var option;
    var ROOT_PATH = 'https://echarts.apache.org/examples';
    myChart.showLoading();
    $.get("https://geo.datav.aliyun.com/areas_v3/bound/810000_full.json", function (geoJson) {
        myChart.hideLoading();
        echarts.registerMap('HK', geoJson);
        myChart.setOption(
            (option = {
                title: {
                    text: 'Population Density of Hong Kong （2011）',
                    subtext: 'Data from Wikipedia',
                    sublink:
                        'http://zh.wikipedia.org/wiki/%E9%A6%99%E6%B8%AF%E8%A1%8C%E6%94%BF%E5%8D%80%E5%8A%83#cite_note-12'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: '{b}<br/>{c} (p / km2)'
                },
                toolbox: {
                    show: true,
                    orient: 'vertical',
                    left: 'right',
                    top: 'center',
                    feature: {
                        dataView: { readOnly: false },
                        restore: {},
                        saveAsImage: {}
                    }
                },
                visualMap: {
                    min: 800,
                    max: 50000,
                    text: ['High', 'Low'],
                    realtime: false,
                    calculable: true,
                    inRange: {
                        color: ['lightskyblue', 'yellow', 'orangered']
                    }
                },
                series: [
                    {
                        name: '香港18区人口密度',
                        type: 'map',
                        map: 'HK',
                        label: {
                            show: true
                        },
                        data: [
                            { name: '中西区', value: 20057.34 },
                            { name: '湾仔', value: 15477.48 },
                            { name: '东区', value: 31686.1 },
                            { name: '南区', value: 6992.6 },
                            { name: '油尖旺', value: 44045.49 },
                            { name: '深水埗', value: 40689.64 },
                            { name: '九龙城', value: 37659.78 },
                            { name: '黄大仙', value: 45180.97 },
                            { name: '观塘', value: 55204.26 },
                            { name: '葵青', value: 21900.9 },
                            { name: '荃湾', value: 4918.26 },
                            { name: '屯门', value: 5881.84 },
                            { name: '元朗', value: 4178.01 },
                            { name: '北区', value: 2227.92 },
                            { name: '大埔', value: 2180.98 },
                            { name: '沙田', value: 9172.94 },
                            { name: '西贡', value: 3368 },
                            { name: '离岛', value: 806.98 }
                        ],
                        // 自定义名称映射
                        nameMap: {
                            'Central and Western': '中西区',
                            Eastern: '东区',
                            Islands: '离岛',
                            'Kowloon City': '九龙城',
                            'Kwai Tsing': '葵青',
                            'Kwun Tong': '观塘',
                            North: '北区',
                            'Sai Kung': '西贡',
                            'Sha Tin': '沙田',
                            'Sham Shui Po': '深水埗',
                            Southern: '南区',
                            'Tai Po': '大埔',
                            'Tsuen Wan': '荃湾',
                            'Tuen Mun': '屯门',
                            'Wan Chai': '湾仔',
                            'Wong Tai Sin': '黄大仙',
                            'Yau Tsim Mong': '油尖旺',
                            'Yuen Long': '元朗'
                        }
                    }
                ]
            })
        );
    });

    option && myChart.setOption(option);

</script> -->

</html>
