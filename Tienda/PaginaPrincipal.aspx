<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tienda.PaginaPrincipal1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
<asp:Repeater runat="server" ID="RepetidorImagenes">
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <img class="card-img-top"  src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>"/>
                <Center>
                    <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem,"MARCA")%> <%# DataBinder.Eval(Container.DataItem,"NOMBRE_PRODUCTO")%></h5>
                    <p class="card-text"><%# DataBinder.Eval(Container.DataItem,"DESCRIPCION_PRODUCTO")%></p>
                    <h6 class="card-text">₡<%# DataBinder.Eval(Container.DataItem,"PRECIO_PRODUCTO")%></h6> 
                </Center>  
            </div>
            <Center>
                <asp:Button runat="server" class="button" ID="BotonAgregarAlCarrito" Text="Agregar al carrito" OnClick="BotonAgregarAlCarrito_Click" />
            </Center>
            </br>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>
</asp:Content>

            