<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Tienda.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Item - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <asp:Repeater runat="server" ID="RepetidorImagenes">
        <ItemTemplate>
            <div class="card" style="width: 17rem;">
                <div class="card-body ">
                    <img class="card-img-top"  src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>"/>
                    <Center>
                        <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem,"NOMBRE_PRODUCTO")%></h5>
                        <p class="card-text"><%# DataBinder.Eval(Container.DataItem,"DESCRIPCION_PRODUCTO")%></p>
                        <h6 class="card-text">₡<%# DataBinder.Eval(Container.DataItem,"PRECIO_PRODUCTO")%></h6> 
                    </Center>  
                </div>
                <Center>
                    <asp:Button runat="server" ID="VerProducto" class="btn btn-dark" Text="Ver" OnClick="VerProducto_Click"></asp:Button>
                </Center>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<asp:Label ID="lblConsultaImagen" runat="server" ForeColor="Lime" Visible="True"></asp:Label>
</asp:Content>
