

-- permettre l’affichage du stock de chaque fruit ou légume quel que soit le moment de la 
-- journée.
    ---Calcul stock (stock entré -perte - vente)
    SELECT pro_nom, sum(st) 
    FROM (SELECT pro_leg,pro_nom, -sto_qte as st
    FROM stock
    INNER JOIN produit ON pro_id=spro_id
    WHERE sto_pert = True
    UNION
    SELECT pro_leg, pro_nom, sto_qte as st
    FROM stock
    INNER JOIN produit ON pro_id=spro_id
    WHERE sto_pert = False
    UNION 
    SELECT pro_leg, pro_nom, -con_qte as st
    FROM contenu
    INNER JOIN produit ON cpro_id = pro_id) as s
    GROUP BY pro_leg,pro_nom
    ORDER BY  pro_leg,pro_nom;



-- envoyer une alerte sur la page d’accueil de l’interface dès qu’il lui reste 5kg ou 5 
-- unités d’un produit afin de pouvoir contacter au plus vite son fournisseur
    SELECT pro_nom, sto_qte
    FROM stock
    INNER JOIN produit ON spro_id=pro_id
    WHERE sto_qte<'5';

-- imprimer une fiche récapitulative contenant pour chaque fruit et chaque légume, 
-- la quantité restante, la quantité jetée et la quantité vendue sur les 7 derniers jours. 
-- La liste doit être triée par catégorie (fruit ou légume) et par ordre alphabétique


-- permettre à l’utilisateur d’ajouter du stock pour chaque produit lorsqu’il est livré


-- permettre à l’utilisateur d’indiquer la quantité perdue d’un fruit ou d’un légume
ok

-- permettre à l’utilisateur d’entrer les ventes
ok


-- visualiser, sur un page ‘géomarketing’, les 5 communes les plus consommatrices de ses 
-- produits, en temps réel.


-- Imprimer, à partir de la page ‘géomarketing’, un bilan sur une période de 30 jours ou 
-- sur l’année contenant, pour chaque commune, la quantité de fruits consommée, la quantité de légumes consommée et la quantité totale consommée. La liste doit être triée par ordre décroissant de la quantité totale.
