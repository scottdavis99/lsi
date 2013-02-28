<%@ page import="net.lsi.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="event.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${eventInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'participant', 'error')} ">
	<label for="participant">
		<g:message code="event.participant.label" default="Participant" />
		
	</label>
	<g:select id="participant" name="participant.id" from="${net.lsi.User.list()}" optionKey="id" value="${eventInstance?.participant?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="event.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${eventInstance?.eventDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'labels', 'error')} ">
	<label for="labels">
		<g:message code="event.labels.label" default="Labels" />
		
	</label>
	<g:textField name="labels" value="${eventInstance?.labels}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="event.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${eventInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="event.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${net.lsi.User.list()}" optionKey="id" required="" value="${eventInstance?.owner?.id}" class="many-to-one"/>
</div>

