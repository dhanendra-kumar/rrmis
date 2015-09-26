<g:select name="recordRoomSelect" from="${recordRooms}" optionKey="id" optionValue="name" noSelection="['': 'Select Record Room']"></g:select>

<div id="storeUnitSelectDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#recordRoomSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "storeUnit", action: "fetchAllStoreUnitByRecordRoomId")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#storeUnitSelectDiv").html(formHtml);
                }
            });
        });
    });
</script>