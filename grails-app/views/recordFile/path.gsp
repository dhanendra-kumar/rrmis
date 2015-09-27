
<%@ page import="com.rrmis.RecordFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recordFile.label', default: 'RecordFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>
        .matrixbox{
            width: 6.8%;max-height: 100px;height: 70px;border: 0px solid #dddddd;float: left;margin-left: -15px;margin-top: -16px;
        }
        .imgbox{
            width: 3%;float: left;
            box-shadow: 0px 10px 20px #888888;
        }
        </style>
        <asset:script src="jquery-1.10.2.js"></asset:script>
        <asset:script src="jquery-1.9.1.min.js"></asset:script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>

        <script>
        function putImages(baseId){
            var base = $('#'+baseId);
            var imgtodrag = $('#top-img');
            var imgclone = imgtodrag.clone()
                    .offset({
                        'top': imgtodrag.offset().top,
                        'left': imgtodrag.offset().left
                    })
                    .css({
                        'width': '100%',
                        'position':'inherit',
                        'z-index': '100'

                    }).appendTo($(base));

        }
            (function($){
                var pickImage = "";
                var id=0;
                var panel="";



                $.fn.extend({
                    //plugin name - animatemenu
                    recordRoom: function(options) {
                        var defaults = {
                            size : '10x10',
                            boxFyingSpeed : 1000

                        };

                        var options = $.extend(defaults, options);

                        return this.each(function() {
                            var panel = $(this);
                            $('#remove-border').click(function(){
                                jQuery('.matrixbox').css({'border': '0px solid #FFF'});
                                jQuery('.numbers').hide();
                            });
                            $('#view-border').click(function(){
                                jQuery('.matrixbox').css({'border': '1px solid #dddddd'});
                                jQuery('.numbers').show();
                            });



                            var size = options.size.split('x');
                            var rows =size[1];
                            var cols =size[0];

                            var boxId = 0;
                            panel.css({'margin-top': '20px'});
                            panel.append("<div style='clear:both'></div>");
                            for(var i=1;i<=rows;i++){
                                for(var j=1;j<=cols;j++){boxId++;
                                    panel.append("<div class='matrixbox' id='matrix-box-"+ boxId +"'><div class='numbers' style='color: orangered'>"+boxId+"</div></div>");
                                }
                                panel.append("<div style='clear:both'></div>");
                            }

                            var rackId = "${shelve?.rack?.baseLocationForJavascript}";
                            var boxes = "${(shelve?.rack?.storeUnit?.rack*.baseLocationForJavascript)?.toString().substring(1)}";
                            boxes = boxes.slice(0, -1);
                            var positions = boxes.split(',');
                            for(i=0;i<positions.length;i++)
                                putImages((positions[i]).trim());
                            var target = $('#'+rackId+' img');
                            setInterval(function(){target.fadeTo(100, 0.1).fadeTo(200, 1.0);},1000);


                        });
                    }
                });
            })(jQuery);

        </script>
        <script type="text/javascript">
            jQuery(document).ready(function() {
                //$('#menu').animateMenu({animatePadding: 30, defaultPadding:10});

                //alert(();

                var floorMap = "${shelve?.rack?.storeUnit?.floorMap}";
                jQuery('#panel').recordRoom({
                    size:floorMap,
                    boxFyingSpeed : 800
                });
                jQuery('.numbers').hide();
//                jQuery('.matrixbox img').each(function(){
//                    //alert('');
//                });
                //alert($('#top-img').offset().left);
            });


        </script>

	</head>
	<body>
    <div class="row-fluid sortable ui-sortable">
        <div class="span12">
            <h1>File Path</h1>
            <div class="box-content">
                <div>
                    ${shelve?.rack?.storeUnit?.recordRoom?.office?.subDivisionOffice?.district?.name} >
                    ${shelve?.rack?.storeUnit?.recordRoom?.office?.name} >
                    ${shelve?.rack?.storeUnit?.recordRoom?.name} >
                    ${shelve?.rack?.storeUnit?.name} >
                    ${shelve?.rack?.name} >
                    ${shelve?.name}

                </div>

                %{--<div>--}%
                    %{--Rack:   ${shelve?.rack?.name}--}%
                %{--</div>--}%

                %{--<div>--}%
                    %{--Store Unit: ${shelve?.rack?.storeUnit?.name}--}%
                %{--</div>--}%

                %{--<div>--}%
                    %{--Record Room: ${shelve?.rack?.storeUnit?.recordRoom?.name}--}%
                %{--</div>--}%

                %{--<div>--}%
                    %{--Office: ${shelve?.rack?.storeUnit?.recordRoom?.office?.name}--}%
                %{--</div>--}%

                %{--<div>--}%
                    %{--Sub Division Office: ${shelve?.rack?.storeUnit?.recordRoom?.office?.subDivisionOffice?.name}--}%
                %{--</div>--}%

                %{--<div>--}%
                    %{--District: ${shelve?.rack?.storeUnit?.recordRoom?.office?.subDivisionOffice?.district?.name}--}%
                %{--</div>--}%
            </div>
        </div>
        <asset:image class="imgbox" id="top-img" src="rack/TOP.PNG" style="width: 0px"></asset:image>
        <input type="button" class="btn btn-sm btn-primary" id="remove-border" value="Remove Graph">
        <input type="button" class="btn btn-sm btn-primary" id="view-border" value="view Graph"><br><br>


        <div id="panel"></div>
    </div>
    </body>
</html>
