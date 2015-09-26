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
    <style>
    .marginTop10 {
        margin-top: 10px;
        margin-left: 20px!important;
    }
    </style>



</head>
<body>
<sec:ifAnyGranted roles="SUPER_ADMIN">
<div class="row-fluid">

    <a href="${createLink(controller: "user", action: "index")}" class="quick-button marginTop10 metro yellow span2">
        <i class="icon-group"></i>
        <p>Users</p>
        <span class="badge">${userCount}</span>
    </a>
    <a href="${createLink(controller: "district", action: "index")}" class="quick-button marginTop10 metro pink span2">
        <i class="icon-table"></i>
        <p>Districts</p>
        <span class="badge">${districtCount}</span>
    </a>
    <a href="${createLink(controller: "subDivisionOffice", action: "index")}" class="quick-button marginTop10 metro red span2">
        <i class="icon-th-list"></i>
        <p>Sub Division Offices</p>
        <span class="badge">${subDivisionOfficeCount}</span>
    </a>
    <a href="${createLink(controller: "office", action: "index")}" class="quick-button marginTop10 metro blue span2">
        <i class="icon-asterisk"></i>
        <p>Offices</p>
        <span class="badge">${officeCount}</span>
    </a>
    <a href="${createLink(controller: "section", action: "index")}" class="quick-button marginTop10 metro orange span2">
        <i class="icon-th-large"></i>
        <p>Sections</p>
        <span class="badge">${sectionCount}</span>
    </a>
    <a href="${createLink(controller: "recordRoom", action: "index")}" class="quick-button marginTop10 metro green span2">
        <i class="icon-columns"></i>
        <p>Record Rooms</p>
        <span class="badge">${recordRoomCount}</span>
    </a>
    <a href="${createLink(controller: "storeUnit", action: "index")}" class="quick-button marginTop10 metro green span2">
        <i class="icon-download-alt"></i>
        <p>Store Units</p>
        <span class="badge">${storeUnitCount}</span>
    </a>
    <a href="${createLink(controller: "rack", action: "index")}" class="quick-button marginTop10 metro green span2">
        <i class="icon-reorder"></i>
        <p>Racks</p>
        <span class="badge">${rackCount}</span>
    </a>
    <a href="${createLink(controller: "shelve", action: "index")}" class="quick-button marginTop10 metro green span2">
        <i class="icon-hdd"></i>
        <p>Shelves</p>
        <span class="badge">${shelveCount}</span>
    </a>

    <div class="clearfix"></div>
</div>
</sec:ifAnyGranted>
</body>
</html>