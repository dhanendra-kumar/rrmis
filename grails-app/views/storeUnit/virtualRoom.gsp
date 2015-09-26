
<%@ page import="com.rrmis.StoreUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'storeUnit.label', default: 'StoreUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <script>
            jQuery(document).ready(function() {
                var floorMap = "${storeUnit?.floorMap}";
            });
        </script>
	</head>
	<body>
		virtual room
    name ${storeUnit?.name}
        <br>
    floorMap ${storeUnit?.floorMap}
	</body>
</html>
