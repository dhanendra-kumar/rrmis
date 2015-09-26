<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
            </sec:ifAnyGranted>
        </ul>
    </div>
		<div id="create-storeUnit" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${storeUnitInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${storeUnitInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:storeUnitInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
