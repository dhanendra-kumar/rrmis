
<%@ page import="com.rrmis.Office" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'office.label', default: 'Office')}" />
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
		<div id="list-office" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'office.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'office.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'office.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'office.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'office.name.label', default: 'Name')}" />
					
						<th><g:message code="office.subDivisionOffice.label" default="Sub Division Office" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${officeInstanceList}" status="i" var="officeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${officeInstance.id}">${fieldValue(bean: officeInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: officeInstance, field: "address")}</td>
					
						<td><g:formatDate date="${officeInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${officeInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: officeInstance, field: "name")}</td>
					
						<td>${officeInstance?.subDivisionOffice?.name}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${officeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
