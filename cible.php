<?php
$bd=("host=localhost port=5432 dbname=dbpoireau_ok user=marjorie password=greenday2511");
$connect=pg_connect($bd);


// Déclaration perte produit______________________________________________________________

$quantite=$_POST['qteperte'];
$produit=$_POST['produitperte'];

$connect=pg_query("INSERT INTO stock (pro_nom, sto_pert)
                    VALUE ('".$quantite."', '".$produit."');");


// ajout ventes____________________________________________________________________________

$heure=$_POST['time'];
$ville=$_POST['city'];
$qtevendu=$_POST['qtevente'];
$produitvendu=$_POST['produitvente'];

$connect=pg_query("INSERT INTO stock (ven_heur, vcom_code, con_qte, cpro_id)
                    VALUE ('".$heure."', '".$ville."', '".$qtevendu."', '".$produitvendu."');");











?>