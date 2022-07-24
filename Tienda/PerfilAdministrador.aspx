<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="PerfilAdministrador.aspx.cs" Inherits="Tienda.PerfilAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4>Bienvenido Administrador</h4>
<br />
<section style="background-color: #ffff;">
  <div class="container py-2">
    <div class="row">
      <div class="col-lg-3">
        <div class="card mb-3">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 130px;">
              <br />
              <br />
            <div class="d-flex justify-content-center mb-2">
              <button type="button" class="btn btn-dark">Cambiar foto</button>
            </div>
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
                <div runat="server" id="NombreAdministrador"></div>
                <!-------------------------------------FIN NOMBRE PERFIL----------------------------------------------------------->
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Usuario:</p>
              </div>
              <div class="col-sm-9">
                <div runat="server" id="NombreUsuarioAdministrador"></div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Correo:</p>
              </div>
              <div class="col-sm-9">
                    <div runat="server" id="CorreoAdministrador"></div>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-2">
                <p class="mb-0">Teléfono:</p>
              </div>
              <div class="col-sm-9">
                <div runat="server" id="TelefonoAdministrador"></div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>
</section>
</br>
</asp:Content>
