<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
    <asset:stylesheet src="bootstrap-responsive.min.css"></asset:stylesheet>
    <asset:stylesheet src="style.css"></asset:stylesheet>
    <asset:stylesheet src="style-responsive.css"></asset:stylesheet>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>

    <asset:javascript src="jquery-1.9.1.min.js"></asset:javascript>
    <asset:javascript src="jquery-migrate-1.0.0.min.js"></asset:javascript>
    <asset:javascript src="jquery-ui-1.10.0.custom.min.js"></asset:javascript>
    <asset:javascript src="jquery.ui.touch-punch.js"></asset:javascript>
    <asset:javascript src="modernizr.js"></asset:javascript>
    <asset:javascript src="bootstrap.min.js"></asset:javascript>
    <asset:javascript src="jquery.cookie.js"></asset:javascript>
    <asset:javascript src="fullcalendar.min.js"></asset:javascript>
    <asset:javascript src="jquery.dataTables.min.js"></asset:javascript>
    <asset:javascript src="excanvas.js"></asset:javascript>
    <asset:javascript src="jquery.flot.js"></asset:javascript>
    <asset:javascript src="jquery.flot.pie.js"></asset:javascript>
    <asset:javascript src="jquery.flot.stack.js"></asset:javascript>
    <asset:javascript src="jquery.flot.resize.min.js"></asset:javascript>
    <asset:javascript src="jquery.chosen.min.js"></asset:javascript>
    <asset:javascript src="jquery.uniform.min.js"></asset:javascript>
    <asset:javascript src="jquery.cleditor.min.js"></asset:javascript>
    <asset:javascript src="jquery.noty.js"></asset:javascript>
    <asset:javascript src="jquery.elfinder.min.js"></asset:javascript>
    <asset:javascript src="jquery.raty.min.js"></asset:javascript>
    <asset:javascript src="jquery.iphone.toggle.js"></asset:javascript>
    <asset:javascript src="jquery.uploadify-3.1.min.js"></asset:javascript>
    <asset:javascript src="jquery.gritter.min.js"></asset:javascript>
    <asset:javascript src="jquery.imagesloaded.js"></asset:javascript>
    <asset:javascript src="jquery.masonry.min.js"></asset:javascript>
    <asset:javascript src="jquery.knob.modified.js"></asset:javascript>
    <asset:javascript src="jquery.sparkline.min.js"></asset:javascript>
    <asset:javascript src="counter.js"></asset:javascript>
    <asset:javascript src="retina.js"></asset:javascript>
    <asset:javascript src="custom.js"></asset:javascript>

    <g:layoutHead/>

</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.html"><span>RRMIS</span></a>

            <!-- start: Header Menu -->
            <div class="nav-no-collapse header-nav">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="halflings-icon white user"></i> <sec:username />
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-menu-title">
                                <span>Account Settings</span>
                            </li>
                            <li>
                                <a href="${createLink(controller: "user", action: "showProfile")}">
                                    <i class="halflings-icon user"></i> Profile
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(controller: "logout", action: "index")}">
                                    <i class="halflings-icon off"></i> Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: User Dropdown -->
                </ul>
            </div>
            <!-- end: Header Menu -->

        </div>
    </div>
</div>
<!-- start: Header -->

