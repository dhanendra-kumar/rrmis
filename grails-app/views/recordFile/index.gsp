
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recordFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-recordFile" class="content scaffold-list" role="main">
			<h1>
                <g:if test="${heading}">
                    ${heading}
                </g:if>
                <g:else>
                    <g:message code="default.list.label" args="[entityName]" />
                </g:else>
            </h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
                        <td></td>
					
						<g:sortableColumn property="name" title="${message(code: 'recordFile.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="fileNumber" title="${message(code: 'recordFile.fileNumber.label', default: 'File Number')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'recordFile.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="consignDate" title="${message(code: 'recordFile.consignDate.label', default: 'Consign Date')}" />
					
						<g:sortableColumn property="totalPage" title="${message(code: 'recordFile.totalPage.label', default: 'Total Page')}" />

                        <td>Action</td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recordFileInstanceList}" status="i" var="recordFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recordFileInstance.id}">${fieldValue(bean: recordFileInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "fileNumber")}</td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "subject")}</td>
					
						<td><g:formatDate date="${recordFileInstance.consignDate}" /></td>
					
						<td>${fieldValue(bean: recordFileInstance, field: "totalPage")}</td>

                        <td>
                            <a href="${createLink(controller: "recordFile", action: "showPath")}/${recordFileInstance.id}">
                                <i class="icon-road"></i><i class="icon-search"></i>
                            </a>
                        </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recordFileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
