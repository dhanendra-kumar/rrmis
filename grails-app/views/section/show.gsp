
<%@ page import="com.rrmis.Section" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'section.label', default: 'Section')}" />
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
		<div id="show-section" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <table class="table table-striped table-bordered bootstrap-datatable" id="user-list-table">
                <thead>
                <tr>

                    <g:sortableColumn property="username" title="${message(code: 'section.office.label', default: 'Office')}" />

                    <g:sortableColumn property="name" title="${message(code: 'section.name.label', default: 'Section Name')}" />


                </tr>
                </thead>
                <tbody>
                <td>${sectionInstance?.office?.name?.encodeAsHTML()}</td>

                <td>${fieldValue(bean: sectionInstance, field: "name")}</td>
                </tbody>
            </table>


			<g:form url="[resource:sectionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-sm btn-primary span1" action="edit" resource="${sectionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					&nbsp;<g:actionSubmit class="delete btn btn-sm btn-primary span1" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
