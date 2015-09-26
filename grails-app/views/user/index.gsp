
<%@ page import="com.rrmis.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
                    <i class="icon-home"></i>
                    <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
                </li>
                <sec:ifAnyGranted roles="SUPER_ADMIN">
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </sec:ifAnyGranted>
            </ul>


		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
					

					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
					

						<td>${fieldValue(bean: userInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
					

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
%{--<asset:javascript src="jquery-1.9.1.min.js"></asset:javascript>--}%
%{--<script>alert('dfdfd');--}%
    %{--//jQuery(document).ready(function(){alert("sdfds");});--}%
%{--</script>--}%
</html>
