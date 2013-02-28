
<%@ page import="net.lsi.Email" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-email" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-email" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list email">
			
				<g:if test="${emailInstance?.fromAddress}">
				<li class="fieldcontain">
					<span id="fromAddress-label" class="property-label"><g:message code="email.fromAddress.label" default="From Address" /></span>
					
						<span class="property-value" aria-labelledby="fromAddress-label"><g:fieldValue bean="${emailInstance}" field="fromAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.toAddresses}">
				<li class="fieldcontain">
					<span id="toAddresses-label" class="property-label"><g:message code="email.toAddresses.label" default="To Addresses" /></span>
					
						<span class="property-value" aria-labelledby="toAddresses-label"><g:fieldValue bean="${emailInstance}" field="toAddresses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.ccAddresses}">
				<li class="fieldcontain">
					<span id="ccAddresses-label" class="property-label"><g:message code="email.ccAddresses.label" default="Cc Addresses" /></span>
					
						<span class="property-value" aria-labelledby="ccAddresses-label"><g:fieldValue bean="${emailInstance}" field="ccAddresses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.bccAddresses}">
				<li class="fieldcontain">
					<span id="bccAddresses-label" class="property-label"><g:message code="email.bccAddresses.label" default="Bcc Addresses" /></span>
					
						<span class="property-value" aria-labelledby="bccAddresses-label"><g:fieldValue bean="${emailInstance}" field="bccAddresses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="email.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${emailInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.body}">
				<li class="fieldcontain">
					<span id="body-label" class="property-label"><g:message code="email.body.label" default="Body" /></span>
					
						<span class="property-value" aria-labelledby="body-label"><g:fieldValue bean="${emailInstance}" field="body"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="email.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${emailInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="email.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${emailInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emailInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="email.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${emailInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${emailInstance?.id}" />
					<g:link class="edit" action="edit" id="${emailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
