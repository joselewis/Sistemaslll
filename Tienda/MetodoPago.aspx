﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="MetodoPago.aspx.cs" Inherits="Tienda.MetodoPago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4>Método de pago</h4>
<br />
<asp:GridView ID="GridMetodoPago" 
    runat="server" class="table" 
    AutoGenerateColumns="False"
    OnRowCancelingEdit="GridTarjeta_RowCancelingEdit" 
    OnRowCommand="GridTarjeta_RowCommand"
    OnRowDeleting="GridTarjeta_RowDeleting" 
    OnRowEditing="GridTarjeta_RowEditing" 
    nRowUpdating="GridUsuario_RowUpdating" 
    Width="471px" 
    DataKeyNames="NUMERO_TARJETA" 
    OnSelectedIndexChanged="GridTarjeta_SelectedIndexChanged" 
    Height="126px" OnRowUpdating="GridTarjeta_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
    <Columns >
        <asp:TemplateField HeaderText="Número Tarjeta">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Numero_Tarjeta" runat="server" Text='<%# Eval("NUMERO_TARJETA") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_footer_Numero_Tarjeta" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelNumeroTarjeta" runat="server" Text='<%# Eval("NUMERO_TARJETA") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Mes">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Nombre_Tarjeta_Mes" runat="server" Text='<%# Eval("NUMERO_EXPIRA_1") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_footer_Tarjeta_Mes" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelNombre_Usuario" runat="server" Text='<%# Eval("NUMERO_EXPIRA_1") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="Año">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Tarjeta_Anno" runat="server" Text='<%# Eval("NUMERO_EXPIRA_2") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_footer_Tarjeta_Anno" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label18" runat="server" Text='<%# Eval("NUMERO_EXPIRA_2") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Correo" Visible="True">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Correo_Usuario" runat="server" Text='<%# Eval("CORREO_ELECTRONICO") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_Correo_Usuario" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("CORREO_ELECTRONICO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Estado" Visible="false">
            <EditItemTemplate>
                <asp:Label ID="LabelPagoActivo" runat="server" Text='<%# Eval("TARJETA_ACTICA") %>'></asp:Label>
            </EditItemTemplate>
        </asp:TemplateField>

        <%--<asp:TemplateField HeaderText="Nombre" Visible="True">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Nombre_Usuario" runat="server" Text='<%# Eval("NOMBRE_USUARIO") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_Nombre_Usuario" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("NOMBRE_USUARIO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>--%>


            
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:ImageButton runat="server" ID="ImageButton1" class="auto-style1" ImageUrl="ImgMantenimiento/guardar.png" CommandName="Update" Height="20px" ToolTip="Guardar" Width="20px" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:ImageButton runat="server" ID="BtnAgregarPago" class="auto-style1" ImageUrl="ImgMantenimiento/nuevo.png" CommandName="AddNew" Height="20px" ToolTip="Nuevo" Width="20px" />
            </FooterTemplate>
            <%--<ItemTemplate>
                <asp:ImageButton runat="server" ID="ImageButton4" class="auto-style1" ImageUrl="ImgMantenimiento/editar.png" CommandName="Edit" Height="20px" ToolTip="Editar" Width="20px"/>
            </ItemTemplate>--%>
        </asp:TemplateField>

        <asp:TemplateField>
            <EditItemTemplate>
                <asp:ImageButton runat="server" ID="ImageButton3" class="auto-style1" ImageUrl="ImgMantenimiento/cancel2.png" CommandName="Cancel" Height="20px" ToolTip="Cancelar" Width="20px"/>
            </EditItemTemplate>
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
<asp:Label ID="lblCamposPagoNulo" runat="server" ForeColor="Red" Visible="False"></asp:Label>
</asp:Content>