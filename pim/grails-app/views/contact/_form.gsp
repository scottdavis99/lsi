<%@ page import="net.lsi.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="150" required="" value="${contactInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="contact.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${contactInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="contact.phone.label" default="Phone" />
		
	</label>
	<g:field type="tel" name="phone" value="${contactInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="contact.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="300" value="${contactInstance?.address}"/>
</div>

