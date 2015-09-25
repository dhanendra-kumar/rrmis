
<%@ page import="com.rrmis.Shelve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shelve.label', default: 'Shelve')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-shelve" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-shelve" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'shelve.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'shelve.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="capacity" title="${message(code: 'shelve.capacity.label', default: 'Capacity')}" />
					
						<th><g:message code="shelve.rack.label" default="Rack" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shelveInstanceList}" status="i" var="shelveInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${shelveInstance.id}">${fieldValue(bean: shelveInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: shelveInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: shelveInstance, field: "capacity")}</td>
					
						<td>${fieldValue(bean: shelveInstance, field: "rack")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${shelveInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
