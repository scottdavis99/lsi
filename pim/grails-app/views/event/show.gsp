
<%@ page import="net.lsi.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="event.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.participant}">
				<li class="fieldcontain">
					<span id="participant-label" class="property-label"><g:message code="event.participant.label" default="Participant" /></span>
					
						<span class="property-value" aria-labelledby="participant-label"><g:link controller="user" action="show" id="${eventInstance?.participant?.id}">${eventInstance?.participant?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="event.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${eventInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="event.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${eventInstance?.eventDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.labels}">
				<li class="fieldcontain">
					<span id="labels-label" class="property-label"><g:message code="event.labels.label" default="Labels" /></span>
					
						<span class="property-value" aria-labelledby="labels-label"><g:fieldValue bean="${eventInstance}" field="labels"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="event.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${eventInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="event.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${eventInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="event.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${eventInstance?.owner?.id}">${eventInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
