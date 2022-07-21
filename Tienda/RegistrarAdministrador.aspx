<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="RegistrarAdministrador.aspx.cs" Inherits="Tienda.RegistrarAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/RegistroAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="Titulo">
        <h4>Ingresar nuevo administrador</h4>
        </br>
        <div class="formulario">
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" ID="ReCajaAdminNombre" placeholder="name@example.com"></asp:TextBox>
                <label for="floatingInput">Nombre</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaAdminApellido1" placeholder="name@example.com"></asp:TextBox>
                <label for="floatingInput">Apellido 1</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaAdminApellido2" placeholder="name@example.com"></asp:TextBox>
                <label for="floatingInput">Apellido 2</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaAdminNomUsuario" placeholder="name@example.com"></asp:TextBox>
                <label for="floatingInput">Nombre de usuario</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="email" class="form-control" id="ReCajaAdminCorreo" placeholder="name@example.com"></asp:TextBox>
                <label for="floatingInput">Correo</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="password" class="form-control" id="ReCajaAdminContrasenna" placeholder="Password"></asp:TextBox>
                <label for="floatingPassword">Contraseña</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaTelefono" placeholder="Teléfono"></asp:TextBox>
                <label for="floatingPassword">Teléfono</label>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <asp:Button class="btn btn-primary" type="button" runat="server" id="Boton_Ingresar_Admin" OnClick="Boton_Ingresar_Admin_Click" Text="Ingresar administrador" ></asp:Button>
            </div>
       </div>
    <br />
</asp:Content>
