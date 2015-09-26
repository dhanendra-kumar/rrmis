<%@ page import="com.rrmis.RecordRoom" %>



<div class="fieldcontain ${hasErrors(bean: recordRoomInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recordRoom.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recordRoomInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordRoomInstance, field: 'office', 'error')} required">
	<label for="office">
		<g:message code="recordRoom.office.label" default="Office" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="office" name="office.id" from="${com.rrmis.Office.list()}" optionKey="id" optionValue="name" required="" value="${recordRoomInstance?.office?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordRoomInstance, field: 'storeUnit', 'error')} ">
	<label for="storeUnit">
		<g:message code="recordRoom.storeUnit.label" default="Store Unit" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${recordRoomInstance?.storeUnit?}" var="s">
    <li><g:link controller="storeUnit" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="storeUnit" action="create" params="['recordRoom.id': recordRoomInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'storeUnit.label', default: 'StoreUnit')])}</g:link>
</li>
</ul>


</div>

