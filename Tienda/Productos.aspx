<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Tienda.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <asp:Repeater runat="server" ID="d1">
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <a href="ProductoEspecifico.aspx?id=<%#Eval("CODIGO_PRODUCTO")%>">
                    <img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>" alt=""/>
                </a>
                <%--<Center>
                    <img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>"/>
                    <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem,"MARCA")%> <%# DataBinder.Eval(Container.DataItem,"NOMBRE_PRODUCTO")%></h5>
                    <p class="card-text"><%# DataBinder.Eval(Container.DataItem,"DESCRIPCION_PRODUCTO")%></p>
                    <h6 class="card-text">₡<%# DataBinder.Eval(Container.DataItem,"PRECIO_PRODUCTO")%></h6> 
                </Center>--%>  
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>  
<asp:Label ID="lblError" runat="server" ForeColor="Lime" Text="Error" Visible="False"></asp:Label>
</asp:Content>
