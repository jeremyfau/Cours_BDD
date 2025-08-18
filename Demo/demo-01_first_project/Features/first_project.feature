# Created by Jerem at 18/08/2025
Feature: Mon premier projet 800
  Lobjectif est de découvrir la syntaxe de base de Gherkin en Python avec Behave

  Scenario Outline: Test de mon premier scénario

    Given J'ouvre mon terminal "<Shell>"
    When Je me déplace dans le répertoire : "<Path>"
    And J'affiche le contenu avec "dir"
#    Déclaration d'un tableau simple
      |Type       |Nom      |Poids  |
      |Directory  |Rep01    |254    |
      |File       |File01   |35     |
      |Directory  |Rep02    |4569   |
      |Directory  |Rep03    |42     |
      |File       |File02   |54     |
    And Je regarde le contenu du répertoire
    Then Je ferme le répertoire

  #    Défini les données des deux premiere commande (Shell et Path)
  #    Mis entre {nom de la table}
    Examples:
      |Shell      |Path           |
      |bash       |/home/yoda     |
      |cmd        |C:/Users/Yoda  |
      |pwsh       |PS:/users/yoda |