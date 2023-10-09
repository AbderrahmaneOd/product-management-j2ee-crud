<%-- 
    Document   : Commande
    Created on : 8 oct. 2023, 17:13:08
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ma.projet.services.CategorieService"%>
<%@page import="ma.projet.entities.Categorie"%>
<%@page import="ma.projet.services.CommandeService"%>
<%@page import="ma.projet.entities.Produit"%>

<%@page import="ma.projet.services.ProduitService"%>
<%@page import="ma.projet.entities.Commande"%>
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
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div >
            <a class="navbar-brand" href="">
                <img src="produit.png" style="margin-left: 80px;" alt="Logo" width="30" height="30">

            </a>
        </div>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="Categorie.jsp">Categorie</a></li>
                <li class="nav-item"><a class="nav-link" href="Produit.jsp">Produit</a></li>
                <li class="nav-item"><a class="nav-link" href="Commande.jsp">Commande</a></li>


            </ul>
        </div>
    </nav>
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
                            <button type="submit" class="btn btn-primary" name="valider" style="width: 200px; margin-left: 190px;">
                                Valider</button>
                        </div>
                    </div>
                </fieldset>
            </form>


            <fieldset><br><br>
                <legend>Liste des commandes</legend><br><br>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            CommandeService ps = new CommandeService();
                            for (Commande c : ps.findAll()) {
                        %>
                        <tr>
                            <td><%= c.getId()%></td>
                            <td><%= c.getDate()%></td>
                            <td>
                                <a href="ProduitController?op=delete&id=<%=c.getId()%>" class="btn btn-danger">Supprimer</a>
                                <a href="" class="btn btn-primary">Modifier</a>
                            </td>
                            <%}%>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
        </div>

        <!-- Inclure le JavaScript de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>

