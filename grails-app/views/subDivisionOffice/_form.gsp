<%@ page import="com.rrmis.SubDivisionOffice" %>



<div class="fieldcontain ${hasErrors(bean: subDivisionOfficeInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="subDivisionOffice.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${subDivisionOfficeInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subDivisionOfficeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subDivisionOffice.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${subDivisionOfficeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subDivisionOfficeInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="subDivisionOffice.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="district" name="district.id" from="${com.rrmis.District.list()}" optionKey="id" required="" value="${subDivisionOfficeInstance?.district?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: subDivisionOfficeInstance, field: 'office', 'error')} ">
	<label for="office">
		<g:message code="subDivisionOffice.office.label" default="Office" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${subDivisionOfficeInstance?.office?}" var="o">
    <li><g:link controller="office" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="office" action="create" params="['subDivisionOffice.id': subDivisionOfficeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'office.label', default: 'Office')])}</g:link>
</li>
</ul>


</div>

