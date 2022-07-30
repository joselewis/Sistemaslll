<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" CodeBehind="MantenimientoProductos.aspx.cs" Inherits="Tienda.MantenimientoProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Mantenimiento de productos</h4>
    </br>
    <asp:GridView ID="GridProductos" 
        runat="server" class="table table-dark table-striped" 
        AutoGenerateColumns="False"
        OnRowCancelingEdit="GridProducto_RowCancelingEdit" 
        OnRowCommand="GridProducto_RowCommand"
        OnRowDeleting="GridProducto_RowDeleting" 
        OnRowEditing="GridProducto_RowEditing" 
        nRowUpdating="GridAdmin_RowUpdating" 
        Width="827px" 
        DataKeyNames="CODIGO_PRODUCTO" 
        OnSelectedIndexChanged="GridProducto_SelectedIndexChanged" 
        Height="126px" OnRowUpdating="GridProducto_RowUpdating">
        <Columns >
            <asp:TemplateField HeaderText="Id">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_IdProducto" runat="server" Text='<%# Eval("ID_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelIdProducto" runat="server" Text='<%# Eval("ID_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Nombre">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Nombre_Producto" runat="server" Text='<%# Eval("NOMBRE_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelNombre_Producto" runat="server" Text='<%# Eval("NOMBRE_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Código">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Codigo_Producto" runat="server" Text='<%# Eval("CODIGO_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Codigo_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("CODIGO_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Precio">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Precio_Producto" runat="server" Text='<%# Eval("PRECIO_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Precio_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("PRECIO_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Cantidad">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Cantidad_Producto" runat="server" Text='<%# Eval("CANTIDAD_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Cantidad_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("CANTIDAD_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Descripción">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Descripcion_Producto" runat="server" Text='<%# Eval("DESCRIPCION_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Descripcion_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("DESCRIPCION_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Tipo">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Tipo_Producto" runat="server" Text='<%# Eval("TIPO_PRODUCTO") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Tipo_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("TIPO_PRODUCTO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Imagen" Visible="false">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Imagen_Producto" runat="server" Text='<%# Eval("IMAGEN") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Imagen_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("IMAGEN") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Marca" Visible="True">
                <EditItemTemplate>
                    <asp:TextBox ID="Txt_Marca_Producto" runat="server" Text='<%# Eval("MARCA") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txt_footer_Marca_Producto" runat="server"></asp:TextBox>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("MARCA") %>'></asp:Label>
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
<br />
<asp:Label ID="lblCamposNulos" runat="server" ForeColor="Lime" Text="Los campos  son requeridos ***" Visible="False"></asp:Label>
</asp:Content>
