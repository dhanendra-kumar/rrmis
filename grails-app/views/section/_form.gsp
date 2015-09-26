<%@ page import="com.rrmis.Section" %>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="section.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${sectionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'office', 'error')} required">
	<label for="office">
		<g:message code="section.office.label" default="Office" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="office" name="office.id" from="${com.rrmis.Office.list()}" optionKey="id" optionValue="name" required="" value="${sectionInstance?.office?.id}" class="many-to-one"/>

</div>

%{--<div class="fieldcontain ${hasErrors(bean: sectionInstance, field: 'recordFile', 'error')} ">--}%
	%{--<label for="recordFile">--}%
		%{--<g:message code="section.recordFile.label" default="Record File" />--}%

	%{--</label>--}%
	%{--<g:select name="recordFile" from="${com.rrmis.RecordFile.list()}" multiple="multiple" optionKey="id" size="5" value="${sectionInstance?.recordFile*.id}" class="many-to-many"/>--}%

%{--</div>--}%

