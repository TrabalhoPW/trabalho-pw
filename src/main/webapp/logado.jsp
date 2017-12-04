<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/estilos.css"/>
	<! -- Incluindo CSS Bootstrap -->	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" 		crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-light cor justify-content-between">
  <a class="navbar-brand cor-logo-fonte" href="index.jsp">Mão na Roda</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0 bg-white text-dark" type="submit">Search</button>
    <button class="btn btn-outline-success my-2 my-sm-0 bg-white text-dark" type="submit" href="login.jsp">Sair</button>
  </form>
</nav>

<div class="usuario">
	<img src="img/user.png"/>	
		<a href="#">Minha Conta</a>
		<a href="#">Orçamentos</a>
</div>

<!--  <div id="conteudo">

	<div class="card">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h4 class="card-title">Faça Sua Pesquisa</h4>
    <p class="card-text">Encontre o serviço procurado com simplicidade e facilidade.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>-->

<div class="container">
        <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                        <p></p>
                        <form>
                          
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Altere Sua Senha!</label>
                            </div>
                          </div>
                          
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Login</label>
                              <input type="text" class="form-control" placeholder="Usuario" id="login" name="login" required data-validation-required-message="Digite o seu login.">
                              <p class="help-block text-danger"></p>
                            </div>
                          </div>

                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Senha</label>
                              <input type="password" class="form-control" placeholder="Senha" id="senha" name="senha"required data-validation-required-message="Digite sua senha..">
                              <p class="help-block text-danger"></p>
                            </div>
                          </div>

                          <br>
                          <div id="success"></div>
                          <div class="form-group">
                            <button name="operacao" value="alterar" class="btn btn-secondary">Cadastrar</button>
                          </div>
                        </form>
                      </div>
        </div>
    </div>

	<!-- Incluindo JQuery e BootStrap-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>
