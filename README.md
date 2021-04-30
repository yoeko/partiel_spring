<<<<<<< HEAD
# GestionEcoleSpringWebService
=======
# partiel_spring

Ce projet est un projet(webservice) springboot

## Desccription

Ce webservice permet la gestion d'établissement qui permet à un administrateur de pouvoir
* Ajouter, Modifier, Supprimer, Lister et rechercher un étudiant
* Ajouter, Modifier, Supprimer, Lister et rechercher un cours
* Associer un cours à un étudiant

## Prérequis

* Cloner le projet. [Clonez un repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
* Editeur de code. [Eclipse](https://www.eclipse.org/downloads/packages/installer)
* Logiciel pour pour tester des webservices http. [Postman](https://www.postman.com/downloads/)
* [MySql](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/)

## Démarrer

### Tester le webservice

* Créer une base de données mysql : jpagestionensup3
* Importer le fichier sql à la racine du projet cloné : jpagestionensup3.sql*
* Modifier les informations de connexion à votre base données selon votre configuration
* * spring.datasource.driver-class-name = com.mysql.cj.jdbc.Driver
* * spring.datasource.url=jdbc:mysql://localhost:3306/jpagestionensup3useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
* * spring.datasource.username = root
* * spring.datasource.password = 
* Accéder en ligne de commande au projet dans le répertoire ou vous l'avez clonez
* Exécuter le projet spingboot avec la commande: mvn spring-boot:run
* Tester le webservice en accédant au lien suivant [http://localhost:8081/SpringMVC/servlet/student/detail/1](http://localhost:8081/SpringMVC/servlet/student/detail/1).
>>>>>>> e5ffa41b78229a99b65bc01d5c75f674042451d2
