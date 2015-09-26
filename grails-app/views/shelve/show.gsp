
<%@ page import="com.rrmis.Shelve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shelve.label', default: 'Shelve')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-shelve" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-shelve" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list shelve">
			
				<g:if test="${shelveInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="shelve.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${shelveInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shelveInstance?.capacity}">
				<li class="fieldcontain">
					<span id="capacity-label" class="property-label"><g:message code="shelve.capacity.label" default="Capacity" /></span>
					
						<span class="property-value" aria-labelledby="capacity-label"><g:fieldValue bean="${shelveInstance}" field="capacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${shelveInstance?.rack}">
				<li class="fieldcontain">
					<span id="rack-label" class="property-label"><g:message code="shelve.rack.label" default="Rack" /></span>
					
						<span class="property-value" aria-labelledby="rack-label"><g:link controller="rack" action="show" id="${shelveInstance?.rack?.id}">${shelveInstance?.rack?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shelveInstance?.recordFile}">
				<li class="fieldcontain">
					<span id="recordFile-label" class="property-label"><g:message code="shelve.recordFile.label" default="Record File" /></span>
					
						<g:each in="${shelveInstance.recordFile}" var="r">
						<span class="property-value" aria-labelledby="recordFile-label"><g:link controller="recordFile" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:shelveInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${shelveInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
