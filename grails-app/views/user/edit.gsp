<%@ page import="com.rrmis.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
            <li>
                <g:link class="btn btn-small btn-primary list" action="index">
                    <i class="icon-list-alt"></i>
                    <g:message code="default.list.label" args="[entityName]" />
                </g:link>
            </li>
            <sec:ifAnyGranted roles="SUPER_ADMIN">
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </sec:ifAnyGranted>
        </ul>
    </div>
		<div id="edit-user" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
					<g:render template="form" model="[isEdit: true]"/>
				</fieldset>
                <div class="row-fluid">
                    <div class="span4">
                   </div>
                    <div class="span2" style="text-align: left">
                        <g:actionSubmit class="save btn" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                   </div>
                </div>
			</g:form>
		</div>
	</body>
</html>
