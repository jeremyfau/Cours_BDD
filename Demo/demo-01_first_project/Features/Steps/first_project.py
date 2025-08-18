import time
import logging
from behave import *

# Création d'un logger pour enregistrer tous les évènements du programme
logger = logging.getLogger("First_project")
logger.setLevel(logging.INFO)

# Création d'un formatteur commun
# Liste des paramètres du Formatter ici :
# https://docs.python.org/3/library/logging.html#logrecord-attributes
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

# Création du handler (gestionnaire de sortie)
file_handler = logging.FileHandler('first_project.log', mode='a', encoding='utf-8')
file_handler.setLevel(logging.DEBUG)  # Niveau de log minimum à enregistrer dans le fichier
file_handler.setFormatter(formatter)

# Ajout du handler au logger
logger.addHandler(file_handler)


@given ("J'ouvre mon terminal")
def open_terminal(context):
    # Print pour savoir ou on en est
    print("J'ouvre mon terminal")
    # Enregistrement des évenements de la fonction
    logger.info("J'ouvre mon terminal")
    # Fonction pour ralentir le process
    time.sleep(2)

@when ("Je me déplace dans le répertoire : C:\\Users\T1000 et plus\Desktop\Formation ENI\Cours BDD")
def deplacer_dans_repertoire(context):
    print("Je me déplace dans le répertoire : C:\\Users\T1000 et plus\Desktop\Formation ENI\Cours BDD")
    logger.info("Je me déplace dans le répertoire : C:\\Users\T1000 et plus\Desktop\Formation ENI\Cours BDD")
    time.sleep(2)

@When ("J'affiche le contenu avec 'dir'")
def afficher_contenu(context):
    print("J'affiche le contenu avec 'dir'")
    logger.info("J'affiche le contenu avec 'dir'")
    time.sleep(2)


@when ("Je regarde le contenu du répertoire")
def regarder_contenu(context):
    print("Je regarde le contenu du répertoire")
    logger.info("Je regarde le contenu du répertoire")
    time.sleep(2)

@Then ("Je ferme le répertoire")
def close_repertoire(context):
    print("Je ferme le répertoire")
    logger.info("Je ferme le répertoire")
    time.sleep(2)