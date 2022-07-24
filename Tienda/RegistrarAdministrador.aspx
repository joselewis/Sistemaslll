<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="RegistrarAdministrador.aspx.cs" Inherits="Tienda.RegistrarAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="css/RegistroAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h4>Ingresar nuevo administrador</h4>
        </br>
        <div class="formulario">
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" ID="ReCajaAdminNombre"></asp:TextBox>
                <label for="floatingInput">Nombre</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control " id="ReCajaAdminApellido1"></asp:TextBox>
                <label for="floatingInput">Primer apellido</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaAdminApellido2"></asp:TextBox>
                <label for="floatingInput">Segundo apellido</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaAdminNomUsuario"></asp:TextBox>
                <label for="floatingInput">Nombre de usuario</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="email" class="form-control" id="ReCajaAdminCorreo"></asp:TextBox>
                <label for="floatingInput">Correo</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="password" class="form-control" id="ReCajaAdminContrasenna"></asp:TextBox>
                <label for="floatingPassword">Contraseña</label>
            </div>
            <div class="form-floating mb-2">
                <asp:TextBox runat="server" type="text" class="form-control" id="ReCajaTelefono"></asp:TextBox>
                <label for="floatingPassword">Teléfono</label>
            </div>
            <div class="d-grid gap-2 col-4 mx-auto">
                <asp:Button class="btn btn-dark" type="button" runat="server" id="Boton_Ingresar_Admin" OnClick="Boton_Ingresar_Admin_Click" Text="Ingresar a dministrador"></asp:Button>
            </div>
       </div>
    <br />
</asp:Content>
