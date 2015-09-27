
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="dataTables.bootstrap.css"></asset:stylesheet>
        <asset:stylesheet src="jquery.dataTables.css"></asset:stylesheet>
        <script>
            jQuery(document).ready(function(){
                $('#user-list-table').DataTable();
            });
        </script>
	</head>
	<body>
		%{--<a href="#list-recordFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
            <ul class="breadcrumb">
                <li>
                    <a class="btn btn-small btn-primary" href="${createLink(uri: '/')}">
                        <i class="icon-home"></i>
                        <g:message code="default.home.label"/>
                    </a>
                </li>

            </ul>
		</div>
		<div id="list-recordFile" class="content scaffold-list" role="main">
			<h1>
                <g:if test="${heading}">
                    ${heading}
                </g:if>
                <g:else>
                    <g:message code="default.list.label" args="[entityName]" />
                </g:else>
            </h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
			<thead>
					<tr>
                        <td>Id</td>
                        <td>${message(code: 'recordFile.name.label', default: 'Name')}</td>
                        <td>${message(code: 'recordFile.fileNumber.label', default: 'File Number')}</td>
                        <td>${message(code: 'recordFile.subject.label', default: 'Subject')}</td>
                        <td>${message(code: 'recordFile.consignDate.label', default: 'Consign Date')}</td>
                        <td>${message(code: 'recordFile.totalPage.label', default: 'Total Page')}</td>

                        <td>Action</td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recordFileInstanceList}" status="i" var="recordFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recordFileInstance.id}">${fieldValue(bean: recordFileInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "fileNumber")}</td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "subject")}</td>
					
						<td><g:formatDate date="${recordFileInstance.consignDate}" /></td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "totalPage")}</td>

                        <td>
                            <a href="${createLink(controller: "recordFile", action: "showPath")}/${recordFileInstance.id}">
                                <i class="icon-road"></i><i class="icon-search"></i>
                            </a>
                        </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recordFileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
