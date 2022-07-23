<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="Tienda.PerfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Bienvenido</h4>
    <br />
    <div runat="server" id="Nombre"></div>
    <div runat="server" id="NombreUsuario"></div>
    <div runat="server" id="Correo"></div>
    <div runat="server" id="Telefono"></div>
    <br />
</asp:Content>
