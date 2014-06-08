<%@ page contentType="text/html;charset=UTF-8" language="java"
	trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util"%>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld"%>

<%-- Emppty dust.js template --%>

<h1>Contestacao - 1a Etapa</h1>

<c:if test="${not empty mensagemErro}">
	<h3>${mensagemErro}</h3>
</c:if>

<form:form id="validacaoForm" action="/bdic3/contestacao/contestacao2" modelAttribute="contestacaoVO" method="POST">
	<label for="nomeCliente">Nome do Cliente</label>
	<form:input path="nomeCliente" />
	<br>
	<label for="cpfCliente">CPF do Cliente</label>
	<form:input path="cpfCliente" />
	<br>
	<button type="submit" class="btn btn-primary">Validar Cliente</button>
</form:form>