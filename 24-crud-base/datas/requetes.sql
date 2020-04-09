# Toutes les données de utilisateur
SELECT  * FROM utilisateur;

# toutes les données de thepage
SELECT * FROM thepage;

# Sélectionnez tous les champs de la table (*) thepage en joignant les utilisateurs (idutilisateur, thelogin,thename) qui ont écrit ces pages
SELECT thepage.*, 
				utilisateur.idutilisateur, utilisateur.thelogin, utilisateur.thename
FROM thepage
	INNER JOIN utilisateur
    ON thepage.utilisateur_idutilisateur = utilisateur.idutilisateur
;

# Sélectionnez tous les champs de la table (*) thepage en joignant les utilisateurs (idutilisateur, thelogin,thename) qui ont écrit ces pages IDEM + alias internes (le nom des tables thepage => t et utilisateur =>u) ! je n'utilise pas la AS même si il fonctionne, pour ne pas le confondre avec les alias externes (noms des champs en sortie)
SELECT t.*, 
				u.idutilisateur, u.thelogin, u.thename
FROM thepage t
	INNER JOIN utilisateur u
    ON t.utilisateur_idutilisateur = u.idutilisateur
;
# IDEM mais avec des alias de sorties ! Utilisation du AS pour "voir" les noms des champs exportés (vers php etc....)

SELECT t.*, 
				u.idutilisateur AS id, u.thelogin AS login, u.thename AS nom
FROM thepage t
	INNER JOIN utilisateur u
    ON t.utilisateur_idutilisateur = u.idutilisateur
;

# idem sans le champs utilisateur_idutilisateur trié par u.thedate descendant
SELECT t.*, 
				u.idutilisateur AS id, u.thelogin AS login, u.thename AS nom
FROM thepage t
	INNER JOIN utilisateur u
    ON t.utilisateur_idutilisateur = u.idutilisateur
;
