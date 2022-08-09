<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="CategoriaProducto.aspx.cs" Inherits="Tienda.CategoriaProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="d2">
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <a href="CategoriaProducto.aspx?tipo=<%#Eval("TIPO_PRODUCTO")%>">
                    <img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>" alt=""/>
                </a> 
            </div>
        </div>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>
