
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="row-fluid sortable ui-sortable">
        <div class="box span12" style="min-height: 600px">
            <h1>File Path</h1>
            <div class="box-content">
                <div>
                    Sheleve: ${shelve?.name}
                </div>

                <div>
                    Rack:   ${shelve?.rack?.name}
                </div>

                <div>
                    Store Unit: ${shelve?.rack?.storeUnit?.name}
                </div>

                <div>
                    Record Room: ${shelve?.rack?.storeUnit?.recordRoom?.name}
                </div>

                <div>
                    Office: ${shelve?.rack?.storeUnit?.recordRoom?.office?.name}
                </div>

                <div>
                    Sub Division Office: ${shelve?.rack?.storeUnit?.recordRoom?.office?.subDivisionOffice?.name}
                </div>

                <div>
                    District: ${shelve?.rack?.storeUnit?.recordRoom?.office?.subDivisionOffice?.district?.name}
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
