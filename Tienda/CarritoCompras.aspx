<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="CarritoCompras.aspx.cs" Inherits="Tienda.CarritoCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Carrito/CarritoCss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Carrito de compras</h4>
    <br />
    <asp:GridView ID="GridCarritoCompras" 
    runat="server" class="table" 
    AutoGenerateColumns="False"
    OnRowCancelingEdit="GridCarrito_RowCancelingEdit" 
    OnRowCommand="GridCarrito_RowCommand"
    OnRowDeleting="GridCarrito_RowDeleting" 
    OnRowEditing="GridCarrito_RowEditing" 
    nRowUpdating="GridUsuario_RowUpdating" 
    Width="840px" 
    DataKeyNames="ID_CARRITO , CODIGO_PRODUCTO" 
    OnSelectedIndexChanged="GridCarrito_SelectedIndexChanged" 
    Height="126px" OnRowUpdating="GridCarrito_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
    <Columns >
        <asp:TemplateField HeaderText="Número compra">
            <ItemTemplate>
                <asp:Label ID="LabelId_Carrito" runat="server" Text='<%# Eval("ID_CARRITO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Correo">
            <ItemTemplate>
                <asp:Label ID="LabelCorreo_Usuario" runat="server" Text='<%# Eval("CORREO_ELECTRONICO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Código Producto" Visible="True">
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("CODIGO_PRODUCTO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <%--<asp:TemplateField HeaderText="Nombre Producto" Visible="True">
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("NOMBRE_PRODUCTO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>--%>

        <asp:TemplateField HeaderText="Cantidad" Visible="True">
            <ItemTemplate>
                <asp:Label ID="Label15" runat="server" Text='<%# Eval("CANTIDAD") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Estado" Visible="false">
            <EditItemTemplate>
                <asp:Label ID="LabelCarrito_Activo" runat="server" Text='<%# Eval("CARRITO_ACTIVO") %>'></asp:Label>
            </EditItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton runat="server"  ID="ImageButton5" class="auto-style1" ImageUrl="ImgMantenimiento/delete2.png" CommandName="Delete" Height="20px" ToolTip="Borrar" Width="20px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
    <br />
    <asp:Label ID="lblCamposPagoNulo" runat="server" ForeColor="Red" Visible="False"></asp:Label>
<br/>
<br/>
<h4>Ingresar un método de pago</h4>
<br />
<br />
<div class="row">
    <div class="col">
      <asp:TextBox runat="server" type="text" class="form-control" placeholder="Numéro tarjeta" ID="CajaNumeroTarjeta"></asp:TextBox>
    </div>
    <div class="col">
      <asp:TextBox runat="server" type="text" class="form-control" placeholder="Mes expira" ID="CajaMesTarjeta"></asp:TextBox>
    </div>
    <div class="col">
      <asp:TextBox runat="server" type="text" class="form-control" placeholder="Año expira" ID="CajaAnnoTarjeta"></asp:TextBox>
    </div>
    <asp:Label ID="Label1" runat="server" ForeColor="Lime" Visible="False"></asp:Label>
</div>
<br />
<center>
    <asp:Button runat="server" type="button" class="btn btn-dark" Text="Ingresar método de pago" ID="IngresarMetodoPago" OnClick="IngresarMetodoPago_Click"></asp:Button>
</center>
<br />
</asp:Content>