<g:select name="storeUnitSelect" from="${storeUnitList}" optionKey="id" optionValue="name" noSelection="['': 'Select Store Unit']"></g:select>

<div id="rackSelectDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#storeUnitSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "rack", action: "fetchAllRackByStoreUnitId")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#rackSelectDiv").html(formHtml);
                }
            });
        });
    });
</script>