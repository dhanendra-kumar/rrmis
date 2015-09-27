
<%@ page import="com.rrmis.StoreUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>
        .matrixbox{
            width: 6.8%;max-height: 100px;height: 70px;border: 1px solid #dddddd;float: left;margin-left: -15px;margin-top: -16px;
        }
        .imgbox{
            width: 3%;float: left;
            box-shadow: 10px 10px 5px #888888;

        }
        </style>
        <asset:script src="jquery-1.10.2.js"></asset:script>
        <asset:script src="jquery-1.9.1.min.js"></asset:script>
        <script>

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
                            //options.each(function(){});
                            //alert(options.temp[2]);
                            var panel = $(this);
                            $('#remove-border').click(function(){
                                jQuery('.matrixbox').css({'border': '0px solid #FFF'});
                                jQuery('.numbers').hide();
                            });
                            $('#view-border').click(function(){
                                jQuery('.matrixbox').css({'border': '1px solid #dddddd'});
                                jQuery('.numbers').show();
                            });

                            jQuery('#imageToolsBox img')
                                    .click(function(){
                                        pickImage=$(this);
                                        var imgclone = pickImage.clone();

                                        imgclone.offset({
                                                    top: pickImage.offset().top,
                                                    left: pickImage.offset().left
                                                })
                                                .appendTo($('body'));
                                    })
                                    .mouseover(function() {jQuery(this).animate({width: '4%' }, 300);})
                                    .mouseout(function() {jQuery(this).animate({width: '3%'}, 300);
                                    });
                            var size = options.size.split('x');
                            var rows =size[1];
                            var cols =size[0];

                            var boxId = 0;
                            panel.css({'margin-top': '20px'});
                            panel.append("<div style='clear:both'></div>");
                            for(var i=1;i<=rows;i++){
                                for(var j=1;j<=cols;j++){boxId++;
                                    panel.append("<div class='matrixbox' id='matrix-box-"+ boxId +"'></div>");
                                }
                                panel.append("<div style='clear:both'></div>");
                            }
                            jQuery('.matrixbox').on('click',function(){
                                var boxid = (jQuery(this).attr('id'));

                                 var base = jQuery(this);
                                if(base.html()!="")return;
                                var imgtodrag = pickImage;
                                id++;
                                //alert(parseInt(imgtodrag.offset().left));
                                if (imgtodrag) {
                                    var imageToolsBoxHeight = jQuery("#imgDiv").height() + 40;
                                    var imageToolsBoxWidth = jQuery(".imgbox").width() * 6;
                                    console.log(imageToolsBoxWidth);
                                    var imgclone = imgtodrag.clone()
                                            .offset({
                                                'top': parseInt(imgtodrag.offset().top) - imageToolsBoxHeight,
                                                'left': parseInt(imgtodrag.offset().left) - imageToolsBoxWidth
                                            })
                                            .css({
                                                'width': '6%',
                                                'z-index': '100',
                                                'position': 'absolute'

                                            })
                                            .appendTo(base)
                                            .attr('id',id)
                                            .animate({
                                                'top': base.offset().top - imageToolsBoxHeight,
                                                'left': base.offset().left - imageToolsBoxWidth
                                            },500,function(){
                                                imgclone.css({
                                                    'width': '100%',
                                                    'z-index': '100',
                                                    'position': 'inherit'

                                                })

                                            });
                                    imgclone.dblclick(function(){$(this).remove()});
                                    imgclone.click(function(){
                                        getForm(boxid);
                                    });
                                    //imgclone.animate({'width': 0,'height': 0}, function () {$(this).detach()});
                                }
                            });



                        });
                    }
                });
            })(jQuery);

        </script>
        <script type="text/javascript">
            jQuery(document).ready(function() {
                //$('#menu').animateMenu({animatePadding: 30, defaultPadding:10});
                var floorMap = "${storeUnit?.floorMap}";
                jQuery('#panel').recordRoom({
                    size:floorMap,
                    boxFyingSpeed : 800
            });
                jQuery('#input-index-btn').click(function(){//alert();
                jQuery('.matrixbox img').each(function(){
                    var image = ($(this).attr('src'));
                    var base = $(this);
                    var baseid = (base.closest('.matrixbox').attr('id'));
                    //getForm(baseid);

                });
            });
                //alert($('#top-img').offset().left);
            });
            function getForm(id){
                var str = "<input type='text' id='rack-name-"+id+"'>";
                jQuery('#popup-box').dialogBox({
                    width: 450,
                    height: 300,
                    autoHide: false,
                    hasMask: true,
                    hasClose: true,
                    hasBtn: true,
                    effect: 'fade',
                    confirmValue: 'Send',
                    cancelValue: 'Cancel',
                    title: 'Password Recovery.',
                    content: "content"
                });
                rackClass.name = $('$rack-name-'+id).val();
            }

        </script>

	</head>
	<body>

    <br>
    %{--name ${storeUnit?.rack}--}%


    <input type="button" class="btn btn-sm btn-primary" id="remove-border" value="Remove Graph">
    <input type="button" class="btn btn-sm btn-primary" id="view-border" value="view Graph"><br><br>
    <div id='imageToolsBox'>
        <table>
    <tr><td><td>
        <td>
        <span id="imgDiv">
            <asset:image class="imgbox" id="top-img" src="rack/TOP.PNG"></asset:image>
            <asset:image class="imgbox" src="rack/LEFT.PNG"></asset:image>
            <asset:image class="imgbox" src="rack/RIGHT.PNG"></asset:image>
            <asset:image class="imgbox" src="rack/BOTTOM.PNG"></asset:image>
        </span>

        </td>
    </tr>
    </table></div>
<div style="clear: both"></div>
    <div id="panel"></div>
	</body>
</html>
