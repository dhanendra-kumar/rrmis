<%@ page import="com.rrmis.RecordFile" %>



<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="recordFile.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recordFileInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'fileNumber', 'error')} required">
	<label for="fileNumber">
		<g:message code="recordFile.fileNumber.label" default="File Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fileNumber" required="" value="${recordFileInstance?.fileNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="recordFile.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${recordFileInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'consignDate', 'error')} ">
	<label for="consignDate">
		<g:message code="recordFile.consignDate.label" default="Consign Date" />
		
	</label>
	<g:datePicker name="consignDate" precision="day"  value="${recordFileInstance?.consignDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'totalPage', 'error')} required">
	<label for="totalPage">
		<g:message code="recordFile.totalPage.label" default="Total Page" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPage" type="number" value="${recordFileInstance.totalPage}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="recordFile.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${recordFileInstance?.remark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'classType', 'error')} required">
	<label for="classType">
		<g:message code="recordFile.classType.label" default="Class Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="classType" from="${com.rrmis.ClassType?.values()}" keys="${com.rrmis.ClassType.values()*.name()}" required="" value="${recordFileInstance?.classType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'dateOfFinalDisposal', 'error')} required">
	<label for="dateOfFinalDisposal">
		<g:message code="recordFile.dateOfFinalDisposal.label" default="Date Of Final Disposal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfFinalDisposal" precision="day"  value="${recordFileInstance?.dateOfFinalDisposal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="recordFile.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${com.rrmis.Status?.values()}" keys="${com.rrmis.Status.values()*.name()}" required="" value="${recordFileInstance?.status?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: recordFileInstance, field: 'shelve', 'error')} ">
	<label for="shelve">
		<g:message code="recordFile.shelve.label" default="Shelve" />
		
	</label>
	<g:select id="shelve" name="shelve.id" from="${com.rrmis.Shelve.list()}" optionKey="id" value="${recordFileInstance?.shelve?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

