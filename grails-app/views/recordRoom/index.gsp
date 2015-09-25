
<%@ page import="com.rrmis.RecordRoom" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordRoom.label', default: 'RecordRoom')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recordRoom" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recordRoom" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'recordRoom.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'recordRoom.name.label', default: 'Name')}" />
					
						<th><g:message code="recordRoom.office.label" default="Office" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recordRoomInstanceList}" status="i" var="recordRoomInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recordRoomInstance.id}">${fieldValue(bean: recordRoomInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: recordRoomInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: recordRoomInstance, field: "office")}</td>
					
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
