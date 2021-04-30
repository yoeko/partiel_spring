# partiel_spring

Ce projet est un projet(webservice) springboot

## Prérequis

* Cloner le projet. [Clonez un repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
* Editeur de code. [Eclipse](https://www.eclipse.org/downloads/packages/installer)
* Logiciel pour pour tester des webservices http. [Postman](https://www.postman.com/downloads/)
* [MySql](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/)

## Démarrer

### Tester le webservice

* Créer une base de données mysql : jpagestionensup3
* Importer le fichier sql à la racine du projet cloné : jpagestionensup3.sql*
* Modifier les informations de connexion à votre base données selon votre configuratio
* * spring.datasource.driver-class-name = com.mysql.cj.jdbc.Driver
* * spring.datasource.url=jdbc:mysql://localhost:3306/jpagestionensup3useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
* * spring.datasource.username = root
* * spring.datasource.password = 
* Accéder en ligne de commande au projet dans le répertoire ou vous l'avez clonez
* Exécuter le projet spingboot avec la commande: mvn spring-boot:run
* Tester le webservice en accédant au lien suivant [http://localhost:8081/SpringMVC/servlet/student/detail/1](http://localhost:8081/SpringMVC/servlet/student/detail/1) dans votre outil de test de webservice.
