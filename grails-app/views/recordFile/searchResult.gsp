
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
            <h1>Search File</h1>
            <div class="box-content">
                <g:form controller="recordFile" action="fetchResult">
                    <div onTablet="span6" onDesktop="span4">
                        <label>Name</label>
                        <input type="text" class="span4" name="name" id='name' placeholder="name to search file.">
                    </div>
                    <g:submitButton name="submitButton" value="Submit" />
                </g:form>

            </div>
        </div>
    </div>
    </body>
</html>
