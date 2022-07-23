<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="PerfilAdministrador.aspx.cs" Inherits="Tienda.PerfilAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Bienvenido Administrador</h4>
    <br />
    <div runat="server" id="NombreAdministrador"></div>
    <div runat="server" id="NombreUsuarioAdministrador"></div>
    <div runat="server" id="CorreoAdministrador"></div>
    <div runat="server" id="TelefonoAdministrador"></div>
    <br />
</asp:Content>
