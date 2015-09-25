<%@ page import="com.rrmis.Rack" %>



<div class="fieldcontain ${hasErrors(bean: rackInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="rack.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${rackInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rackInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="rack.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${rackInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rackInstance, field: 'shelve', 'error')} ">
	<label for="shelve">
		<g:message code="rack.shelve.label" default="Shelve" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rackInstance?.shelve?}" var="s">
    <li><g:link controller="shelve" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shelve" action="create" params="['rack.id': rackInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shelve.label', default: 'Shelve')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: rackInstance, field: 'storeUnit', 'error')} required">
	<label for="storeUnit">
		<g:message code="rack.storeUnit.label" default="Store Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="storeUnit" name="storeUnit.id" from="${com.rrmis.StoreUnit.list()}" optionKey="id" required="" value="${rackInstance?.storeUnit?.id}" class="many-to-one"/>

</div>

