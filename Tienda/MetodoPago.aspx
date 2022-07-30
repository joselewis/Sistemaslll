<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="MetodoPago.aspx.cs" Inherits="Tienda.MetodoPago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h4>Método de pago</h4>
</br>
<asp:GridView ID="GridMetodoPago" 
    runat="server" class="table table-dark table-striped" 
    AutoGenerateColumns="False"
    OnRowCancelingEdit="GridTarjeta_RowCancelingEdit" 
    OnRowCommand="GridTarjeta_RowCommand"
    OnRowDeleting="GridTarjeta_RowDeleting" 
    OnRowEditing="GridTarjeta_RowEditing" 
    nRowUpdating="GridUsuario_RowUpdating" 
    Width="471px" 
    DataKeyNames="NUMERO_TARJETA" 
    OnSelectedIndexChanged="GridTarjeta_SelectedIndexChanged" 
    Height="126px" OnRowUpdating="GridTarjeta_RowUpdating">
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

        <asp:TemplateField HeaderText="Correo" Visible="False">
            <EditItemTemplate>
                <asp:TextBox ID="Txt_Correo_Usuario" runat="server" Text='<%# Eval("CORREO_ELECTRONICO") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_Correo_Telefono_Usuario" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Eval("CORREO_ELECTRONICO") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField>
            <EditItemTemplate>
                <asp:ImageButton runat="server" ID="ImageButton1" class="auto-style1" ImageUrl="ImgMantenimiento/guardar.png" CommandName="Update" Height="20px" ToolTip="Guardar" Width="20px" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:ImageButton runat="server" ID="BtnAgregarAdministrador" class="auto-style1" ImageUrl="ImgMantenimiento/nuevo.png" CommandName="AddNew" Height="20px" ToolTip="Nuevo" Width="20px" />
            </FooterTemplate>
            <ItemTemplate>
                <asp:ImageButton runat="server" ID="ImageButton4" class="auto-style1" ImageUrl="ImgMantenimiento/editar.png" CommandName="Edit" Height="20px" ToolTip="Editar" Width="20px"/>
            </ItemTemplate>
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
</asp:GridView>
</div>
<asp:Label ID="lblCamposNulos" runat="server" ForeColor="Lime" Text="Los campos  son requeridos ***" Visible="False"></asp:Label>
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
</div>
</br>
<center>
    <asp:Button runat="server" type="button" class="btn btn-dark" Text="Ingresar método de pago" ID="IngresarMetodoPago" OnClick="IngresarMetodoPago_Click"></asp:Button>
</center>

</asp:Content>
