<%@ page import="com.rrmis.StoreUnit" %>


<div class="fieldcontain ${hasErrors(bean: storeUnitInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="storeUnit.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${storeUnitInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeUnitInstance, field: 'numberOfRacksInLength', 'error')} required">
	<label for="numberOfRacksInLength">
		<g:message code="storeUnit.numberOfRacksInLength.label" default="Number Of Racks In Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfRacksInLength" type="number" value="${storeUnitInstance.numberOfRacksInLength}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeUnitInstance, field: 'numberOfRacksInWidth', 'error')} required">
	<label for="numberOfRacksInWidth">
		<g:message code="storeUnit.numberOfRacksInWidth.label" default="Number Of Racks In Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfRacksInWidth" type="number" value="${storeUnitInstance.numberOfRacksInWidth}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: storeUnitInstance, field: 'rack', 'error')} ">
	<label for="rack">
		<g:message code="storeUnit.rack.label" default="Rack" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${storeUnitInstance?.rack?}" var="r">
    <li><g:link controller="rack" action="show" id="${r.id}">${r?.name?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rack" action="create" params="['storeUnit.id': storeUnitInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rack.label', default: 'Rack')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: storeUnitInstance, field: 'recordRoom', 'error')} required">
	<label for="recordRoom">
		<g:message code="storeUnit.recordRoom.label" default="Record Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="recordRoom" name="recordRoom.id" from="${com.rrmis.RecordRoom.list()}" optionKey="id" optionValue="name" required="" value="${storeUnitInstance?.recordRoom?.id}" class="many-to-one"/>

</div>

