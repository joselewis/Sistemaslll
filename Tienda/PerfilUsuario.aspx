<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="Tienda.PerfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4>Mi perfil</h4>
<br />
<section style="background-color: #ffff;">
  <div class="container py-2">
    <div class="row">
      <div class="col-lg-3">
        <div class="card mb-3">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 250px;">
              <br />
              <br />
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
             <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Nombre:</p>
              </div>
              <div class="col-sm-9">
                <!------------------------------------NOMBRE PERFIL------------------------------------------------------------>
                <div runat="server" id="Nombre"></div>
                <!-------------------------------------FIN NOMBRE PERFIL----------------------------------------------------------->
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Usuario:</p>
              </div>
              <div class="col-sm-9">
                <div runat="server" id="NombreUsuario"></div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Correo:</p>
              </div>
              <div class="col-sm-9">
                <div runat="server" id="Correo"></div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Teléfono:</p>
              </div>
              <div class="col-sm-9">
                <div runat="server" id="Telefono"></div>
              </div>
            </div>
               <hr>
            <div class="row">
            <div class="d-flex justify-content-center mb-2">
              <asp:Button runat="server" type="button" class="btn btn-dark" Text="Cambiar método de pago" ID="IrMetodoPago" OnClick="IrMetodoPago_Click"></asp:Button>
            </div>
            </div>
          </div>
      </div>
    </div>
  </div>
</section>
</br>
</asp:Content>
