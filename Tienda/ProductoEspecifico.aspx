<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="ProductoEspecifico.aspx.cs" Inherits="Tienda.ProductoEspefico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater runat="server" ID="d1">
    <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <image id="ImagenEspecifica" class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>" alt="" OnRowDataBound="ImagenEspecifica_RowDataBound"/>
            </div>
            <center>
                <div class="card-body ">
                    <h5><%#Eval("NOMBRE_PRODUCTO") %></h5>
                </div>
                 <div class="card-body ">
                    <h6><%#Eval("DESCRIPCION_PRODUCTO") %></h6>
                </div>
                 <div class="card-body ">
                    <h7>Precio: <%#Eval("PRECIO_PRODUCTO") %></h7>
                </div>
                 <div class="card-body ">
                   <h8>Cantidad: <%#Eval("CANTIDAD_PRODUCTO") %></h8>
                </div>
            </center>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
<asp:Label ID="lblError" runat="server" ForeColor="Lime" Text="Error" Visible="False"></asp:Label>
</asp:Content>