<%@ page import="net.lsi.Email" %>



<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'fromAddress', 'error')} ">
	<label for="fromAddress">
		<g:message code="email.fromAddress.label" default="From Address" />
		
	</label>
	<g:textField name="fromAddress" value="${emailInstance?.fromAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'toAddresses', 'error')} ">
	<label for="toAddresses">
		<g:message code="email.toAddresses.label" default="To Addresses" />
	</label>
	<email:addressList name="toAddress" />
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'ccAddresses', 'error')} ">
	<label for="ccAddresses">
		<g:message code="email.ccAddresses.label" default="Cc Addresses" />
	</label>
	<email:addressList name="ccAddress" />
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'bccAddresses', 'error')} ">
	<label for="bccAddresses">
		<g:message code="email.bccAddresses.label" default="Bcc Addresses" />
	</label>
	<email:addressList name="bccAddress" />
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="email.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${emailInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'body', 'error')} ">
	<label for="body">
		<g:message code="email.body.label" default="Body" />
		
	</label>
	<g:textField name="body" value="${emailInstance?.body}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: emailInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="email.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${net.lsi.EmailStatus?.values()}" keys="${net.lsi.EmailStatus.values()*.name()}" required="" value="${emailInstance?.status?.name()}"/>
</div>

