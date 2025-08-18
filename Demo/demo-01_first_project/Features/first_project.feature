# Created by Jerem at 18/08/2025
Feature: Mon premier projet 800
  Lobjectif est de découvrir la syntaxe de base de Gherkin en Python avec Behave

  Scenario: Test de mon premier scénario

    Given J'ouvre mon terminal "Powershell"
    When Je me déplace dans le répertoire : "C:\Users\T1000 et plus\Desktop\Formation ENI\Cours BDD"
    And J'affiche le contenu avec "dir"
      |Type       |Nom      |Poids  |
      |Directory  |Rep01    |254    |
      |File       |File01   |35     |
      |Directory  |Rep02    |4569   |
      |Directory  |Rep03    |42     |
      |File       |File02   |54     |
    And Je regarde le contenu du répertoire
    Then Je ferme le répertoire