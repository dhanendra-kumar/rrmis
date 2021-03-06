
<%@ page import="com.rrmis.StoreUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		 <div class="nav" role="navigation">
         <ul class="breadcrumb">
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
		<div id="show-storeUnit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list storeUnit">
			
				<g:if test="${storeUnitInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label span2"><g:message code="storeUnit.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${storeUnitInstance}" field="name"/></span>
					
				</li>

                <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${storeUnitInstance?.numberOfRacksInLength}">
				<li class="fieldcontain">
					<span id="numberOfRacksInLength-label" class="property-label span3"><g:message code="storeUnit.numberOfRacksInLength.label" default="Number Of Racks In Length" /></span>
					
						<span class="property-value" aria-labelledby="numberOfRacksInLength-label"><g:fieldValue bean="${storeUnitInstance}" field="numberOfRacksInLength"/></span>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${storeUnitInstance?.numberOfRacksInWidth}">
				<li class="fieldcontain">
					<span id="numberOfRacksInWidth-label" class="property-label span3"><g:message code="storeUnit.numberOfRacksInWidth.label" default="Number Of Racks In Width" /></span>
					
						<span class="property-value" aria-labelledby="numberOfRacksInWidth-label"><g:fieldValue bean="${storeUnitInstance}" field="numberOfRacksInWidth"/></span>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${storeUnitInstance?.rack}">

                    <div class="clearfix"></div>
				</g:if>
			
				<g:if test="${storeUnitInstance?.recordRoom}">
				<li class="fieldcontain">
					<span id="recordRoom-label" class="property-label span3"><g:message code="storeUnit.recordRoom.label" default="Record Room" /></span>
					
						<span class="property-value" aria-labelledby="recordRoom-label"><g:link controller="recordRoom" action="show" id="${storeUnitInstance?.recordRoom?.id}">${storeUnitInstance?.recordRoom?.name?.encodeAsHTML()}</g:link></span>
					
				</li>
                    <div class="clearfix"></div>
				</g:if>
			
			</ol>
			<g:form url="[resource:storeUnitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit  btn btn-sm btn-primary" action="edit" resource="${storeUnitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					&nbsp;<g:actionSubmit class="delete btn btn-sm btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
