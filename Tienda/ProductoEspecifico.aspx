<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ProductoEspecifico.aspx.cs" Inherits="Tienda.ProductoEspefico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Productos/ProductoEspecifico/CssProductoEspecifico.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater runat="server" ID="d1">
    <ItemTemplate>
		<section class="product">
			<div class="product__photo">
				<div class="photo-container">
					<div class="photo-main">
						<image id="ImagenEspecifica" class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>" alt="" OnRowDataBound="ImagenEspecifica_RowDataBound"/>
					</div>
				</div>
			</div>
			<div class="product__info">
				<div class="title">
					<h1><%#Eval("NOMBRE_PRODUCTO") %></h1>
					<span>Código: <h7><%#Eval("CODIGO_PRODUCTO")%></h7></span>
				</div>
				<div class="description">
					<h6><%#Eval("DESCRIPCION_PRODUCTO")%></h6>
				</div>
				<div class="description">
					<h8>Cantidad disponible: <%#Eval("CANTIDAD_PRODUCTO")%></h8>
				</div>
				<div class="price">
					₡ <span><h7>Precio: <%#Eval("PRECIO_PRODUCTO")%></h7></span>
				</div>
				<div class="price">
					<input id="CajaCantidad"/> 
					<%--<asp:TextBox ID="CajaCantidadProducto"  runat="server"  Text='<%#DataBinder.Eval(Container.DataItem, "SALARY")%>'></asp:TextBox>--%>
				</div>
				<asp:Button runat="server" ID="BotonAnnadirCarrito" OnClick="BotonAnnadirCarrito_Click" Text="Añadir al carrito" class="buy--btn" />
				
				<div class="product__info">
				<br />
				Categorias:<a href="CategoriaProducto.aspx?tipo=<%#Eval("TIPO_PRODUCTO")%>">
								<a href="CategoriaProducto.aspx?tipo=<%#Eval("TIPO_PRODUCTO")%>"><%#Eval("TIPO_PRODUCTO")%></a>
				           </a>
				</div>
				<%--<a> , </a><span><a href="PaginaPrincipal.aspx?marca"<%#Eval("MARCA")%>></a></span>--%>
			</div>
		</section>
	</ItemTemplate>
</asp:Repeater>
<center>
	<asp:TextBox runat="server" ID="CajaCantidadProducto" Width="32px"></asp:TextBox>
</center>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<asp:Label ID="lblError" runat="server" ForeColor="Lime" Text="Error" Visible="False"></asp:Label>
<br />
<br />
<br />
<br />
<br />
</asp:Content>