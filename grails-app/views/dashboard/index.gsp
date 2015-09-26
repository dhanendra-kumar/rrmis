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
        margin: 10px;
        margin-left: 20px!important;
    }
    </style>



</head>
<body>
<div class="row-fluid sortable ui-sortable">
    <div class="box span9">
        <sec:ifAnyGranted roles="SUPER_ADMIN">
            <div class="row-fluid">
                <a href="${createLink(controller: "user", action: "index")}"
                   class="quick-button marginTop10 metro yellow span3">
                    <i class="icon-group"></i>

                    <p>Users</p>
                    <span class="badge">${userCount}</span>
                </a>
                <a href="${createLink(controller: "district", action: "index")}"
                   class="quick-button marginTop10 metro pink span3">
                    <i class="icon-table"></i>

                    <p>Districts</p>
                    <span class="badge">${districtCount}</span>
                </a>
                <a href="${createLink(controller: "subDivisionOffice", action: "index")}"
                   class="quick-button marginTop10 metro red span3">
                    <i class="icon-th-list"></i>

                    <p>Sub Division Offices</p>
                    <span class="badge">${subDivisionOfficeCount}</span>
                </a>
                <a href="${createLink(controller: "office", action: "index")}"
                   class="quick-button marginTop10 metro blue span3">
                    <i class="icon-asterisk"></i>

                    <p>Offices</p>
                    <span class="badge">${officeCount}</span>
                </a>
                <a href="${createLink(controller: "section", action: "index")}"
                   class="quick-button marginTop10 metro orange span3">
                    <i class="icon-th-large"></i>

                    <p>Sections</p>
                    <span class="badge">${sectionCount}</span>
                </a>
                <a href="${createLink(controller: "recordRoom", action: "index")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-columns"></i>

                    <p>Record Rooms</p>
                    <span class="badge">${recordRoomCount}</span>
                </a>
                <a href="${createLink(controller: "storeUnit", action: "index")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-download-alt"></i>

                    <p>Store Units</p>
                    <span class="badge">${storeUnitCount}</span>
                </a>
                <a href="${createLink(controller: "rack", action: "index")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-reorder"></i>

                    <p>Racks</p>
                    <span class="badge">${rackCount}</span>
                </a>
                <a href="${createLink(controller: "shelve", action: "index")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-hdd"></i>

                    <p>Shelves</p>
                    <span class="badge">${shelveCount}</span>
                </a>
                <a href="${createLink(controller: "recordFile", action: "generalRegister")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-file"></i>

                    <p>General Files</p>
                    <span class="badge">${generalFilesCount}</span>
                </a>
                <a href="${createLink(controller: "recordFile", action: "issuedRegister")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-share"></i>

                    <p>Issued Files</p>
                    <span class="badge">${issuedFilesCount}</span>
                </a>
                <a href="${createLink(controller: "recordFile", action: "issuedRegister")}"
                   class="quick-button marginTop10 metro green span3">
                    <i class="icon-copy"></i>

                    <p>Consigned Files</p>
                    <span class="badge">${consignedFilesCount}</span>
                </a>
                <div class="clearfix"></div>
            </div>
        </sec:ifAnyGranted>

    </div><!--/span-->

    <div class="box span3">
        <div data-original-title="" class="box-header">
            <h2>
                <i class="halflings-icon list"></i>
                <span class="break"></span>
                District List
            </h2>
        </div>
        <div class="box-content">
            <ul>
                <g:each in="${districtList}" var="district">
                    <li>
                        ${district?.name}
                    </li>
                </g:each>
            </ul>
            <a href="${createLink(controller: "district", action: "index")}">For more click me...</a>
        </div>
    </div><!--/span-->

    <div class="box span3">
        <div data-original-title="" class="box-header">
            <h2>
                <i class="halflings-icon list"></i>
                <span class="break"></span>
                Sub Division Office List
            </h2>
        </div>
        <div class="box-content">
            <ul>
                <g:each in="${subDivisionOfficeList}" var="subDivisionOffice">
                    <li>
                        ${subDivisionOffice?.name}
                    </li>
                </g:each>
            </ul>
            <a href="${createLink(controller: "subDivisionOffice", action: "index")}">For more click me...</a>
        </div>
    </div><!--/span-->

    <div class="box span3">
        <div data-original-title="" class="box-header">
            <h2>
                <i class="halflings-icon list"></i>
                <span class="break"></span>
                Office List
            </h2>
        </div>
        <div class="box-content">
            <ul>
                <g:each in="${officeList}" var="office">
                    <li>
                        ${office?.name}
                    </li>
                </g:each>
            </ul>
            <a href="${createLink(controller: "office", action: "index")}">For more click me...</a>
        </div>
    </div><!--/span-->



</div>
</body>
</html>