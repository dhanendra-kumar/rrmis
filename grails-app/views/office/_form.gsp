<%@ page import="com.rrmis.Office" %>



<div class="fieldcontain ${hasErrors(bean: officeInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="office.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${officeInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: officeInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="office.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${officeInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: officeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="office.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${officeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: officeInstance, field: 'subDivisionOffice', 'error')} required">
    <label for="subDivisionOffice">
        <g:message code="office.subDivisionOffice.label" default="Sub Division Office" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="subDivisionOffice" name="subDivisionOffice.id" from="${com.rrmis.SubDivisionOffice.list()}" optionKey="id" optionValue="name" required="" value="${officeInstance?.subDivisionOffice?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: officeInstance, field: 'sections', 'error')} ">
	<label for="section">
		<g:message code="office.section.label" default="Section" />
		
	</label>
<ul class="one-to-many">
<g:each in="${officeInstance?.sections?}" var="s">
    <li><g:link controller="section" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="section" action="create" params="['office.id': officeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'section.label', default: 'Section')])}</g:link>
</li>
</ul>


</div>



