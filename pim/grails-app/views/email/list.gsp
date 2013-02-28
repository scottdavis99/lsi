
<%@ page import="net.lsi.Email" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'email.label', default: 'Email')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-email" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-email" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fromAddress" title="${message(code: 'email.fromAddress.label', default: 'From Address')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'email.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="body" title="${message(code: 'email.body.label', default: 'Body')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'email.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'email.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'email.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${emailInstanceList}" status="i" var="emailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${emailInstance.id}">${fieldValue(bean: emailInstance, field: "fromAddress")}</g:link></td>
					
						<td>${fieldValue(bean: emailInstance, field: "subject")}</td>
					
						<td>${fieldValue(bean: emailInstance, field: "body")}</td>
					
						<td><g:formatDate date="${emailInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${emailInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: emailInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${emailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
