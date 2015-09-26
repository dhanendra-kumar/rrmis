
<%@ page import="com.rrmis.Rack" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rack.label', default: 'Rack')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rack" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rack" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rack">
			
				<g:if test="${rackInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="rack.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${rackInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rackInstance?.baseLocation}">
				<li class="fieldcontain">
					<span id="baseLocation-label" class="property-label"><g:message code="rack.baseLocation.label" default="Base Location" /></span>
					
						<span class="property-value" aria-labelledby="baseLocation-label"><g:fieldValue bean="${rackInstance}" field="baseLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rackInstance?.rackFacePostion}">
				<li class="fieldcontain">
					<span id="rackFacePostion-label" class="property-label"><g:message code="rack.rackFacePostion.label" default="Rack Face Postion" /></span>
					
						<span class="property-value" aria-labelledby="rackFacePostion-label"><g:fieldValue bean="${rackInstance}" field="rackFacePostion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rackInstance?.shelve}">
				<li class="fieldcontain">
					<span id="shelve-label" class="property-label"><g:message code="rack.shelve.label" default="Shelve" /></span>
					
						<g:each in="${rackInstance.shelve}" var="s">
						<span class="property-value" aria-labelledby="shelve-label"><g:link controller="shelve" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rackInstance?.storeUnit}">
				<li class="fieldcontain">
					<span id="storeUnit-label" class="property-label"><g:message code="rack.storeUnit.label" default="Store Unit" /></span>
					
						<span class="property-value" aria-labelledby="storeUnit-label"><g:link controller="storeUnit" action="show" id="${rackInstance?.storeUnit?.id}">${rackInstance?.storeUnit?.name?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rackInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rackInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
