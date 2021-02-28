# partiel_spring

Ce projet est un projet(webservice) springboot

## Prérequis

* Cloner le projet. [Clonez un repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
* Editeur de code. [Eclipse](https://www.eclipse.org/downloads/packages/installer)
* Logiciel pour pour tester des webservices http. [Postman](https://www.postman.com/downloads/)

## Démarrer

### Exécuter les tests unitaire

* Importer le projet dans Eclipse
* Exécuter la classe de test src/test/java/eu/ensup/partiel_spring/CourseServiceTest.java

### Tester le webservice

* Accéder en ligne de commande au projet dans le répertoire ou vous l'avez clonez
* Exécuter le projet spingboot avec la commande: mvn spring-boot:run
* Tester le webservice en accédant au lien suivant [http://localhost:8081/SpringMVC/servlet/student/detail/1](http://localhost:8081/SpringMVC/servlet/student/detail/1) dans votre outil de test de webservice.