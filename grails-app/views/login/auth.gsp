<%--
  Created by IntelliJ IDEA.
  User: dhanendra
  Date: 26/9/15
  Time: 2:24 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RRMIS Login</title>


    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>
    <asset:stylesheet src="bootstrap-responsive.min.css"></asset:stylesheet>
    <asset:stylesheet src="style.css"></asset:stylesheet>
    <asset:stylesheet src="style-responsive.css"></asset:stylesheet>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>

    <!-- CSS -->
    %{--<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">--}%

    <asset:javascript src="jquery-1.9.1.min.js"></asset:javascript>
    <asset:javascript src="jquery-migrate-1.0.0.min.js"></asset:javascript>
    <asset:javascript src="jquery-ui-1.10.0.custom.min.js"></asset:javascript>
    <asset:javascript src="jquery.ui.touch-punch.js"></asset:javascript>
    <asset:javascript src="modernizr.js"></asset:javascript>
    <asset:javascript src="bootstrap.min.js"></asset:javascript>
    <asset:javascript src="jquery.cookie.js"></asset:javascript>
    <asset:javascript src="fullcalendar.min.js"></asset:javascript>
    <asset:javascript src="jquery.dataTables.min.js"></asset:javascript>
    <asset:javascript src="excanvas.js"></asset:javascript>
    <asset:javascript src="jquery.flot.js"></asset:javascript>
    <asset:javascript src="jquery.flot.pie.js"></asset:javascript>
    <asset:javascript src="jquery.flot.stack.js"></asset:javascript>
    <asset:javascript src="jquery.flot.resize.min.js"></asset:javascript>
    <asset:javascript src="jquery.chosen.min.js"></asset:javascript>
    <asset:javascript src="jquery.uniform.min.js"></asset:javascript>
    <asset:javascript src="jquery.cleditor.min.js"></asset:javascript>
    <asset:javascript src="jquery.noty.js"></asset:javascript>
    <asset:javascript src="jquery.elfinder.min.js"></asset:javascript>
    <asset:javascript src="jquery.raty.min.js"></asset:javascript>
    <asset:javascript src="jquery.iphone.toggle.js"></asset:javascript>
    <asset:javascript src="jquery.uploadify-3.1.min.js"></asset:javascript>
    <asset:javascript src="jquery.gritter.min.js"></asset:javascript>
    <asset:javascript src="jquery.imagesloaded.js"></asset:javascript>
    <asset:javascript src="jquery.masonry.min.js"></asset:javascript>
    <asset:javascript src="jquery.knob.modified.js"></asset:javascript>
    <asset:javascript src="jquery.sparkline.min.js"></asset:javascript>
    <asset:javascript src="counter.js"></asset:javascript>
    <asset:javascript src="retina.js"></asset:javascript>
    <asset:javascript src="custom.js"></asset:javascript>

</head>
<body>
<div class="container-fluid-full" style="background: linear-gradient(lavender, coral);">
    <div class="row-fluid">

        <div class="row-fluid">
            <div class="login-box">
                <div class="icons">
                    <a href="index.html"><i class="halflings-icon home"></i></a>
                    <a href="#"><i class="halflings-icon cog"></i></a>
                </div>
                <h2>Login to your account</h2>
                <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' autocomplete='off'>
                %{--<form class="form-horizontal" action="index.html" method="post">--}%
                    <fieldset>

                        <div class="input-prepend" title="Username">
                            <span class="add-on"><i class="halflings-icon user"></i></span>
                            <input class="input-large span10" name="j_username" id="username" type="text" placeholder="type username"/>
                        </div>
                        <div class="clearfix"></div>

                        <div class="input-prepend" title="Password">
                            <span class="add-on"><i class="halflings-icon lock"></i></span>
                            <input class="input-large span10" name="j_password" id="password" type="password" placeholder="type password"/>
                        </div>
                        <div class="clearfix"></div>

                        <label class="remember" for="remember_me"><input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>Remember me</label>

                        <div class="button-login">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                        <div class="clearfix"></div>
                </form>
                <hr>
                <h3>Forgot Password?</h3>
                <p>
                    No problem, <a href="#">click here</a> to get a new password.
                </p>
            </div><!--/span-->
        </div><!--/row-->


    </div><!--/.fluid-container-->

</div><!--/fluid-row-->














%{--<div class="container-fluid-full">--}%
    %{--<div class="row-fluid">--}%

        %{--<div class="row-fluid">--}%
            %{--<div class="login-box">--}%
                %{--<div class="icons">--}%
                    %{--<a href="index.html"><i class="halflings-icon home"></i></a>--}%
                    %{--<a href="#"><i class="halflings-icon cog"></i></a>--}%
                %{--</div>--}%
                %{--<h2>Login to your account</h2>--}%
                %{--<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>--}%
                    %{--<fieldset>--}%

                        %{--<div class="input-prepend" title="Username">--}%
                            %{--<span class="add-on"><i class="halflings-icon user"></i></span>--}%
                            %{--<input  name="username" id="username" />--}%
                            %{--<input type='text' class="input-large span10 text_" name='j_username' id='username' placeholder="type username"/>--}%
                        %{--</div>--}%
                        %{--<div class="clearfix"></div>--}%

                        %{--<div class="input-prepend" title="Password">--}%
                            %{--<span class="add-on"><i class="halflings-icon lock"></i></span>--}%
                            %{--<input type='password' class='input-large span10 text_' name='j_password' id='password' placeholder="type password"/>--}%
                        %{--</div>--}%
                        %{--<div class="clearfix"></div>--}%

                        %{--<label class="remember" for="remember">--}%
                            %{--<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--}%
                            %{--<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>--}%
                        %{--</label>--}%


                        %{--<div class="button-login">--}%
                            %{--<button type="submit" class="btn btn-primary">Login</button>--}%
                        %{--</div>--}%
                        %{--<div class="clearfix"></div>--}%
                %{--</form>--}%
                %{--<hr>--}%
                %{--<h3>Forgot Password?</h3>--}%
                %{--<p>--}%
                    %{--No problem, <a href="#">click here</a> to get a new password.--}%
                %{--</p>--}%
            %{--</div><!--/span-->--}%
        %{--</div><!--/row-->--}%


    %{--</div><!--/.fluid-container-->--}%

%{--</div><!--/fluid-row-->--}%















%{--<div id='login'>--}%
    %{--<div class='inner'>--}%
        %{--<div class='fheader'><g:message code="springSecurity.login.header"/></div>--}%

        %{--<g:if test='${flash.message}'>--}%
            %{--<div class='login_message'>${flash.message}</div>--}%
        %{--</g:if>--}%

        %{--<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>--}%
            %{--<p>--}%
                %{--<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>--}%
                %{--<input type='text' class='text_' name='j_username' id='username'/>--}%
            %{--</p>--}%

            %{--<p>--}%
                %{--<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>--}%
                %{--<input type='password' class='text_' name='j_password' id='password'/>--}%
            %{--</p>--}%

            %{--<p id="remember_me_holder">--}%
                %{--<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--}%
                %{--<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>--}%
            %{--</p>--}%

            %{--<p>--}%
                %{--<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>--}%
            %{--</p>--}%
        %{--</form>--}%
    %{--</div>--}%
%{--</div>--}%
</body>
</html>