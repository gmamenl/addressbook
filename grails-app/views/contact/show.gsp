
<%@ page import="es.codemotion.Contact" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contact" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contact">
			
				<g:if test="${contactInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contact.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contactInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.surname1}">
				<li class="fieldcontain">
					<span id="surname1-label" class="property-label"><g:message code="contact.surname1.label" default="Surname1" /></span>
					
						<span class="property-value" aria-labelledby="surname1-label"><g:fieldValue bean="${contactInstance}" field="surname1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.surname2}">
				<li class="fieldcontain">
					<span id="surname2-label" class="property-label"><g:message code="contact.surname2.label" default="Surname2" /></span>
					
						<span class="property-value" aria-labelledby="surname2-label"><g:fieldValue bean="${contactInstance}" field="surname2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="contact.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${contactInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="contact.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${contactInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="contact.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${contactInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="contact.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${contactInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.idCard}">
				<li class="fieldcontain">
					<span id="idCard-label" class="property-label"><g:message code="contact.idCard.label" default="Id Card" /></span>
					
						<span class="property-value" aria-labelledby="idCard-label"><g:fieldValue bean="${contactInstance}" field="idCard"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="contact.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="contact.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${contactInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="contact.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${contactInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="contact.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${contactInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="contact.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${contactInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="contact.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${contactInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contactInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="contact.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${contactInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contactInstance?.id}" />
					<g:link class="edit" action="edit" id="${contactInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
