
<%@ page import="com.rrmis.StoreUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-storeUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-storeUnit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list storeUnit">
			
				<g:if test="${storeUnitInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="storeUnit.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${storeUnitInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storeUnitInstance?.rack}">
				<li class="fieldcontain">
					<span id="rack-label" class="property-label"><g:message code="storeUnit.rack.label" default="Rack" /></span>
					
						<g:each in="${storeUnitInstance.rack}" var="r">
						<span class="property-value" aria-labelledby="rack-label"><g:link controller="rack" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${storeUnitInstance?.recordRoom}">
				<li class="fieldcontain">
					<span id="recordRoom-label" class="property-label"><g:message code="storeUnit.recordRoom.label" default="Record Room" /></span>
					
						<span class="property-value" aria-labelledby="recordRoom-label"><g:link controller="recordRoom" action="show" id="${storeUnitInstance?.recordRoom?.id}">${storeUnitInstance?.recordRoom?.name?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storeUnitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storeUnitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
