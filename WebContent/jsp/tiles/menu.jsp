<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Menu</title>
</head>
<body>
	<h1>Menu</h1>
	<p align="center">
		<img src="img/logo.png" />
	</p>
	<p align="center">
		<logic:present name="utilisateurConnecteDto" scope="session">
			Bienvenue <bean:write name="utilisateurConnecteDto" property="nom"
				scope="session" /> (<bean:write name="utilisateurConnecteDto"
				property="profil" scope="session" />)
		</logic:present>
		<logic:notPresent name="utilisateurConnecteDto" scope="session">
				Bienvenue Visiteur
 	</logic:notPresent>
	</p>

	<!-- La liste des liens -->
	<ul>
		<logic:notPresent name="utilisateurConnecteDto" scope="session">
			<li><a href="goToConnexion.do">Se connecter</a></li>
		</logic:notPresent>
		<logic:present name="utilisateurConnecteDto" scope="session">
			<logic:equal name="utilisateurConnecteDto" property="profil"
				scope="session" value="client">
				<li><a href="goToCatalogue.do">Accueil</a></li>
				<li><a href="goToMonPanier.do">Mon Panier</a></li>
				<li><a href="goToMesCommandes.do">Mes commandes</a></li>
				<li><a href="goToDeconnexion.do">Se deconnecter</a></li>
			</logic:equal>
			<logic:equal name="utilisateurConnecteDto" property="profil"
				scope="session" value="admin">
				<li><a href="goToCatalogue.do">Accueil</a></li>
				<li><a href="goToMonPanier.do">Mon Panier</a></li>
				<li><a href="goToMesCommandes.do">Mes commandes</a></li>
				<li><a href="goToGestionProduits.do">Gestion de produits</a></li>
				<li><a href="goToDeconnexion.do">Se deconnecter</a></li>
			</logic:equal>
		</logic:present>
	</ul>
</body>
</html>