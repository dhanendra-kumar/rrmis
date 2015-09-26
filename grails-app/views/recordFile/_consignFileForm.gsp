<g:form name="recordFileForm" controller="recordFile" action="save">
    <g:hiddenField name="shelve.id" value="${shelveId}" />
    <div class="row-fluid">
        <div onTablet="span6" onDesktop="span2">
            <label>Name</label>
            <input required type="text" class="span4" name="name" id='name' value="">
        </div>
        <div onTablet="span6" onDesktop="span2">
            <label>File Number</label>
            <input required type="text" class="span4" name="fileNumber" id='fileNumber' value="">
        </div>
        <div onTablet="span6" onDesktop="span4">
            <label>Subject</label>
            <input required type="text" class="span4" name="subject" id='subject' value="">
        </div>
        <div required onTablet="span6" onDesktop="span2" id='no-of-pages-panel'>
            <label>No of Pages</label>
            <input type="text" class="span4 validateNumericInputText" name="totalPage" id='totalPage' value="">
        </div>
        <div required onTablet="span6" onDesktop="span2" id='remark-panel'>
            <label>Remark</label>
            <input type="text" class="span4 validateNumericInputText" name="remark" id='remark' value="">
        </div>
        <div required onTablet="span6" onDesktop="span2" id='class-type-panel'>
            <label>Class Type</label>
            <g:select name="classType" from="${com.rrmis.ClassType.values()}" optionValue="displayName" class="span4"></g:select>
        </div>
        <div required onTablet="span6" onDesktop="span2" id='status-panel'>
            <label>Status</label>
            <g:select name="status" from="${com.rrmis.Status.values()}" optionValue="displayName" class="span4" ></g:select>
        </div>
    </div>
    <g:submitButton name="submitButton" value="Submit" />
</g:form>