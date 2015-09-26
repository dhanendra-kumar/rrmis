
<%@ page import="com.rrmis.Office" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'office.label', default: 'Office')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-office" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-office" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list office">
			
				<g:if test="${officeInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="office.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${officeInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="office.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${officeInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="office.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${officeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="office.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${officeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="office.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${officeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.sections}">
				<li class="fieldcontain">
					<span id="section-label" class="property-label"><g:message code="office.section.label" default="Section" /></span>
					
						<g:each in="${officeInstance.sections}" var="s">
						<span class="property-value" aria-labelledby="section-label"><g:link controller="section" action="show" id="${s.id}">${s?.name?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${officeInstance?.subDivisionOffice}">
				<li class="fieldcontain">
					<span id="subDivisionOffice-label" class="property-label"><g:message code="office.subDivisionOffice.label" default="Sub Division Office" /></span>
					
						<span class="property-value" aria-labelledby="subDivisionOffice-label"><g:link controller="subDivisionOffice" action="show" id="${officeInstance?.subDivisionOffice?.id}">${officeInstance?.subDivisionOffice?.name?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:officeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${officeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
