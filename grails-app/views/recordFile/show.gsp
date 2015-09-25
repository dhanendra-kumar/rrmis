
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recordFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recordFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recordFile">
			
				<g:if test="${recordFileInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="recordFile.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${recordFileInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recordFile.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recordFileInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.fileNumber}">
				<li class="fieldcontain">
					<span id="fileNumber-label" class="property-label"><g:message code="recordFile.fileNumber.label" default="File Number" /></span>
					
						<span class="property-value" aria-labelledby="fileNumber-label"><g:fieldValue bean="${recordFileInstance}" field="fileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="recordFile.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${recordFileInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.consignDate}">
				<li class="fieldcontain">
					<span id="consignDate-label" class="property-label"><g:message code="recordFile.consignDate.label" default="Consign Date" /></span>
					
						<span class="property-value" aria-labelledby="consignDate-label"><g:formatDate date="${recordFileInstance?.consignDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.totalPage}">
				<li class="fieldcontain">
					<span id="totalPage-label" class="property-label"><g:message code="recordFile.totalPage.label" default="Total Page" /></span>
					
						<span class="property-value" aria-labelledby="totalPage-label"><g:fieldValue bean="${recordFileInstance}" field="totalPage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="recordFile.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${recordFileInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.classType}">
				<li class="fieldcontain">
					<span id="classType-label" class="property-label"><g:message code="recordFile.classType.label" default="Class Type" /></span>
					
						<span class="property-value" aria-labelledby="classType-label"><g:fieldValue bean="${recordFileInstance}" field="classType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.dateOfFinalDisposal}">
				<li class="fieldcontain">
					<span id="dateOfFinalDisposal-label" class="property-label"><g:message code="recordFile.dateOfFinalDisposal.label" default="Date Of Final Disposal" /></span>
					
						<span class="property-value" aria-labelledby="dateOfFinalDisposal-label"><g:formatDate date="${recordFileInstance?.dateOfFinalDisposal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="recordFile.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${recordFileInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordFileInstance?.shelve}">
				<li class="fieldcontain">
					<span id="shelve-label" class="property-label"><g:message code="recordFile.shelve.label" default="Shelve" /></span>
					
						<span class="property-value" aria-labelledby="shelve-label"><g:link controller="shelve" action="show" id="${recordFileInstance?.shelve?.id}">${recordFileInstance?.shelve?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recordFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recordFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
