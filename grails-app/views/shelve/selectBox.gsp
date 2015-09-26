<g:select name="shelveSelect" from="${shelves}" optionKey="id" optionValue="name" noSelection="['': 'Select shelve']"></g:select>

<div id="RecordFileFormDiv">

</div>

<script>
    jQuery(document).ready(function() {
        jQuery(document).on('change', '#shelveSelect', function() {
            var id = jQuery(this).val();
            jQuery.ajax({
                url: '${createLink(controller: "recordFile", action: "consignFileForm")}',
                data: {id: id},
                success: function (formHtml) {
                    jQuery("#RecordFileFormDiv").html(formHtml);
                }
            });
        });
    });
</script>