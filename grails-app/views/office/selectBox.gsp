<g:select name="officeSelect" from="${officeList}" optionKey="id" optionValue="name" noSelection="['': 'Select Office']"></g:select>

<div id="recordRoomSelectDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#officeSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "recordRoom", action: "fetchAllRecordRoomByOfficeId")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#recordRoomSelectDiv").html(formHtml);
                }
            });
        });
    });
</script>