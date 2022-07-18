<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="Tienda.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <link href="Registro/Registro_Css.css" rel="stylesheet" />
    <script src="Registro/Registro_Js.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="css/RegistroUsuario.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form runat="server">
        <div class="Formulario">
            <div class="form-floating mb-2">
              <asp:TextBox runat="server" type="text" class="form-control" ID="ReCajaNombre" placeholder="name@example.com"></asp:TextBox>
              <label for="floatingInput">Nombre</label>
            </div>
            <div class="form-floating mb-2">
              <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaApellido1" placeholder="name@example.com"></asp:TextBox>
              <label for="floatingInput">Apellido 1</label>
            </div>
            <div class="form-floating mb-2">
              <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaApellido2" placeholder="name@example.com"></asp:TextBox>
              <label for="floatingInput">Apellido 2</label>
            </div>
            <div class="form-floating mb-2">
              <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaNomUsuario" placeholder="name@example.com"></asp:TextBox>
              <label for="floatingInput">Nombre de usuario</label>
            </div>
            <div class="form-floating mb-2">
              <asp:TextBox runat="server" type="email" class="form-control" id="ReCajaCorreo" placeholder="name@example.com"></asp:TextBox>
              <label for="floatingInput">Correo</label>
            </div>
            <div class="form-floating">
              <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaTelefono" placeholder="88888888"></asp:TextBox>
              <label for="floatingPassword">Teléfono</label>
            </div>
            <div class="form-floating">
              <asp:TextBox runat="server" type="password" class="form-control" id="ReCajaContrasenna" placeholder="Password"></asp:TextBox>
              <label for="floatingPassword">Contraseña</label>
            </div>
        </div> 
        <div class="d-flex justify-content-center">
            <asp:button runat="server" Text="Registrarse" ID="BotonRegistrarUsuario" OnClick="BotonRegistrarUsuario_Click" class="btn btn-black"/>
        </div>                   
    </form>
</body>
</html>