<div class="container-fluid-full">
    <div class="row-fluid">

        <!-- start: Main Menu -->
        <div id="sidebar-left" class="span2">
            <div class="nav-collapse sidebar-nav">
                %{--todo: menu for branch clerk --}%

                <ul class="nav nav-tabs nav-stacked main-menu">
                    <li>
                        <a href="${createLink(controller: "dashboard", action: "index")}">
                            <i class="halflings-icon white qrcode"></i><span class="hidden-tablet"> Dashboard</span>
                        </a>
                    </li>

                <sec:ifAnyGranted roles="SUPER_ADMIN,BRANCH_CLERK">
                    <li>
                        <a href="${createLink(controller: "recordFile", action: "consignFile")}">
                            <i class="halflings-icon white file"></i><span class="hidden-tablet"> Consign File</span></a>
                    </li>
                </sec:ifAnyGranted>

                <sec:ifAnyGranted roles="SUPER_ADMIN,RECORD_ROOM_ADMIN">
                    <li>
                        <a class="dropmenu" href="#"><i class="icon-user"></i><span class="hidden-tablet"> Manage Location</span></a>
                        <ul>
                            <li>
                                <a class="submenu" href="${createLink(controller: "storeUnit", action: "index")}">
                                    <i class="halflings-icon white user"></i>
                                    <span class="hidden-tablet"> Storing Units</span>
                                </a>
                            </li>
                            <li>
                                <a class="submenu" href="${createLink(controller: "rack", action: "index")}">
                                    <i class="halflings-icon white user"></i>
                                    <span class="hidden-tablet"> Racks/Almira</span>
                                </a>
                            </li>
                            <li>
                                <a class="submenu" href="${createLink(controller: "shelve", action: "index")}">
                                    <i class="halflings-icon white user"></i>
                                    <span class="hidden-tablet"> Shelve</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </sec:ifAnyGranted>


                    <li>
                        <a class="dropmenu" href="#"><i class="halflings-icon white th-list"></i><span class="hidden-tablet"> File Register</span></a>
                        <ul>
                            <li>
                                <a class="submenu" href="${createLink(controller: "recordFile", action: "generalRegister")}">
                                    <i class="halflings-icon white user"></i>
                                    <span class="hidden-tablet"> General Register </span>
                                </a>
                            </li>
                            <li>
                                <a class="submenu" href="${createLink(controller: "recordFile", action: "issuedRegister")}">
                                    <i class="halflings-icon white list"></i>
                                    <span class="hidden-tablet"> Issued Register </span>
                                </a>
                            </li>
                        </ul>
                    </li>


                <sec:ifAnyGranted roles="SUPER_ADMIN,BRANCH_CLERK">
                    <li>
                        <a class="dropmenu" href="#"><i class="halflings-icon white list-alt"></i><span class="hidden-tablet"> Reports</span></a>
                        <ul>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Consigned Detail Reports  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Due Disposal Register  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Disposed File Register  </span></a></li>
                        </ul>
                    </li>
                </sec:ifAnyGranted>

                <sec:ifAnyGranted roles="SUPER_ADMIN,RECORD_ROOM_ADMIN,RECORD_ROOM_CLERK">
                    <li>
                        <a class="dropmenu" href="#"><i class="icon-user"></i><span class="hidden-tablet"> Summary Reports</span></a>
                        <ul>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Stock File Summary  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Issue File Summary  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Disposal Due Summary  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Disposal Permission  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Issued Detail Reports  </span></a></li>
                            <li><a class="submenu" href="#"><i class="halflings-icon white user"></i><span class="hidden-tablet"> Return Detail Reports  </span></a></li>
                        </ul>
                    </li>
                </sec:ifAnyGranted>

                <sec:ifAnyGranted roles="SUPER_ADMIN">
                    <li>
                        <a href="${createLink(controller: "district", action: "index")}">
                            <i class="icon-table"></i>
                            <span class="hidden-tablet"> District</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "subDivisionOffice", action: "index")}">
                            <i class="icon-th-list"></i>
                            <span class="hidden-tablet"> Sub Division Office</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "office", action: "index")}">
                            <i class="icon-asterisk"></i>
                            <span class="hidden-tablet"> Office</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "section", action: "index")}">
                            <i class="icon-th-large"></i>
                            <span class="hidden-tablet"> Section</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "recordRoom", action: "index")}">
                            <i class="icon-columns"></i>
                            <span class="hidden-tablet"> Record Room</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "storeUnit", action: "index")}">
                            <i class="icon-download-alt"></i>
                            <span class="hidden-tablet"> Store Unit</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "rack", action: "index")}">
                            <i class="icon-reorder"></i>
                            <span class="hidden-tablet"> Rack</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "shelve", action: "index")}">
                            <i class="icon-hdd"></i>
                            <span class="hidden-tablet"> Shelve</span>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: "user", action: "index")}">
                            <i class="icon-group"></i>
                            <span class="hidden-tablet"> Users</span>
                        </a>
                    </li>
                </sec:ifAnyGranted>
                </ul>




                %{--<ul class="nav nav-tabs nav-stacked main-menu">--}%
                    %{--<li><a href="index.html"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>--}%
                    %{--<li><a href="messages.html"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>--}%
                    %{--<li><a href="tasks.html"><i class="icon-tasks"></i><span class="hidden-tablet"> Tasks</span></a></li>--}%
                    %{--<li><a href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>--}%
                    %{--<li><a href="widgets.html"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>--}%
                    %{--<li>--}%
                        %{--<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a>--}%
                        %{--<ul>--}%
                            %{--<li><a class="submenu" href="submenu.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>--}%
                            %{--<li><a class="submenu" href="submenu2.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>--}%
                            %{--<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>--}%
                        %{--</ul>--}%
                    %{--</li>--}%
                    %{--<li><a href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>--}%
                    %{--<li><a href="chart.html"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>--}%
                    %{--<li><a href="typography.html"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>--}%
                    %{--<li><a href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>--}%
                    %{--<li><a href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>--}%
                    %{--<li><a href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>--}%
                    %{--<li><a href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>--}%
                    %{--<li><a href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>--}%
                    %{--<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>--}%
                %{--</ul>--}%
            </div>
        </div>
        <!-- end: Main Menu -->

        <noscript>
            <div class="alert alert-block span10">
                <h4 class="alert-heading">Warning!</h4>
                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
            </div>
        </noscript>

        <!-- start: Content -->
        <div id="content" class="span10">

            <g:layoutBody/>

        </div><!--/.fluid-container-->

    <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

<div class="modal hide fade" id="myModal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Settings</h3>
    </div>
    <div class="modal-body">
        <p>Here settings can be configured...</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>
    </div>
</div>

<div class="clearfix"></div>

<footer>

    <p>
        <span style="text-align:left;float:left">&copy; 2015 <a href="#" alt="By Dhanendra Kumar, Malik Khan">RRMIS</a></span>

    </p>

</footer>


</body>
</html>

