<%@ page import="com.rrmis.User" %>

<div class="row-fluid">
    <div class="span2"></div>
    <div class="span8">
        <div class="row-fluid">
            <div class="span3 fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
                <div class="span8">
                    <label for="username">
                        <g:message code="user.username.label" default="Username" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>
                <div class="span4">
                    <g:textField name="username" required="" value="${userInstance?.username}"/>
                </div>
            </div>
        </div>
        <g:if test="${!isEdit}">
        <div class="row-fluid">
            <div class="row-fluid span3 fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
                <div class="span8">
                    <label for="username">
                        <g:message code="user.password.label" default="Password" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>
                <div class="span4">
                    <g:textField name="password" required="" value="${userInstance?.password}"/>
                </div>
            </div>
        </div>
        </g:if>
        <div class="row-fluid">
            <div class="row-fluid span3 fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
                <div class="span8">
                    <label for="username">
                        <g:message code="user.name.label" default="Name" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>
                <div class="span4">
                    <g:textField name="name" required="" value="${userInstance?.name}"/>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span3 fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
                <div class="span8">
                    <label for="username">
                        <g:message code="user.email.label" default="Email" />
                        <span class="required-indicator">*</span>
                    </label>
                </div>
                <div class="span4">
                    <g:textField name="email" required="" value="${userInstance?.email}"/>
                </div>
            </div>
        </div>

    </div>

</div>

