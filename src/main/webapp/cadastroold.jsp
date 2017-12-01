<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="jpa.Usuario"%>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mão Na Roda - Cadastro</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.jsp">Mão Na Roda</a>
      
      </div>
    </nav>
   

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('img/cont-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="page-heading">
            
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                        <p></p>
                        <form>
                          
                          <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                              <label>Nome</label>
                              <input type="text" class="form-control" placeholder="Nome" id="nome" name="nome" required data-validation-required-message="Digite seu nome.">
                              <p class="help-block text-danger"></p>
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
                            <button name="operacao" value="cadastrar" class="btn btn-secondary">Cadastrar</button>
                          </div>
                        </form>
                      </div>
        </div>
    </div>

    <hr>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/clean-blog.min.js"></script>

  </body>

</html>
