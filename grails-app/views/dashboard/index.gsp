<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 26/9/15
  Time: 2:26 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Dashboard</title>
</head>
<body>


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="index.html">Home</a>
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="#">Dashboard</a></li>
    </ul>

    <div class="row-fluid">

        <div ondesktop="span3" ontablet="span6" class="span3 statbox purple">
            <div class="boxchart"><canvas style="display: inline-block; width: 64px; height: 60px; vertical-align: top;" width="64" height="60"></canvas></div>
            <div class="number">854<i class="icon-arrow-up"></i></div>
            <div class="title">visits</div>
            <div class="footer">
                <a href="#"> read full report</a>
            </div>
        </div>
        <div ondesktop="span3" ontablet="span6" class="span3 statbox green">
            <div class="boxchart"><canvas style="display: inline-block; width: 64px; height: 60px; vertical-align: top;" width="64" height="60"></canvas></div>
            <div class="number">123<i class="icon-arrow-up"></i></div>
            <div class="title">sales</div>
            <div class="footer">
                <a href="#"> read full report</a>
            </div>
        </div>
        <div ondesktop="span3" ontablet="span6" class="span3 statbox blue noMargin">
            <div class="boxchart"><canvas style="display: inline-block; width: 64px; height: 60px; vertical-align: top;" width="64" height="60"></canvas></div>
            <div class="number">982<i class="icon-arrow-up"></i></div>
            <div class="title">orders</div>
            <div class="footer">
                <a href="#"> read full report</a>
            </div>
        </div>
        <div ondesktop="span3" ontablet="span6" class="span3 statbox yellow">
            <div class="boxchart"><canvas style="display: inline-block; width: 69px; height: 60px; vertical-align: top;" width="69" height="60"></canvas></div>
            <div class="number">678<i class="icon-arrow-down"></i></div>
            <div class="title">visits</div>
            <div class="footer">
                <a href="#"> read full report</a>
            </div>
        </div>

    </div>

    <div class="row-fluid">

        <div ondesktop="span8" ontablet="span7" class="span8 widget blue">

            <div style="height: 282px; padding: 0px; position: relative;" id="stats-chart2"><canvas class="base" width="995" height="282"></canvas><canvas class="overlay" width="995" height="282" style="position: absolute; left: 0px; top: 0px;"></canvas><div style="font-size:smaller" class="tickLabels"><div style="color:rgba(255,255,255,0.8)" class="xAxis x1Axis"><div style="position:absolute;text-align:center;left:40px;top:262px;width:58px" class="tickLabel">2</div><div style="position:absolute;text-align:center;left:106px;top:262px;width:58px" class="tickLabel">4</div><div style="position:absolute;text-align:center;left:172px;top:262px;width:58px" class="tickLabel">6</div><div style="position:absolute;text-align:center;left:238px;top:262px;width:58px" class="tickLabel">8</div><div style="position:absolute;text-align:center;left:303px;top:262px;width:58px" class="tickLabel">10</div><div style="position:absolute;text-align:center;left:369px;top:262px;width:58px" class="tickLabel">12</div><div style="position:absolute;text-align:center;left:435px;top:262px;width:58px" class="tickLabel">14</div><div style="position:absolute;text-align:center;left:500px;top:262px;width:58px" class="tickLabel">16</div><div style="position:absolute;text-align:center;left:566px;top:262px;width:58px" class="tickLabel">18</div><div style="position:absolute;text-align:center;left:632px;top:262px;width:58px" class="tickLabel">20</div><div style="position:absolute;text-align:center;left:698px;top:262px;width:58px" class="tickLabel">22</div><div style="position:absolute;text-align:center;left:763px;top:262px;width:58px" class="tickLabel">24</div><div style="position:absolute;text-align:center;left:829px;top:262px;width:58px" class="tickLabel">26</div><div style="position:absolute;text-align:center;left:895px;top:262px;width:58px" class="tickLabel">28</div><div style="position:absolute;text-align:center;left:960px;top:262px;width:58px" class="tickLabel">30</div></div><div style="color:rgba(255,255,255,0.8)" class="yAxis y1Axis"><div style="position:absolute;text-align:right;top:247px;right:965px;width:30px" class="tickLabel">0</div><div style="position:absolute;text-align:right;top:196px;right:965px;width:30px" class="tickLabel">10000</div><div style="position:absolute;text-align:right;top:146px;right:965px;width:30px" class="tickLabel">20000</div><div style="position:absolute;text-align:right;top:95px;right:965px;width:30px" class="tickLabel">30000</div><div style="position:absolute;text-align:right;top:45px;right:965px;width:30px" class="tickLabel">40000</div><div style="position:absolute;text-align:right;top:-6px;right:965px;width:30px" class="tickLabel">50000</div></div></div></div>

        </div>

        <div ondesktop="span4" ontablet="span5" class="sparkLineStats span4 widget green">

            <ul class="unstyled">

                <li><span class="sparkLineStats3"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    Pageviews:
                    <span class="number">781</span>
                </li>
                <li><span class="sparkLineStats4"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    Pages / Visit:
                    <span class="number">2,19</span>
                </li>
                <li><span class="sparkLineStats5"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    Avg. Visit Duration:
                    <span class="number">00:02:58</span>
                </li>
                <li><span class="sparkLineStats6"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    Bounce Rate: <span class="number">59,83%</span>
                </li>
                <li><span class="sparkLineStats7"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    % New Visits:
                    <span class="number">70,79%</span>
                </li>
                <li><span class="sparkLineStats8"><canvas style="display: inline-block; width: 80px; height: 40px; vertical-align: top;" width="80" height="40"></canvas></span>
                    % Returning Visitor:
                    <span class="number">29,21%</span>
                </li>

            </ul>

            <div class="clearfix"></div>

        </div><!-- End .sparkStats -->

    </div>

    <div class="row-fluid hideInIE8 circleStats">

        <div ondesktop="span2" ontablet="span4" class="span2">
            <div class="circleStatsItemBox yellow">
                <div class="header">Disk Space Usage</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="58" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">29000</span>
                        <span class="unit">MB</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">50000</span>
                        <span class="unit">MB</span>
                    </span>
                </div>
            </div>
        </div>

        <div ondesktop="span2" ontablet="span4" class="span2">
            <div class="circleStatsItemBox green">
                <div class="header">Bandwidth</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="78" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">3900</span>
                        <span class="unit">GB</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">5000</span>
                        <span class="unit">GB</span>
                    </span>
                </div>
            </div>
        </div>

        <div ondesktop="span2" ontablet="span4" class="span2">
            <div class="circleStatsItemBox greenDark">
                <div class="header">Memory</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="100" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                </div>
            </div>
        </div>

        <div ondesktop="span2" ontablet="span4" class="span2 noMargin">
            <div class="circleStatsItemBox pink">
                <div class="header">CPU</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="83" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">3</span>
                        <span class="unit">GHz</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">3.2</span>
                        <span class="unit">GHz</span>
                    </span>
                </div>
            </div>
        </div>

        <div ondesktop="span2" ontablet="span4" class="span2">
            <div class="circleStatsItemBox orange">
                <div class="header">Memory</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="100" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                </div>
            </div>
        </div>

        <div ondesktop="span2" ontablet="span4" class="span2">
            <div class="circleStatsItemBox greenLight">
                <div class="header">Memory</div>
                <span class="percent">percent</span>
                <div class="circleStat">
                    <div style="width:120px;display:inline;&quot;"><canvas height="120" width="120"></canvas><input type="text" class="whiteCircle" value="100" style="width: 60px; position: absolute; margin-top: 42.8571px; margin-left: -90px; font-size: 30px; border: medium none; background: none repeat scroll 0% 0% transparent; font-family: Arial; font-weight: bold; text-align: center; color: rgba(255, 255, 255, 0.9); padding: 0px;" readonly="readonly"></div>
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                    <span class="sep"> / </span>
                    <span class="value">
                        <span class="number">64</span>
                        <span class="unit">GB</span>
                    </span>
                </div>
            </div>
        </div>

    </div>

    <div class="row-fluid">

        <div ondesktop="span5" ontablet="span6" class="widget blue span5">

            <h2><span class="glyphicons globe"><i></i></span> Demographics</h2>

            <hr>

            <div class="content">

                <div class="verticalChart">

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 37%;">
                                <span style="display: inline;">37%</span>
                            </div>

                        </div>

                        <div class="title">US</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 16%;">
                                <span style="display: inline;">16%</span>
                            </div>

                        </div>

                        <div class="title">PL</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 12%;">
                                <span style="display: inline;">12%</span>
                            </div>

                        </div>

                        <div class="title">GB</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 9%;">
                                <span style="display: inline;">9%</span>
                            </div>

                        </div>

                        <div class="title">DE</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 7%;">
                                <span style="display: inline;">7%</span>
                            </div>

                        </div>

                        <div class="title">NL</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 6%;">
                                <span style="display: inline;">6%</span>
                            </div>

                        </div>

                        <div class="title">CA</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 5%;">
                                <span style="display: inline;">5%</span>
                            </div>

                        </div>

                        <div class="title">FI</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 4%;">
                                <span style="display: inline;">4%</span>
                            </div>

                        </div>

                        <div class="title">RU</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 3%;">
                                <span style="display: inline;">3%</span>
                            </div>

                        </div>

                        <div class="title">AU</div>

                    </div>

                    <div class="singleBar">

                        <div class="bar">

                            <div class="value" style="height: 1%;">
                                <span style="display: inline;">1%</span>
                            </div>

                        </div>

                        <div class="title">N/A</div>

                    </div>

                    <div class="clearfix"></div>

                </div>

            </div>

        </div><!--/span-->

        <div ondesktop="span3" ontablet="span6" class="widget span3 red">

            <h2><span class="glyphicons pie_chart"><i></i></span> Browsers</h2>

            <hr>

            <div class="content">

                <div class="browserStat big">
                    <img alt="Chrome" src="img/browser-chrome-big.png">
                    <span>34%</span>
                </div>
                <div class="browserStat big">
                    <img alt="Firefox" src="img/browser-firefox-big.png">
                    <span>34%</span>
                </div>
                <div class="browserStat">
                    <img alt="Internet Explorer" src="img/browser-ie.png">
                    <span>34%</span>
                </div>
                <div class="browserStat">
                    <img alt="Safari" src="img/browser-safari.png">
                    <span>34%</span>
                </div>
                <div class="browserStat">
                    <img alt="Opera" src="img/browser-opera.png">
                    <span>34%</span>
                </div>


            </div>
        </div>

        <div ondesktop="span4" ontablet="span12" class="widget yellow span4 noMargin">
            <h2><span class="glyphicons fire"><i></i></span> Server Load</h2>
            <hr>
            <div class="content">
                <div style="height: 224px; padding: 0px; position: relative;" id="serverLoad2"><canvas class="base" width="468" height="224"></canvas><canvas class="overlay" width="468" height="224" style="position: absolute; left: 0px; top: 0px;"></canvas><div style="font-size:smaller" class="tickLabels"><div style="color:rgba(255,255,255,0.8)" class="yAxis y1Axis"><div style="position:absolute;text-align:right;top:210px;right:441px;width:27px" class="tickLabel">0%</div><div style="position:absolute;text-align:right;top:167px;right:441px;width:27px" class="tickLabel">20%</div><div style="position:absolute;text-align:right;top:124px;right:441px;width:27px" class="tickLabel">40%</div><div style="position:absolute;text-align:right;top:80px;right:441px;width:27px" class="tickLabel">60%</div><div style="position:absolute;text-align:right;top:37px;right:441px;width:27px" class="tickLabel">80%</div><div style="position:absolute;text-align:right;top:-6px;right:441px;width:27px" class="tickLabel">100%</div></div></div></div>
            </div>
        </div>

    </div>

    <div class="row-fluid">

        <div ondesktop="span4" ontablet="span6" class="box black span4">
            <div class="box-header">
                <h2><i class="halflings-icon white list"></i><span class="break"></span>Weekly Stat</h2>
                <div class="box-icon">
                    <a class="btn-minimize" href="#"><i class="halflings-icon white chevron-up"></i></a>
                    <a class="btn-close" href="#"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <ul class="dashboard-list metro">
                    <li>
                        <a href="#">
                            <i class="icon-arrow-up green"></i>
                            <strong>92</strong>
                            New Comments
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-arrow-down red"></i>
                            <strong>15</strong>
                            New Registrations
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-minus blue"></i>
                            <strong>36</strong>
                            New Articles
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-comment yellow"></i>
                            <strong>45</strong>
                            User reviews
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-arrow-up green"></i>
                            <strong>112</strong>
                            New Comments
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-arrow-down red"></i>
                            <strong>31</strong>
                            New Registrations
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-minus blue"></i>
                            <strong>93</strong>
                            New Articles
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="icon-comment yellow"></i>
                            <strong>256</strong>
                            User reviews
                        </a>
                    </li>
                </ul>
            </div>
        </div><!--/span-->

        <div ondesktop="span4" ontablet="span6" class="box black span4">
            <div class="box-header">
                <h2><i class="halflings-icon white user"></i><span class="break"></span>Last Users</h2>
                <div class="box-icon">
                    <a class="btn-minimize" href="#"><i class="halflings-icon white chevron-up"></i></a>
                    <a class="btn-close" href="#"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <ul class="dashboard-list metro">
                    <li class="green">
                        <a href="#">
                            <img src="img/avatar.jpg" alt="Dennis Ji" class="avatar">
                        </a>
                        <strong>Name:</strong> Dennis Ji<br>
                        <strong>Since:</strong> Jul 25, 2012 11:09<br>
                        <strong>Status:</strong> Approved
                    </li>
                    <li class="yellow">
                        <a href="#">
                            <img src="img/avatar.jpg" alt="Dennis Ji" class="avatar">
                        </a>
                        <strong>Name:</strong> Dennis Ji<br>
                        <strong>Since:</strong> Jul 25, 2012 11:09<br>
                        <strong>Status:</strong> Pending
                    </li>
                    <li class="red">
                        <a href="#">
                            <img src="img/avatar.jpg" alt="Dennis Ji" class="avatar">
                        </a>
                        <strong>Name:</strong> Dennis Ji<br>
                        <strong>Since:</strong> Jul 25, 2012 11:09<br>
                        <strong>Status:</strong> Banned
                    </li>
                    <li class="blue">
                        <a href="#">
                            <img src="img/avatar.jpg" alt="Dennis Ji" class="avatar">
                        </a>
                        <strong>Name:</strong> Dennis Ji<br>
                        <strong>Since:</strong> Jul 25, 2012 11:09<br>
                        <strong>Status:</strong> Updated
                    </li>
                </ul>
            </div>
        </div><!--/span-->

        <div ondesktop="span4" ontablet="span12" class="box black span4 noMargin">
            <div class="box-header">
                <h2><i class="halflings-icon white check"></i><span class="break"></span>To Do List</h2>
                <div class="box-icon">
                    <a class="btn-setting" href="#"><i class="halflings-icon white wrench"></i></a>
                    <a class="btn-minimize" href="#"><i class="halflings-icon white chevron-up"></i></a>
                    <a class="btn-close" href="#"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="todo metro">
                    <ul class="todo-list">
                        <li class="red">
                            <a href="#" class="action icon-check-empty"></a>
                            Windows Phone 8 App
                            <strong>today</strong>
                        </li>
                        <li class="red">
                            <a href="#" class="action icon-check-empty"></a>
                            New frontend layout
                            <strong>today</strong>
                        </li>
                        <li class="yellow">
                            <a href="#" class="action icon-check-empty"></a>
                            Hire developers
                            <strong>tommorow</strong>
                        </li>
                        <li class="yellow">
                            <a href="#" class="action icon-check-empty"></a>
                            Windows Phone 8 App
                            <strong>tommorow</strong>
                        </li>
                        <li class="green">
                            <a href="#" class="action icon-check-empty"></a>
                            New frontend layout
                            <strong>this week</strong>
                        </li>
                        <li class="green">
                            <a href="#" class="action icon-check-empty"></a>
                            Hire developers
                            <strong>this week</strong>
                        </li>
                        <li class="blue">
                            <a href="#" class="action icon-check-empty"></a>
                            New frontend layout
                            <strong>this month</strong>
                        </li>
                        <li class="blue">
                            <a href="#" class="action icon-check-empty"></a>
                            Hire developers
                            <strong>this month</strong>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <div class="row-fluid">

        <a class="quick-button metro yellow span2">
            <i class="icon-group"></i>
            <p>Users</p>
            <span class="badge">237</span>
        </a>
        <a class="quick-button metro red span2">
            <i class="icon-comments-alt"></i>
            <p>Comments</p>
            <span class="badge">46</span>
        </a>
        <a class="quick-button metro blue span2">
            <i class="icon-shopping-cart"></i>
            <p>Orders</p>
            <span class="badge">13</span>
        </a>
        <a class="quick-button metro green span2">
            <i class="icon-barcode"></i>
            <p>Products</p>
        </a>
        <a class="quick-button metro pink span2">
            <i class="icon-envelope"></i>
            <p>Messages</p>
            <span class="badge">88</span>
        </a>
        <a class="quick-button metro black span2">
            <i class="icon-calendar"></i>
            <p>Calendar</p>
        </a>

        <div class="clearfix"></div>

    </div><!--/row-->



</body>
</html>