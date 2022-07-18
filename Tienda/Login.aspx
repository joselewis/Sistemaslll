<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tienda.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar Sesión</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="Login/css/style.css">
</head>
<body class="img js-fullheight" style="background-image: url(Login/images/LoginFondo.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login #10</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      	<form runat="server" action="#" class="signin-form">
		      		<div class="form-group">
						<asp:TextBox runat="server" ID="CajaUsuario" type="text" class="form-control" placeholder="Username" required></asp:TextBox>
		      		</div>
	            <div class="form-group">
	              <asp:TextBox runat="server" ID="CajaContrasenna" type="password" class="form-control" placeholder="Password" required></asp:TextBox>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<asp:Button runat="server" ID="BotonIniciarSesion" OnClick="BotonIniciarSesion_Click" Text="Ingresar" class="form-control btn btn-primary submit px-3"></asp:Button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Remember Me
							<input type="checkbox" checked>
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="w-50 text-md-right">
						<a href="RegistrarUsuario.aspx" style="color: #fff">Registrarse</a>
					</div>
	            </div>
	          </form>
	          <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>
	<script src="Login/js/jquery.min.js"></script>
	<script src="Login/js/popper.js"></script>
	<script src="Login/js/bootstrap.min.js"></script>
	<script src="Login/js/main.js"></script>
</body>
</html>
