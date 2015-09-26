<g:select name="subDivisionOfficeSelect" from="${subDivisionOfficeList}" optionKey="id" optionValue="name" noSelection="['': 'Select sub division office']"></g:select>

<div id="officeSelectDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#subDivisionOfficeSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "office", action: "fetchAllOfficeBySubDivisionOfficeId")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#officeSelectDiv").html(formHtml);
                }
            });
        });
    });
</script>