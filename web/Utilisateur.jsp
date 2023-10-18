<%-- 
    Document   : Produit
    Created on : 6 oct. 2023, 21:18:55
    Author     : hp
--%>


<%@page import="ma.projet.entities.Utilisateur"%>
<%@page import="ma.projet.entities.Categorie"%>
<%@page import="ma.projet.services.CategorieService"%>
<%@page import="java.util.List"%>
<%@page import="ma.projet.entities.Produit"%>
<%@page import="ma.projet.services.UtilisateurService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Inclure les fichiers Bootstrap via CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion des Utilisateurs</title>

    </head>

    <body>

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
                    <li class="nav-item"><a class="nav-link" href="Utilisateur.jsp">Utilisateur</a></li>
                </ul>
            </div>
        </nav>

        <div class="container mt-5">
            <%
                String action = request.getParameter("action");
                UtilisateurService produitService = new UtilisateurService();
                if (action != null && action.equals("modifier")) {
                    int ProduitId = Integer.parseInt(request.getParameter("id"));
                    Utilisateur produit = produitService.getById(ProduitId);
            %>

            <form action="UtilisateurController">
                <fieldset>
                    <legend>Modifier un Utilisateur</legend><br><br>


                    <% if (produit != null) {%>
                    <input type="hidden" name="id" value="<%= produit.getId()%>"/>
                    <% }%>


                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="nom" class="form-label">Nom</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" id="nom" name="nom" value="<%= (produit != null) ? produit.getNom() : ""%>">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="prenom" class="form-label">Prénom</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" id="prenom" name="prenom" value="<%= (produit != null) ? produit.getNom() : ""%>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="role" class="form-label">Role</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" id="role" name="role" value="<%= (produit != null) ? produit.getRole() : ""%>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="telephone" class="form-label">Telephone</label>
                        </div>
                        <div class="col-md-4">
                            <input type="tel" class="form-control" id="telephone" name="telephone" value="<%= (produit != null) ? produit.getTelephone() : ""%>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="adresse" class="form-label">Adresse</label>
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" id="adresse" name="adresse" value="<%= (produit != null) ? produit.getAdresse() : ""%>">
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-2">
                            <label for="telephone" class="form-label">Telephone</label>
                        </div>
                        <div class="col-md-4">
                            <input type="tel" class="form-control" id="telephone" name="telephone" value="<%= (produit != null) ? produit.getTelephone() : ""%>">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-primary" name="modifier" style="width: 200px; margin-left: 190px;" value="Modifier">Modifier</button>
                        </div>
                    </div>
                </fieldset>
            </form>

            <%
            } else {
            %>


            <div class="container mt-5">
                <form action="UtilisateurController" method="post">
                    <fieldset>
                        <legend>Gestion des Utilisateurs</legend><br><br>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <label for="nom" class="form-label">Nom</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="nom" name="nom" value="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <label for="prenom" class="form-label">Prénom</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="prenom" name="prenom" value="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <label for="role" class="form-label">Role</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="role" name="role" value="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <label for="telephone" class="form-label">Telephone</label>
                            </div>
                            <div class="col-md-4">
                                <input type="tel" class="form-control" id="telephone" name="telephone" value="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <label for="adresse" class="form-label">Adresse</label>
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="adresse" name="adresse" value="">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-primary" name="valider" style="width: 200px; margin-left: 190px;">Valider</button>
                            </div>
                        </div>
                    </fieldset>
                </form>


                <%
                    }
                %>

                <div class="container mt-5">
                    <fieldset><br><br>
                        <legend>Liste des Utilisateurs</legend><br><br>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Nom</th>
                                    <th>Prenom</th>
                                    <th>role</th>
                                    <th>Telephone</th>
                                    <th>Adresse</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    UtilisateurService us = new UtilisateurService();
                                    for (Utilisateur u : us.findAll()) {
                                %>
                                <tr>
                                    <td><%= u.getNom()%></td>
                                    <td><%= u.getPrenom()%></td>
                                    <td><%= u.getRole()%></td>
                                    <td><%= u.getTelephone()%></td>
                                    <td><%= u.getAdresse()%></td>
                                    <td>
                                        <a href="UtilisateurController?op=delete&id=<%=u.getId()%>" class="btn btn-danger">Supprimer</a>
                                        <a href="?action=modifier&id=<%=u.getId()%>" class="btn btn-primary">Modifier</a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </fieldset>
                </div>

            </div>
    </body>

</html>