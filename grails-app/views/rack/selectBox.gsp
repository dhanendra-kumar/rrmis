<g:select name="rackSelect" from="${rackList}" optionKey="id" optionValue="name" noSelection="['': 'Select Rack']"></g:select>

<div id="shelveSelectDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#rackSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "shelve", action: "fetchAllShelveByRackId")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#shelveSelectDiv").html(formHtml);
                }
            });
        });
    });
</script>