<%@ page import="com.rrmis.District" %>



<div class="fieldcontain ${hasErrors(bean: districtInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="district.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${districtInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: districtInstance, field: 'subDivisionOffice', 'error')} ">
	<label for="subDivisionOffice">
		<g:message code="district.subDivisionOffice.label" default="Sub Division Office" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${districtInstance?.subDivisionOffice?}" var="s">
    <li><g:link controller="subDivisionOffice" action="show" id="${s.id}">${s?.name?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subDivisionOffice" action="create" params="['district.id': districtInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subDivisionOffice.label', default: 'SubDivisionOffice')])}</g:link>
</li>
</ul>


</div>

