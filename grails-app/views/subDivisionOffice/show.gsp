
<%@ page import="com.rrmis.SubDivisionOffice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subDivisionOffice.label', default: 'SubDivisionOffice')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-subDivisionOffice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-subDivisionOffice" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list subDivisionOffice">
			
				<g:if test="${subDivisionOfficeInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="subDivisionOffice.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${subDivisionOfficeInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subDivisionOfficeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="subDivisionOffice.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${subDivisionOfficeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subDivisionOfficeInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="subDivisionOffice.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:link controller="district" action="show" id="${subDivisionOfficeInstance?.district?.id}">${subDivisionOfficeInstance?.district?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${subDivisionOfficeInstance?.office}">
				<li class="fieldcontain">
					<span id="office-label" class="property-label"><g:message code="subDivisionOffice.office.label" default="Office" /></span>
					
						<g:each in="${subDivisionOfficeInstance.office}" var="o">
						<span class="property-value" aria-labelledby="office-label"><g:link controller="office" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:subDivisionOfficeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${subDivisionOfficeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
