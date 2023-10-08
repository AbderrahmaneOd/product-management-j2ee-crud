<%-- 
    Document   : Commande
    Created on : 8 oct. 2023, 17:13:08
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ma.projet.services.CategorieService"%>
<%@page import="ma.projet.entities.Categorie"%>

<%@page import="ma.projet.services.ProduitService"%>
<%@page import="ma.projet.entities.Produit"%>
<!DOCTYPE html>




<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Inclure les fichiers Bootstrap via CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produit</title>
    </head>

    <body>
        <div class="container mt-5">
            <form action="CommandeController" method="post">
                <fieldset>
                    <legend>Gestion des Commande</legend><br><br>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="prix" class="form-label">Date:</label>
                        </div>
                        <div class="col-md-4">
                            <input type="date" class="form-control" id="date" name="date" value="">
                        </div>
                    </div>
                    
                    
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-primary" name="valider" style="width: 200px; margin-left: 190px;">Valider</button>
                        </div>
                    </div>
                </fieldset>
            </form>

          
        </div>

        <!-- Inclure le JavaScript de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>

