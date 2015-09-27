<%@ page import="com.rrmis.Shelve" %>



<div class="fieldcontain ${hasErrors(bean: shelveInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="shelve.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${shelveInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shelveInstance, field: 'capacity', 'error')} required">
	<label for="capacity">
		<g:message code="shelve.capacity.label" default="Capacity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capacity" type="number" min="0" value="${shelveInstance.capacity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: shelveInstance, field: 'rack', 'error')} required">
	<label for="rack">
		<g:message code="shelve.rack.label" default="Rack" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rack" name="rack.id" from="${com.rrmis.Rack.list()}" optionKey="id" optionValue="name" required="" value="${shelveInstance?.rack?.name}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: shelveInstance, field: 'recordFile', 'error')} ">
	<label for="recordFile">
		<g:message code="shelve.recordFile.label" default="Record File" />

	</label>

<ul class="one-to-many">
<g:each in="${shelveInstance?.recordFile?}" var="r">
    <li><g:link controller="recordFile" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="recordFile" action="create" params="['shelve.id': shelveInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'recordFile.label', default: 'RecordFile')])}</g:link>
</li>
</ul>


</div>

