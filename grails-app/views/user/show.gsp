
<%@ page import="com.rrmis.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul class="breadcrumb">
              	<sec:ifAnyGranted roles="SUPER_ADMIN">
                <li> > <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>

				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </sec:ifAnyGranted>
			</ul>
		</div>


		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <table class="table table-striped table-bordered bootstrap-datatable">
                <tbody>
        			<g:if test="${flash.message}">
		            	<div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:if test="${userInstance?.username}">
                        <tr>
                            <td>Username</td>
                            <td><g:fieldValue bean="${userInstance}" field="username"/></td>
                        </tr>
                    </g:if>
                    <g:if test="${userInstance?.name}">
                            <tr>
                                <td>Name</td>
                                <td><g:fieldValue bean="${userInstance}" field="name"/></td>
                            </tr>
                     </g:if>
                    <g:if test="${userInstance?.name}">
                        <tr>
                            <td>Email</td>
                            <td><g:fieldValue bean="${userInstance}" field="email"/></td>
                        </tr>
                    </g:if>
                </tbody>
            </table>

			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
                <div class="row-fluid">
                    <div class="span2">
                        <g:link class="btn btn-info span12" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    </div>

                 <div class="span2">
                   <g:actionSubmit class="delete btn btn-info span12" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                 </div>
                </div>

			</g:form>
		</div>
	</body>
</html>
