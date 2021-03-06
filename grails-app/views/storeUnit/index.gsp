
<%@ page import="com.rrmis.StoreUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
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
		<div id="list-storeUnit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'storeUnit.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="numberOfRacksInLength" title="${message(code: 'storeUnit.numberOfRacksInLength.label', default: 'Number Of Racks In Length')}" />
					
						<g:sortableColumn property="numberOfRacksInWidth" title="${message(code: 'storeUnit.numberOfRacksInWidth.label', default: 'Number Of Racks In Width')}" />
					
						<th><g:message code="storeUnit.recordRoom.label" default="Record Room" /></th>

						<th>Create Virtual Room</th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${storeUnitInstanceList}" status="i" var="storeUnitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${storeUnitInstance.id}">${fieldValue(bean: storeUnitInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: storeUnitInstance, field: "numberOfRacksInLength")}</td>
					
						<td>${fieldValue(bean: storeUnitInstance, field: "numberOfRacksInWidth")}</td>

                        <td>${storeUnitInstance?.recordRoom?.name}</td>

                        <td>
                            <a href="${createLink(controller: "storeUnit", action: "virtualRoom")}/${storeUnitInstance.id}">
                                <i class="halflings-icon edit"></i>
                            </a>
                        </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${storeUnitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
