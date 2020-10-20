<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
   
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="css/login.css">
    <title>Login SysTec Freitas</title>
</head>
<body>



<div class="container">
    <div class="card card-login mx-auto text-center bg-dark">
        <div class="card-header mx-auto bg-dark">
            <span> <img src="img/systecmorais2.png" class="w-75" alt="Logo"> </span><br/>

                        <span class="logo_title mt-5"> Faça Seu Login</span>

                        <?php 
                        if(isset($_SESSION['nao_autenticado'])): ?>
                            <p><small><small> Usuário ou Senha Inválidos!  </small></small></p>
                       <?php 
                        endif;
                        unset($_SESSION['nao_autenticado']);
                        ?>
                         
                        


        </div>
        <div class="card-body">
            <form action="login.php" method="post">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>                         
                    <input type="text" name="usuario" class="form-control" placeholder="Usuário">
                </div>

                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                    </div>
                    <input type="password" name="senha" class="form-control" placeholder="Senha">
                </div>

                <div class="form-group">
                    <input type="submit" name="btn" value="Login" class="btn btn-outline-danger float-right login_btn">
                </div>

            </form>
        </div>
    </div>
</div>


</body>
</html>
