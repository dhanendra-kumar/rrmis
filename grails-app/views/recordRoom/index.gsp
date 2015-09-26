
<%@ page import="com.rrmis.RecordRoom" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordRoom.label', default: 'RecordRoom')}" />
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
<div class="nav" role="navigation">
    <ul class="breadcrumb">
        <li>
            <a class="btn btn-small btn-primary" href="${createLink(uri: '/')}">
                <i class="icon-home"></i>
                <g:message code="default.home.label"/>
            </a>
        </li>
        <sec:ifAnyGranted roles="SUPER_ADMIN">
            <li><g:link class="create btn btn-small btn-primary" action="create">
                <i class="icon-list-alt"></i>
                <g:message code="default.new.label" args="[entityName]" />
            </g:link>
            </li>
        </sec:ifAnyGranted>
    </ul>
		</div>
		<div id="list-recordRoom" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
			<thead>
					<tr>
                        <th>Id</th>
						<g:sortableColumn property="name" title="${message(code: 'recordRoom.name.label', default: 'Name')}" />
					
						<th><g:message code="recordRoom.office.label" default="Office" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recordRoomInstanceList}" status="i" var="recordRoomInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recordRoomInstance.id}">${fieldValue(bean: recordRoomInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: recordRoomInstance, field: "name")}</td>
					
						<td>${recordRoomInstance?.office?.name}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recordRoomInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
