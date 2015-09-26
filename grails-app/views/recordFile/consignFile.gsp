
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="row-fluid">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span></h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize" id='add-info'><i class="halflings-icon chevron-up"></i></a>

                </div>
            </div>

            <div class="box-content">
                <div>
                    <g:select name="district" id="districtSelect" from="${districtList}" optionKey="id" optionValue="name" noSelection="['': 'Select District']"></g:select>
                </div>
                <div id="subDivisionOfficeSelectDiv">

                </div>
            </div>
        </div>
    </div>
    <script>
        jQuery(document).ready(function() {
            jQuery(document).on('change', '#districtSelect', function() {
                var id = jQuery(this).val();
                jQuery.ajax({
                    url: '${createLink(controller: "subDivisionOffice", action: "fetchAllSubDivisionOfficeByDistrictId")}',
                    data: {id: id},
                    success: function (formHtml) {
                        jQuery("#subDivisionOfficeSelectDiv").html(formHtml);
                    }
                });
            });

        });
    </script>
    </body>
</html>
