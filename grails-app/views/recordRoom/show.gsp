
<%@ page import="com.rrmis.RecordRoom" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordRoom.label', default: 'RecordRoom')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
            < <ul class="breadcrumb">
            <li>
                <a class="btn btn-small btn-primary" href="${createLink(uri: '/')}">
                    <i class="icon-home"></i>
                    <g:message code="default.home.label"/>
                </a>
            </li>
            <sec:ifAnyGranted roles="SUPER_ADMIN">
                <li><g:link class="create btn btn-small btn-primary" action="index">
                    <i class="icon-list-alt"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </g:link>
                </li>
                <li><g:link class="create btn btn-small btn-primary" action="create">
                    <i class="icon-edit"></i>
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>
                </li>
            </sec:ifAnyGranted>

        </ul>
		</div>
		<div id="show-recordRoom" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recordRoom">
			
				<g:if test="${recordRoomInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label span2"><g:message code="recordRoom.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recordRoomInstance}" field="name"/></span>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${recordRoomInstance?.office}">
				<li class="fieldcontain">
					<span id="office-label" class="property-label span2"><g:message code="recordRoom.office.label" default="Office" /></span>
					
						<span class="property-value" aria-labelledby="office-label"><g:link controller="office" action="show" id="${recordRoomInstance?.office?.id}">${recordRoomInstance?.office?.name?.encodeAsHTML()}</g:link></span>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${recordRoomInstance?.storeUnit}">
				<li class="fieldcontain">
					<span id="storeUnit-label" class="property-label span2"><g:message code="recordRoom.storeUnit.label" default="Store Unit" /></span>
					
						<g:each in="${recordRoomInstance.storeUnit}" var="s">
						<span class="property-value" aria-labelledby="storeUnit-label"><g:link controller="storeUnit" action="show" id="${s.id}">${s?.name?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
			</ol>
			<g:form url="[resource:recordRoomInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-sm btn-primary span1" action="edit" resource="${recordRoomInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					&nbsp;<g:actionSubmit class="delete btn btn-sm btn-primary span1" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
