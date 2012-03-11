<%@ page import="es.codemotion.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="contact.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${contactInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'surname1', 'error')} required">
	<label for="surname1">
		<g:message code="contact.surname1.label" default="Surname1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="surname1" required="" value="${contactInstance?.surname1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'surname2', 'error')} ">
	<label for="surname2">
		<g:message code="contact.surname2.label" default="Surname2" />
		
	</label>
	<g:textField name="surname2" value="${contactInstance?.surname2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="contact.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${es.codemotion.GenderType?.values()}" keys="${es.codemotion.GenderType.values()*.name()}" required="" value="${contactInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="contact.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${contactInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="contact.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${contactInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="contact.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${contactInstance?.zipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'idCard', 'error')} ">
	<label for="idCard">
		<g:message code="contact.idCard.label" default="Id Card" />
		
	</label>
	<g:textField name="idCard" value="${contactInstance?.idCard}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contact.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${contactInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="contact.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${contactInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="contact.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" value="${contactInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'birthDate', 'error')} ">
	<label for="birthDate">
		<g:message code="contact.birthDate.label" default="Birth Date" />
		
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${contactInstance?.birthDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="contact.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${contactInstance?.country}"/>
</div>

