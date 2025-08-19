# Created by Jerem at 18/08/2025
Feature: Mon premier projet 800
  Lobjectif est de découvrir la syntaxe de base de Gherkin en Python avec Behave

Background:

    Given J'ouvre mon terminal "<Shell>"
    When Je me déplace dans le répertoire : "<Path>"
    And J'affiche le contenu avec "dir"
      |Type       |Nom      |Poids  |
      |Directory  |Rep01    |254    |
      |File       |File01   |35     |
      |Directory  |Rep02    |4569   |
      |Directory  |Rep03    |42     |
      |File       |File02   |54     |
    And Je regarde le contenu du répertoire
    Then Je ferme le répertoire

#Début scénario 1
  Scenario Outline: Test de mon premier scénario

#    Given J'ouvre mon terminal "<Shell>"
#    When Je me déplace dans le répertoire : "<Path>"
    Examples:
      |Shell      |Path           |
      |bash       |/home/yoda     |
      |cmd        |C:/Users/Yoda  |
      |pwsh       |PS:/users/yoda |

# Début scénario 2
  Scenario Outline: Démo 5 - Manipulation du background #1

#    Given J'ouvre mon terminal "<Shell>"
#    When Je me déplace dans le répertoire : "/home"
    Examples:
      |Shell      |Path           |
      |bash       |/home/yoda     |

# Début scénario 3
  Scenario Outline: Démo 5 - Manipulation du background #2

#    Given J'ouvre mon terminal "<Shell>"
#    When Je me déplace dans le répertoire : "<Path>"
    Examples:
      |Shell      |Path           |
      |pwsh       |PS:/users/yoda |
