
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="row-fluid" style="margin-top: 10%">
        <div class="span3"></div>
        <div class="span9" style="min-height: 600px">
            <h1>Search File</h1>
            <div class="box-content">
                <g:form controller="recordFile" action="fetchResult">
                    <div class="span6" onTablet="span6" onDesktop="span6">
                        <div class="control-group">
                            <label class="control-label" for="appendedInputButton"></label>
                            <div class="controls">
                                <div class="input-append">
                                    <input  class="span12" name="name" id='name' type="text" size="30" placeholder="Name to Search File" style="height: 35px">
                                    <g:submitButton class="btn" name="submitButton" value="Search" />

                                </div>
                            </div>
                        </div>


                    </div>

                </g:form>

            </div>
        </div>
    </div>
    </body>
</html>
